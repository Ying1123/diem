(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update eager)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-option :ee-mode central)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_203095 0)) ((($Memory_203095 (|domain#$Memory_203095| |T@[Int]Bool|) (|contents#$Memory_203095| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_212287 0)) ((($Memory_212287 (|domain#$Memory_212287| |T@[Int]Bool|) (|contents#$Memory_212287| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_212216 0)) ((($Memory_212216 (|domain#$Memory_212216| |T@[Int]Bool|) (|contents#$Memory_212216| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_211973 0)) ((($Memory_211973 (|domain#$Memory_211973| |T@[Int]Bool|) (|contents#$Memory_211973| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_211902 0)) ((($Memory_211902 (|domain#$Memory_211902| |T@[Int]Bool|) (|contents#$Memory_211902| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_211831 0)) ((($Memory_211831 (|domain#$Memory_211831| |T@[Int]Bool|) (|contents#$Memory_211831| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_223130 0)) ((($Memory_223130 (|domain#$Memory_223130| |T@[Int]Bool|) (|contents#$Memory_223130| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_211663 0)) ((($Memory_211663 (|domain#$Memory_211663| |T@[Int]Bool|) (|contents#$Memory_211663| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_215368 0)) ((($Memory_215368 (|domain#$Memory_215368| |T@[Int]Bool|) (|contents#$Memory_215368| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_223385 0)) ((($Memory_223385 (|domain#$Memory_223385| |T@[Int]Bool|) (|contents#$Memory_223385| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_223485 0)) ((($Memory_223485 (|domain#$Memory_223485| |T@[Int]Bool|) (|contents#$Memory_223485| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_222911 0)) ((($Memory_222911 (|domain#$Memory_222911| |T@[Int]Bool|) (|contents#$Memory_222911| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_222996 0)) ((($Memory_222996 (|domain#$Memory_222996| |T@[Int]Bool|) (|contents#$Memory_222996| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_290571 0)) ((($Memory_290571 (|domain#$Memory_290571| |T@[Int]Bool|) (|contents#$Memory_290571| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_290284 0)) ((($Memory_290284 (|domain#$Memory_290284| |T@[Int]Bool|) (|contents#$Memory_290284| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_211495 0)) ((($Memory_211495 (|domain#$Memory_211495| |T@[Int]Bool|) (|contents#$Memory_211495| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_211256 0)) ((($Memory_211256 (|domain#$Memory_211256| |T@[Int]Bool|) (|contents#$Memory_211256| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_212145 0)) ((($Memory_212145 (|domain#$Memory_212145| |T@[Int]Bool|) (|contents#$Memory_212145| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_277134 0)) ((($Memory_277134 (|domain#$Memory_277134| |T@[Int]Bool|) (|contents#$Memory_277134| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_277070 0)) ((($Memory_277070 (|domain#$Memory_277070| |T@[Int]Bool|) (|contents#$Memory_277070| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_277006 0)) ((($Memory_277006 (|domain#$Memory_277006| |T@[Int]Bool|) (|contents#$Memory_277006| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_277501 0)) ((($Memory_277501 (|domain#$Memory_277501| |T@[Int]Bool|) (|contents#$Memory_277501| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_277414 0)) ((($Memory_277414 (|domain#$Memory_277414| |T@[Int]Bool|) (|contents#$Memory_277414| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_304044 0)) ((($Memory_304044 (|domain#$Memory_304044| |T@[Int]Bool|) (|contents#$Memory_304044| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_282576 0)) ((($Memory_282576 (|domain#$Memory_282576| |T@[Int]Bool|) (|contents#$Memory_282576| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_283001 0)) ((($Memory_283001 (|domain#$Memory_283001| |T@[Int]Bool|) (|contents#$Memory_283001| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_215543 0)) ((($Memory_215543 (|domain#$Memory_215543| |T@[Int]Bool|) (|contents#$Memory_215543| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_282485 0)) ((($Memory_282485 (|domain#$Memory_282485| |T@[Int]Bool|) (|contents#$Memory_282485| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_211327 0)) ((($Memory_211327 (|domain#$Memory_211327| |T@[Int]Bool|) (|contents#$Memory_211327| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_282902 0)) ((($Memory_282902 (|domain#$Memory_282902| |T@[Int]Bool|) (|contents#$Memory_282902| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_215483 0)) ((($Memory_215483 (|domain#$Memory_215483| |T@[Int]Bool|) (|contents#$Memory_215483| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_282394 0)) ((($Memory_282394 (|domain#$Memory_282394| |T@[Int]Bool|) (|contents#$Memory_282394| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_211566 0)) ((($Memory_211566 (|domain#$Memory_211566| |T@[Int]Bool|) (|contents#$Memory_211566| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_282803 0)) ((($Memory_282803 (|domain#$Memory_282803| |T@[Int]Bool|) (|contents#$Memory_282803| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_276705 0)) ((($Memory_276705 (|domain#$Memory_276705| |T@[Int]Bool|) (|contents#$Memory_276705| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_211411 0)) ((($Memory_211411 (|domain#$Memory_211411| |T@[Int]Bool|) (|contents#$Memory_211411| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_211172 0)) ((($Memory_211172 (|domain#$Memory_211172| |T@[Int]Bool|) (|contents#$Memory_211172| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_272662 0)) ((($Memory_272662 (|domain#$Memory_272662| |T@[Int]Bool|) (|contents#$Memory_272662| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_272575 0)) ((($Memory_272575 (|domain#$Memory_272575| |T@[Int]Bool|) (|contents#$Memory_272575| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_272488 0)) ((($Memory_272488 (|domain#$Memory_272488| |T@[Int]Bool|) (|contents#$Memory_272488| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_272401 0)) ((($Memory_272401 (|domain#$Memory_272401| |T@[Int]Bool|) (|contents#$Memory_272401| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_272314 0)) ((($Memory_272314 (|domain#$Memory_272314| |T@[Int]Bool|) (|contents#$Memory_272314| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_272227 0)) ((($Memory_272227 (|domain#$Memory_272227| |T@[Int]Bool|) (|contents#$Memory_272227| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_211017 0)) ((($Memory_211017 (|domain#$Memory_211017| |T@[Int]Bool|) (|contents#$Memory_211017| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_271494 0)) ((($Memory_271494 (|domain#$Memory_271494| |T@[Int]Bool|) (|contents#$Memory_271494| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_210858 0)) ((($Memory_210858 (|domain#$Memory_210858| |T@[Int]Bool|) (|contents#$Memory_210858| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_210452 0)) ((($Memory_210452 (|domain#$Memory_210452| |T@[Int]Bool|) (|contents#$Memory_210452| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_212371 0)) ((($Memory_212371 (|domain#$Memory_212371| |T@[Int]Bool|) (|contents#$Memory_212371| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_271361 0)) ((($Memory_271361 (|domain#$Memory_271361| |T@[Int]Bool|) (|contents#$Memory_271361| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_211747 0)) ((($Memory_211747 (|domain#$Memory_211747| |T@[Int]Bool|) (|contents#$Memory_211747| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_211088 0)) ((($Memory_211088 (|domain#$Memory_211088| |T@[Int]Bool|) (|contents#$Memory_211088| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_210765 0)) ((($Memory_210765 (|domain#$Memory_210765| |T@[Int]Bool|) (|contents#$Memory_210765| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_309883 0)) ((($Memory_309883 (|domain#$Memory_309883| |T@[Int]Bool|) (|contents#$Memory_309883| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_222811 0)) ((($Memory_222811 (|domain#$Memory_222811| |T@[Int]Bool|) (|contents#$Memory_222811| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_210944 0)) ((($Memory_210944 (|domain#$Memory_210944| |T@[Int]Bool|) (|contents#$Memory_210944| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_215102 0)) ((($Memory_215102 (|domain#$Memory_215102| |T@[Int]Bool|) (|contents#$Memory_215102| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_215002 0)) ((($Memory_215002 (|domain#$Memory_215002| |T@[Int]Bool|) (|contents#$Memory_215002| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_210578 0)) ((($Memory_210578 (|domain#$Memory_210578| |T@[Int]Bool|) (|contents#$Memory_210578| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_209900 0)) ((($Memory_209900 (|domain#$Memory_209900| |T@[Int]Bool|) (|contents#$Memory_209900| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_172573 0)) (((Multiset_172573 (|v#Multiset_172573| |T@[$EventRep]Int|) (|l#Multiset_172573| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_172573| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_172573|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_407632 0)) ((($Mutation_407632 (|l#$Mutation_407632| T@$Location) (|p#$Mutation_407632| (Seq Int)) (|v#$Mutation_407632| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_407588 0)) ((($Mutation_407588 (|l#$Mutation_407588| T@$Location) (|p#$Mutation_407588| (Seq Int)) (|v#$Mutation_407588| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_295643 0)) ((($Mutation_295643 (|l#$Mutation_295643| T@$Location) (|p#$Mutation_295643| (Seq Int)) (|v#$Mutation_295643| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_72250 0)) ((($Mutation_72250 (|l#$Mutation_72250| T@$Location) (|p#$Mutation_72250| (Seq Int)) (|v#$Mutation_72250| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_288447 0)) ((($Mutation_288447 (|l#$Mutation_288447| T@$Location) (|p#$Mutation_288447| (Seq Int)) (|v#$Mutation_288447| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_275316 0)) ((($Mutation_275316 (|l#$Mutation_275316| T@$Location) (|p#$Mutation_275316| (Seq Int)) (|v#$Mutation_275316| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_210395 0)) ((($Mutation_210395 (|l#$Mutation_210395| T@$Location) (|p#$Mutation_210395| (Seq Int)) (|v#$Mutation_210395| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_203726 0)) ((($Mutation_203726 (|l#$Mutation_203726| T@$Location) (|p#$Mutation_203726| (Seq Int)) (|v#$Mutation_203726| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_16758 0)) ((($Mutation_16758 (|l#$Mutation_16758| T@$Location) (|p#$Mutation_16758| (Seq Int)) (|v#$Mutation_16758| Int) ) ) ))
(declare-datatypes ((T@$Mutation_199102 0)) ((($Mutation_199102 (|l#$Mutation_199102| T@$Location) (|p#$Mutation_199102| (Seq Int)) (|v#$Mutation_199102| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_198356 0)) ((($Mutation_198356 (|l#$Mutation_198356| T@$Location) (|p#$Mutation_198356| (Seq Int)) (|v#$Mutation_198356| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_196952 0)) ((($Mutation_196952 (|l#$Mutation_196952| T@$Location) (|p#$Mutation_196952| (Seq Int)) (|v#$Mutation_196952| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_196206 0)) ((($Mutation_196206 (|l#$Mutation_196206| T@$Location) (|p#$Mutation_196206| (Seq Int)) (|v#$Mutation_196206| (Seq T@$1_XUS_XUS)) ) ) ))
(declare-datatypes ((T@$Mutation_194802 0)) ((($Mutation_194802 (|l#$Mutation_194802| T@$Location) (|p#$Mutation_194802| (Seq Int)) (|v#$Mutation_194802| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_194056 0)) ((($Mutation_194056 (|l#$Mutation_194056| T@$Location) (|p#$Mutation_194056| (Seq Int)) (|v#$Mutation_194056| (Seq T@$1_XDX_XDX)) ) ) ))
(declare-datatypes ((T@$Mutation_192652 0)) ((($Mutation_192652 (|l#$Mutation_192652| T@$Location) (|p#$Mutation_192652| (Seq Int)) (|v#$Mutation_192652| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_191906 0)) ((($Mutation_191906 (|l#$Mutation_191906| T@$Location) (|p#$Mutation_191906| (Seq Int)) (|v#$Mutation_191906| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_190502 0)) ((($Mutation_190502 (|l#$Mutation_190502| T@$Location) (|p#$Mutation_190502| (Seq Int)) (|v#$Mutation_190502| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_189756 0)) ((($Mutation_189756 (|l#$Mutation_189756| T@$Location) (|p#$Mutation_189756| (Seq Int)) (|v#$Mutation_189756| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_188352 0)) ((($Mutation_188352 (|l#$Mutation_188352| T@$Location) (|p#$Mutation_188352| (Seq Int)) (|v#$Mutation_188352| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_187606 0)) ((($Mutation_187606 (|l#$Mutation_187606| T@$Location) (|p#$Mutation_187606| (Seq Int)) (|v#$Mutation_187606| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_186202 0)) ((($Mutation_186202 (|l#$Mutation_186202| T@$Location) (|p#$Mutation_186202| (Seq Int)) (|v#$Mutation_186202| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_185456 0)) ((($Mutation_185456 (|l#$Mutation_185456| T@$Location) (|p#$Mutation_185456| (Seq Int)) (|v#$Mutation_185456| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_184052 0)) ((($Mutation_184052 (|l#$Mutation_184052| T@$Location) (|p#$Mutation_184052| (Seq Int)) (|v#$Mutation_184052| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_183306 0)) ((($Mutation_183306 (|l#$Mutation_183306| T@$Location) (|p#$Mutation_183306| (Seq Int)) (|v#$Mutation_183306| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_181902 0)) ((($Mutation_181902 (|l#$Mutation_181902| T@$Location) (|p#$Mutation_181902| (Seq Int)) (|v#$Mutation_181902| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_181156 0)) ((($Mutation_181156 (|l#$Mutation_181156| T@$Location) (|p#$Mutation_181156| (Seq Int)) (|v#$Mutation_181156| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_179752 0)) ((($Mutation_179752 (|l#$Mutation_179752| T@$Location) (|p#$Mutation_179752| (Seq Int)) (|v#$Mutation_179752| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_179006 0)) ((($Mutation_179006 (|l#$Mutation_179006| T@$Location) (|p#$Mutation_179006| (Seq Int)) (|v#$Mutation_179006| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_177602 0)) ((($Mutation_177602 (|l#$Mutation_177602| T@$Location) (|p#$Mutation_177602| (Seq Int)) (|v#$Mutation_177602| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_176856 0)) ((($Mutation_176856 (|l#$Mutation_176856| T@$Location) (|p#$Mutation_176856| (Seq Int)) (|v#$Mutation_176856| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_175414 0)) ((($Mutation_175414 (|l#$Mutation_175414| T@$Location) (|p#$Mutation_175414| (Seq Int)) (|v#$Mutation_175414| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_174668 0)) ((($Mutation_174668 (|l#$Mutation_174668| T@$Location) (|p#$Mutation_174668| (Seq Int)) (|v#$Mutation_174668| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_172573_| (|T@[$1_Event_EventHandle]Multiset_172573| T@$1_Event_EventHandle) T@Multiset_172573)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (T@$1_DiemConsensusConfig_DiemConsensusConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
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
(declare-fun ReverseVec_16611 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_157216 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_155837 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_156034 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_156231 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_157807 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_156822 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_156625 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_156428 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_157019 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_155640 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun ReverseVec_157413 ((Seq T@$1_XDX_XDX)) (Seq T@$1_XDX_XDX))
(declare-fun ReverseVec_157610 ((Seq T@$1_XUS_XUS)) (Seq T@$1_XUS_XUS))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_172573| |T@[$1_Event_EventHandle]Multiset_172573|) |T@[$1_Event_EventHandle]Multiset_172573|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Rolesbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Rolesbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Rolesbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Rolesbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Rolesbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Rolesbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Rolesbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Rolesbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |Rolesbpl.595:13|
 :skolemid |15|
))))
 :qid |Rolesbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |Rolesbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |Rolesbpl.608:17|
 :skolemid |18|
)))))
 :qid |Rolesbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |Rolesbpl.775:13|
 :skolemid |20|
))))
 :qid |Rolesbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |Rolesbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |Rolesbpl.788:17|
 :skolemid |23|
)))))
 :qid |Rolesbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |Rolesbpl.955:13|
 :skolemid |25|
))))
 :qid |Rolesbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |Rolesbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |Rolesbpl.968:17|
 :skolemid |28|
)))))
 :qid |Rolesbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |Rolesbpl.1135:13|
 :skolemid |30|
))))
 :qid |Rolesbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |Rolesbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |Rolesbpl.1148:17|
 :skolemid |33|
)))))
 :qid |Rolesbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |Rolesbpl.1315:13|
 :skolemid |35|
))))
 :qid |Rolesbpl.1313:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |Rolesbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |Rolesbpl.1328:17|
 :skolemid |38|
)))))
 :qid |Rolesbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |Rolesbpl.1495:13|
 :skolemid |40|
))))
 :qid |Rolesbpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |Rolesbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |Rolesbpl.1508:17|
 :skolemid |43|
)))))
 :qid |Rolesbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |Rolesbpl.1675:13|
 :skolemid |45|
))))
 :qid |Rolesbpl.1673:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |Rolesbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |Rolesbpl.1688:17|
 :skolemid |48|
)))))
 :qid |Rolesbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |Rolesbpl.1855:13|
 :skolemid |50|
))))
 :qid |Rolesbpl.1853:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |Rolesbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |Rolesbpl.1868:17|
 :skolemid |53|
)))))
 :qid |Rolesbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |Rolesbpl.2035:13|
 :skolemid |55|
))))
 :qid |Rolesbpl.2033:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |Rolesbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |Rolesbpl.2048:17|
 :skolemid |58|
)))))
 :qid |Rolesbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq T@$1_XDX_XDX)) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'$1_XDX_XDX'| (seq.nth v@@22 i@@27)))
 :qid |Rolesbpl.2215:13|
 :skolemid |60|
))))
 :qid |Rolesbpl.2213:36|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_XDX_XDX)) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@28 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |Rolesbpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |Rolesbpl.2228:17|
 :skolemid |63|
)))))
 :qid |Rolesbpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq T@$1_XUS_XUS)) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'$1_XUS_XUS'| (seq.nth v@@24 i@@30)))
 :qid |Rolesbpl.2395:13|
 :skolemid |65|
))))
 :qid |Rolesbpl.2393:36|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_XUS_XUS)) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@31 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |Rolesbpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |Rolesbpl.2408:17|
 :skolemid |68|
)))))
 :qid |Rolesbpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'vec'u8''| (seq.nth v@@26 i@@33)))
 :qid |Rolesbpl.2575:13|
 :skolemid |70|
))))
 :qid |Rolesbpl.2573:33|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 (Seq (Seq Int))) (e@@10 (Seq Int)) ) (! (let ((i@@34 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |Rolesbpl.2580:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |Rolesbpl.2588:17|
 :skolemid |73|
)))))
 :qid |Rolesbpl.2584:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v@@28 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len v@@28))) (|$IsValid'address'| (seq.nth v@@28 i@@36)))
 :qid |Rolesbpl.2755:13|
 :skolemid |75|
))))
 :qid |Rolesbpl.2753:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 (Seq Int)) (e@@11 Int) ) (! (let ((i@@37 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len v@@29)))) (= (seq.nth v@@29 i@@38) e@@11))
 :qid |Rolesbpl.2760:13|
 :skolemid |77|
))) (= i@@37 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len v@@29)))) (= (seq.nth v@@29 i@@37) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@37)) (not (= (seq.nth v@@29 j@@11) e@@11)))
 :qid |Rolesbpl.2768:17|
 :skolemid |78|
)))))
 :qid |Rolesbpl.2764:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v@@30 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (seq.len v@@30)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len v@@30))) (|$IsValid'u8'| (seq.nth v@@30 i@@39)))
 :qid |Rolesbpl.2935:13|
 :skolemid |80|
))))
 :qid |Rolesbpl.2933:28|
 :skolemid |81|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 (Seq Int)) (e@@12 Int) ) (! (let ((i@@40 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len v@@31)))) (= (seq.nth v@@31 i@@41) e@@12))
 :qid |Rolesbpl.2940:13|
 :skolemid |82|
))) (= i@@40 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len v@@31)))) (= (seq.nth v@@31 i@@40) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@40)) (not (= (seq.nth v@@31 j@@12) e@@12)))
 :qid |Rolesbpl.2948:17|
 :skolemid |83|
)))))
 :qid |Rolesbpl.2944:15|
 :skolemid |84|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |Rolesbpl.3121:15|
 :skolemid |85|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |Rolesbpl.3137:15|
 :skolemid |86|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Rolesbpl.3208:15|
 :skolemid |87|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Rolesbpl.3211:15|
 :skolemid |88|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_172573| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| stream) v@@32) 0)
 :qid |Rolesbpl.134:13|
 :skolemid |2|
))))
 :qid |Rolesbpl.3272:13|
 :skolemid |89|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |Rolesbpl.3313:80|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |Rolesbpl.3319:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |Rolesbpl.3369:82|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |Rolesbpl.3375:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |Rolesbpl.3425:80|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |Rolesbpl.3431:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |Rolesbpl.3481:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |Rolesbpl.3487:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |Rolesbpl.3537:76|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |Rolesbpl.3543:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |Rolesbpl.3593:78|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |Rolesbpl.3599:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |Rolesbpl.3649:74|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |Rolesbpl.3655:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |Rolesbpl.3705:69|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |Rolesbpl.3711:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |Rolesbpl.3761:70|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |Rolesbpl.3767:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |Rolesbpl.3817:60|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |Rolesbpl.3823:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |Rolesbpl.3873:66|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |Rolesbpl.3879:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |Rolesbpl.3929:60|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |Rolesbpl.3935:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |Rolesbpl.3985:63|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |Rolesbpl.3991:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |Rolesbpl.4041:79|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |Rolesbpl.4047:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |Rolesbpl.4097:82|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |Rolesbpl.4103:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |Rolesbpl.4153:88|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |Rolesbpl.4159:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |Rolesbpl.4209:72|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |Rolesbpl.4215:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |Rolesbpl.4294:61|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |Rolesbpl.5114:36|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |Rolesbpl.14163:71|
 :skolemid |813|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |Rolesbpl.14533:46|
 :skolemid |814|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |Rolesbpl.14546:64|
 :skolemid |815|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |Rolesbpl.14559:75|
 :skolemid |816|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |Rolesbpl.14572:72|
 :skolemid |817|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |Rolesbpl.14606:55|
 :skolemid |818|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |Rolesbpl.14628:46|
 :skolemid |819|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |Rolesbpl.14909:49|
 :skolemid |820|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |Rolesbpl.14994:71|
 :skolemid |821|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |Rolesbpl.15008:91|
 :skolemid |822|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |Rolesbpl.15022:113|
 :skolemid |823|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |Rolesbpl.15036:89|
 :skolemid |824|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |Rolesbpl.15050:75|
 :skolemid |825|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |Rolesbpl.15064:73|
 :skolemid |826|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |Rolesbpl.15084:48|
 :skolemid |827|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |Rolesbpl.15100:57|
 :skolemid |828|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |Rolesbpl.15114:83|
 :skolemid |829|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |Rolesbpl.15128:103|
 :skolemid |830|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |Rolesbpl.15142:125|
 :skolemid |831|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |Rolesbpl.15156:101|
 :skolemid |832|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |Rolesbpl.15170:87|
 :skolemid |833|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |Rolesbpl.15184:85|
 :skolemid |834|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |Rolesbpl.15198:48|
 :skolemid |835|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |Rolesbpl.15219:45|
 :skolemid |836|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |Rolesbpl.15233:51|
 :skolemid |837|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |Rolesbpl.15256:48|
 :skolemid |838|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |Rolesbpl.15548:49|
 :skolemid |839|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |Rolesbpl.15561:65|
 :skolemid |840|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |Rolesbpl.16103:45|
 :skolemid |841|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |Rolesbpl.16116:45|
 :skolemid |842|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |Rolesbpl.16129:37|
 :skolemid |843|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |Rolesbpl.16142:55|
 :skolemid |844|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |Rolesbpl.16156:55|
 :skolemid |845|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@34))))
 :qid |Rolesbpl.16176:38|
 :skolemid |846|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@35))))
 :qid |Rolesbpl.16197:44|
 :skolemid |847|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))))
 :qid |Rolesbpl.16248:53|
 :skolemid |848|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))))
 :qid |Rolesbpl.16310:53|
 :skolemid |849|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@38))))
 :qid |Rolesbpl.16372:45|
 :skolemid |850|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39) true)
 :qid |Rolesbpl.16398:55|
 :skolemid |851|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40) true)
 :qid |Rolesbpl.16412:55|
 :skolemid |852|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@41) true)
 :qid |Rolesbpl.16426:47|
 :skolemid |853|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |Rolesbpl.16443:38|
 :skolemid |854|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |Rolesbpl.16457:48|
 :skolemid |855|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |Rolesbpl.16471:48|
 :skolemid |856|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@45) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@45)))
 :qid |Rolesbpl.16485:40|
 :skolemid |857|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@46)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@46)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@46))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@46))))
 :qid |Rolesbpl.16505:41|
 :skolemid |858|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@47)))
 :qid |Rolesbpl.16520:53|
 :skolemid |859|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@48)))
 :qid |Rolesbpl.16534:53|
 :skolemid |860|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@49)))
 :qid |Rolesbpl.16548:45|
 :skolemid |861|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50))))
 :qid |Rolesbpl.16565:60|
 :skolemid |862|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51))))
 :qid |Rolesbpl.16582:60|
 :skolemid |863|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@52))))
 :qid |Rolesbpl.16599:52|
 :skolemid |864|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53))))
 :qid |Rolesbpl.16616:57|
 :skolemid |865|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54) true)
 :qid |Rolesbpl.18789:68|
 :skolemid |866|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))))
 :qid |Rolesbpl.18811:66|
 :skolemid |867|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))))
 :qid |Rolesbpl.18837:66|
 :skolemid |868|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))))
 :qid |Rolesbpl.18866:56|
 :skolemid |869|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))))
 :qid |Rolesbpl.18896:56|
 :skolemid |870|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58))
)))
(assert (forall ((s@@59 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@59) true)
 :qid |Rolesbpl.19330:31|
 :skolemid |871|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@59))
)))
(assert (forall ((s@@60 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@60) true)
 :qid |Rolesbpl.19660:31|
 :skolemid |872|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@60))
)))
(assert (forall ((s@@61 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@61)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@61)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@61))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@61))))
 :qid |Rolesbpl.19679:35|
 :skolemid |873|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@62)))
 :qid |Rolesbpl.20093:45|
 :skolemid |874|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@63))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@63))))
 :qid |Rolesbpl.20112:50|
 :skolemid |875|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@64)))
 :qid |Rolesbpl.20127:52|
 :skolemid |876|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@65) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@65)))
 :qid |Rolesbpl.20141:46|
 :skolemid |877|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@66) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@66)))
 :qid |Rolesbpl.20523:38|
 :skolemid |878|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@67) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@67)))
 :qid |Rolesbpl.20537:39|
 :skolemid |879|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@67))
)))
(assert (forall ((s@@68 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@68)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@68)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@68))))
 :qid |Rolesbpl.21224:65|
 :skolemid |880|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@69)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@69))))
 :qid |Rolesbpl.21597:60|
 :skolemid |881|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70))))
 :qid |Rolesbpl.21614:66|
 :skolemid |882|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@71)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@71))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@71))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@71))))
 :qid |Rolesbpl.21643:50|
 :skolemid |883|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@72) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@72)))
 :qid |Rolesbpl.21662:45|
 :skolemid |884|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@73)) true))
 :qid |Rolesbpl.22235:87|
 :skolemid |885|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@74)))
 :qid |Rolesbpl.22436:47|
 :skolemid |886|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@75)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@75))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@75))))
 :qid |Rolesbpl.22456:58|
 :skolemid |887|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@76) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@76)))
 :qid |Rolesbpl.22471:39|
 :skolemid |888|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@77))))
 :qid |Rolesbpl.22493:58|
 :skolemid |889|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@78)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@78))))
 :qid |Rolesbpl.22510:58|
 :skolemid |890|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@79) true)
 :qid |Rolesbpl.22525:51|
 :skolemid |891|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@80))))
 :qid |Rolesbpl.22542:60|
 :skolemid |892|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@81)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@81)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@81))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@81))))
 :qid |Rolesbpl.22828:47|
 :skolemid |893|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@82)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@82)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@82))))
 :qid |Rolesbpl.22850:63|
 :skolemid |894|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@83) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@83)))
 :qid |Rolesbpl.22865:57|
 :skolemid |895|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@84) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@84)))
 :qid |Rolesbpl.22878:55|
 :skolemid |896|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@85) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@85)))
 :qid |Rolesbpl.22892:55|
 :skolemid |897|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@86) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@86)))
 :qid |Rolesbpl.22906:47|
 :skolemid |898|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@87)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@87))))
 :qid |Rolesbpl.22923:54|
 :skolemid |899|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@88)))
 :qid |Rolesbpl.22937:55|
 :skolemid |900|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@89)))
 :qid |Rolesbpl.22951:57|
 :skolemid |901|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@90)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@90))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@90))))
 :qid |Rolesbpl.22973:56|
 :skolemid |902|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@91)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@91))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@91))))
 :qid |Rolesbpl.22998:52|
 :skolemid |903|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@92)))
 :qid |Rolesbpl.23014:54|
 :skolemid |904|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@92))
)))
(assert (forall ((s@@93 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@93) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@93)))
 :qid |Rolesbpl.40038:55|
 :skolemid |1852|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@94)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@94)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@94))))
 :qid |Rolesbpl.40060:47|
 :skolemid |1853|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@95)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@95)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@95))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@95))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@95))))
 :qid |Rolesbpl.40084:47|
 :skolemid |1854|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@96) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@96)))
 :qid |Rolesbpl.40316:63|
 :skolemid |1855|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@97)))
 :qid |Rolesbpl.40652:49|
 :skolemid |1856|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@98)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@98))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@98))))
 :qid |Rolesbpl.40695:49|
 :skolemid |1857|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@99)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@99))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@99))))
 :qid |Rolesbpl.40724:48|
 :skolemid |1858|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@100)))
 :qid |Rolesbpl.41008:47|
 :skolemid |1859|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@100))
)))
(assert (forall ((v@@33 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_16611 v@@33)))
 (and (= (seq.len r@@0) (seq.len v@@33)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@0))) (= (seq.nth r@@0 i@@42) (seq.nth v@@33 (- (- (seq.len v@@33) i@@42) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@42))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_16611 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_157216 v@@34)))
 (and (= (seq.len r@@1) (seq.len v@@34)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@1))) (= (seq.nth r@@1 i@@43) (seq.nth v@@34 (- (- (seq.len v@@34) i@@43) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@43))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_157216 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_155837 v@@35)))
 (and (= (seq.len r@@2) (seq.len v@@35)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@2))) (= (seq.nth r@@2 i@@44) (seq.nth v@@35 (- (- (seq.len v@@35) i@@44) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@44))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_155837 v@@35))
)))
(assert (forall ((v@@36 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_156034 v@@36)))
 (and (= (seq.len r@@3) (seq.len v@@36)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@3))) (= (seq.nth r@@3 i@@45) (seq.nth v@@36 (- (- (seq.len v@@36) i@@45) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@45))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_156034 v@@36))
)))
(assert (forall ((v@@37 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_156231 v@@37)))
 (and (= (seq.len r@@4) (seq.len v@@37)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@4))) (= (seq.nth r@@4 i@@46) (seq.nth v@@37 (- (- (seq.len v@@37) i@@46) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@46))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_156231 v@@37))
)))
(assert (forall ((v@@38 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_157807 v@@38)))
 (and (= (seq.len r@@5) (seq.len v@@38)) (forall ((i@@47 Int) ) (!  (=> (and (>= i@@47 0) (< i@@47 (seq.len r@@5))) (= (seq.nth r@@5 i@@47) (seq.nth v@@38 (- (- (seq.len v@@38) i@@47) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@47))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_157807 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_156822 v@@39)))
 (and (= (seq.len r@@6) (seq.len v@@39)) (forall ((i@@48 Int) ) (!  (=> (and (>= i@@48 0) (< i@@48 (seq.len r@@6))) (= (seq.nth r@@6 i@@48) (seq.nth v@@39 (- (- (seq.len v@@39) i@@48) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@48))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_156822 v@@39))
)))
(assert (forall ((v@@40 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_156625 v@@40)))
 (and (= (seq.len r@@7) (seq.len v@@40)) (forall ((i@@49 Int) ) (!  (=> (and (>= i@@49 0) (< i@@49 (seq.len r@@7))) (= (seq.nth r@@7 i@@49) (seq.nth v@@40 (- (- (seq.len v@@40) i@@49) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@49))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_156625 v@@40))
)))
(assert (forall ((v@@41 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_156428 v@@41)))
 (and (= (seq.len r@@8) (seq.len v@@41)) (forall ((i@@50 Int) ) (!  (=> (and (>= i@@50 0) (< i@@50 (seq.len r@@8))) (= (seq.nth r@@8 i@@50) (seq.nth v@@41 (- (- (seq.len v@@41) i@@50) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@50))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_156428 v@@41))
)))
(assert (forall ((v@@42 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@9 (ReverseVec_157019 v@@42)))
 (and (= (seq.len r@@9) (seq.len v@@42)) (forall ((i@@51 Int) ) (!  (=> (and (>= i@@51 0) (< i@@51 (seq.len r@@9))) (= (seq.nth r@@9 i@@51) (seq.nth v@@42 (- (- (seq.len v@@42) i@@51) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@51))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_157019 v@@42))
)))
(assert (forall ((v@@43 (Seq |T@#0|)) ) (! (let ((r@@10 (ReverseVec_155640 v@@43)))
 (and (= (seq.len r@@10) (seq.len v@@43)) (forall ((i@@52 Int) ) (!  (=> (and (>= i@@52 0) (< i@@52 (seq.len r@@10))) (= (seq.nth r@@10 i@@52) (seq.nth v@@43 (- (- (seq.len v@@43) i@@52) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@52))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_155640 v@@43))
)))
(assert (forall ((v@@44 (Seq T@$1_XDX_XDX)) ) (! (let ((r@@11 (ReverseVec_157413 v@@44)))
 (and (= (seq.len r@@11) (seq.len v@@44)) (forall ((i@@53 Int) ) (!  (=> (and (>= i@@53 0) (< i@@53 (seq.len r@@11))) (= (seq.nth r@@11 i@@53) (seq.nth v@@44 (- (- (seq.len v@@44) i@@53) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@53))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_157413 v@@44))
)))
(assert (forall ((v@@45 (Seq T@$1_XUS_XUS)) ) (! (let ((r@@12 (ReverseVec_157610 v@@45)))
 (and (= (seq.len r@@12) (seq.len v@@45)) (forall ((i@@54 Int) ) (!  (=> (and (>= i@@54 0) (< i@@54 (seq.len r@@12))) (= (seq.nth r@@12 i@@54) (seq.nth v@@45 (- (- (seq.len v@@45) i@@54) 1))))
 :qid |Rolesbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@54))
))))
 :qid |Rolesbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_157610 v@@45))
)))
(assert (forall ((|l#0| Bool) (i@@55 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@55) |l#0|)
 :qid |Rolesbpl.250:54|
 :skolemid |1950|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@55))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_172573|) (|l#1| |T@[$1_Event_EventHandle]Multiset_172573|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| |l#1| handle@@0))))
(Multiset_172573 (|lambda#3| (|v#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| |l#0@@0| handle@@0)) (|v#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |Rolesbpl.3282:13|
 :skolemid |1951|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@46) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@46) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@46)))
 :qid |Rolesbpl.129:29|
 :skolemid |1952|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@46))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_16758)
(declare-fun $t14@1 () T@$Mutation_210395)
(declare-fun $t24@1 () T@$Mutation_16758)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_210395)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_209900)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_209900)
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_210578)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_210765)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_210858)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_210944)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_211017)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_211088)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_211172)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_211256)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_211327)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_211411)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_211495)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_211566)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_211663)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_211747)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_211831)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_211902)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_211973)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_212145)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_212216)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_212287)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_212371)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_210452)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
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
(declare-fun $t14 () T@$Mutation_210395)
(declare-fun $t14@0 () T@$Mutation_210395)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_210395)
(declare-fun $t24 () T@$Mutation_16758)
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
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_215002)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_215102)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_215368)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_215483)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_215543)
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
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_222811)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_222911)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_222996)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_223130)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_223385)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_223485)
(declare-fun _$t0@@4 () T@$signer)
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
; Valid
(declare-fun $t15@0@@4 () Bool)
(declare-fun $t6@@4 () Int)
(declare-fun $t11@0@@5 () Int)
(declare-fun $t17@@1 () Int)
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $t13@0@@3 () Int)
(declare-fun $t12@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t12@@4 () T@$1_Roles_RoleId)
(declare-fun $t7@@4 () Int)
(declare-fun $t12@0@@2 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun $t8@0@@3 () Bool)
(declare-fun $t10@@4 () Int)
(declare-fun _$t0@@7 () T@$signer)
; Valid
(declare-fun $t15@0@@5 () Bool)
(declare-fun $t6@@5 () Int)
(declare-fun $t11@0@@6 () Int)
(declare-fun $t17@@2 () Int)
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $t13@0@@4 () Int)
(declare-fun $t12@1@@2 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun $t12@@5 () T@$1_Roles_RoleId)
(declare-fun $t7@@5 () Int)
(declare-fun $t12@0@@3 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun $t8@0@@4 () Bool)
(declare-fun $t10@@5 () Int)
(declare-fun _$t0@@8 () T@$signer)
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
; Valid
(declare-fun $abort_flag@0@@10 () Bool)
(declare-fun $t8@0@@5 () Int)
(declare-fun $t7@1 () T@$1_Roles_RoleId)
(declare-fun $t7@@6 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@10 () Int)
(declare-fun _$t0@@10 () Int)
(declare-fun $t7@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@10 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t5 () Int)
; Valid
(declare-fun _$t0@@11 () T@$signer)
(declare-fun $t2 () Int)
(declare-fun $t6@@6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_210578)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_210578)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_210578)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@0@@11 () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_210578)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun _$t0@@12 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0@@2 () Int)
(declare-fun $abort_code@1@@11 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_210578)
(declare-fun $t11@0@@7 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@11 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t9@@5 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5@@1 () Int)
; Valid
(declare-fun _$t0@@13 () T@$signer)
(declare-fun $t2@@0 () Int)
(declare-fun _$t1@@1 () T@$signer)
(declare-fun $t4@@0 () Int)
(declare-fun $t10@@6 () Bool)
(declare-fun $t7@@7 () Bool)
(declare-fun $t6@@7 () Int)
(declare-fun $t5@@2 () Bool)
(declare-fun $t3@@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_210578)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_210578)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_210578)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@6 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
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
; Valid
(declare-fun $t2@0@@0 () Bool)
(declare-fun $abort_flag@0@@16 () Bool)
(declare-fun $t8@0@@6 () Int)
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
; Valid
(declare-fun $t2@@1 () Int)
(declare-fun _$t1@@3 () T@$signer)
(declare-fun $t3@@1 () Int)
(declare-fun $t6@@9 () Int)
(declare-fun $t9@@7 () Bool)
(declare-fun $t5@@3 () Bool)
(declare-fun $t4@@2 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_210578)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_210578)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_210578)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@22 () T@$signer)
; Valid
(declare-fun $t2@@2 () Int)
(declare-fun _$t0@@23 () T@$signer)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun $t3@@2 () Int)
(declare-fun $t6@@10 () Int)
(declare-fun $t9@@8 () Bool)
(declare-fun $t5@@4 () Bool)
(declare-fun $t4@@3 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_210578)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_210578)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_210578)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@4 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
; Valid
(declare-fun $t2@@3 () Int)
(declare-fun _$t0@@24 () T@$signer)
(declare-fun _$t1@@5 () T@$signer)
(declare-fun $t3@@3 () Int)
(declare-fun $t6@@11 () Int)
(declare-fun $t9@@9 () Bool)
(declare-fun $t5@@5 () Bool)
(declare-fun $t4@@4 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_210578)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_210578)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_210578)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@5 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
; Valid
(declare-fun $t2@@4 () Int)
(declare-fun _$t0@@25 () T@$signer)
(declare-fun _$t1@@6 () T@$signer)
(declare-fun $t3@@4 () Int)
(declare-fun $t6@@12 () Int)
(declare-fun $t9@@10 () Bool)
(declare-fun $t5@@6 () Bool)
(declare-fun $t4@@5 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_210578)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_210578)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_210578)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@6 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
; Valid
(declare-fun $t2@@5 () Int)
(declare-fun _$t0@@26 () T@$signer)
(declare-fun _$t1@@7 () T@$signer)
(declare-fun $t3@@5 () Int)
(declare-fun $t6@@13 () Int)
(declare-fun $t9@@11 () Bool)
(declare-fun $t5@@7 () Bool)
(declare-fun $t4@@6 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_210578)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_210578)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_210578)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@7 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
; Valid
(declare-fun _$t1@@8 () Int)
(declare-fun $t5@@8 () Int)
(declare-fun $t6@@14 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $t7@@8 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_276705)
(declare-fun _$t3 () Bool)
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun $t9@0@@0 () Int)
(declare-fun $abort_flag@62 () Bool)
(declare-fun $abort_code@54 () Int)
(declare-fun $t22 () Bool)
(declare-fun $t18@@1 () Int)
(declare-fun $t9@@12 () Int)
(declare-fun $abort_flag@4@@0 () Bool)
(declare-fun $abort_code@5@@0 () Int)
(declare-fun $abort_flag@0@@20 () Bool)
(declare-fun $abort_code@1@@20 () Int)
(declare-fun $t11@@1 () Bool)
(declare-fun $t10@@7 () Int)
(declare-fun $t8@@8 () Bool)
(declare-fun $t29 () T@$1_Event_EventHandle)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_212145)
(declare-fun $t30 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_210578)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_222811)
(declare-fun $1_VASP_ParentVASP_$memory@2 () T@$Memory_223385)
(declare-fun _$t0@@27 () T@$signer)
(declare-fun $1_VASP_ChildVASP_$memory@3 () T@$Memory_223485)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@3| () T@$Memory_304044)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int) |T@$1_DiemAccount_Balance'#0'|)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| () T@$Memory_215483)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| () T@$Memory_215543)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int) |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_304044)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_172573_| (|T@[$1_Event_EventHandle]Multiset_172573| T@$1_Event_EventHandle T@Multiset_172573) |T@[$1_Event_EventHandle]Multiset_172573|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_172573|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_172573)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|Store__T@[$1_Event_EventHandle]Multiset_172573_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_172573|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_172573)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|Store__T@[$1_Event_EventHandle]Multiset_172573_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_172573_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| () T@$Memory_215543)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| () T@$Memory_215483)
(declare-fun $abort_flag@40 () Bool)
(declare-fun $abort_code@35 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| () T@$Memory_215483)
(declare-fun $abort_flag@59 () Bool)
(declare-fun $abort_code@51 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| () T@$Memory_215543)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| () T@$Memory_215483)
(declare-fun $abort_flag@22 () Bool)
(declare-fun $abort_code@20 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| () T@$Memory_215543)
(declare-fun $abort_code@53 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| () T@$Memory_215483)
(declare-fun $abort_flag@61 () Bool)
(declare-fun $abort_code@52 () Int)
(declare-fun $abort_flag@60 () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| () T@$Memory_215543)
(declare-fun $abort_flag@58 () Bool)
(declare-fun $abort_code@50 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| () T@$Memory_215543)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| () T@$Memory_215543)
(declare-fun inline$$1_DiemAccount_create_signer$0$signer@1 () T@$signer)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| () T@$Memory_215543)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
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
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| () Int)
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
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| () Int)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t12@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t10@1| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| () Int)
(declare-fun $abort_flag@39 () Bool)
(declare-fun $abort_code@34 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| () T@$Memory_215483)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| () T@$Memory_215483)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_215483)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
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
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| () Int)
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
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| () Int)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t7@1| () Bool)
(declare-fun $abort_flag@21 () Bool)
(declare-fun $abort_code@19 () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@1| () T@$Memory_304044)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@2| () T@$Memory_304044)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@0| () T@$Memory_304044)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int |T@$1_DiemAccount_Balance'#0'|) |T@[Int]$1_DiemAccount_Balance'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t23@1| () |T@$1_DiemAccount_Balance'#0'|)
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
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t18@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1 () Int)
(declare-fun $abort_flag@17 () Bool)
(declare-fun $abort_code@15 () Int)
(declare-fun $abort_flag@12@@0 () Bool)
(declare-fun $abort_code@11 () Int)
(declare-fun $abort_flag@8@@0 () Bool)
(declare-fun $abort_code@8@@0 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1 () Bool)
(declare-fun $abort_flag@18 () Bool)
(declare-fun $abort_code@16 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@16 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0@@0 () Bool)
(declare-fun $abort_flag@14 () Bool)
(declare-fun $abort_code@13 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1@@0 () Bool)
(declare-fun $abort_flag@15 () Bool)
(declare-fun $abort_code@14 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@12 () Int)
(declare-fun $abort_flag@13 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1@@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@11@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0@@0 () Bool)
(declare-fun $abort_flag@9@@0 () Bool)
(declare-fun $abort_code@9@@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1@@0 () Bool)
(declare-fun $abort_code@10@@0 () Int)
(declare-fun $abort_flag@10@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@7@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@7 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0@@0 () Bool)
(declare-fun $abort_flag@5@@0 () Bool)
(declare-fun $abort_code@6@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@7 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@7 () Bool)
(declare-fun $abort_flag@6@@0 () Bool)
(declare-fun $abort_code@7@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@7 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@7 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@7 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@7 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@7 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@7 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@7 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t11@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t3@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@0| () Int)
(declare-fun $t23@@2 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t24@@0 () T@$1_Event_EventHandle)
(declare-fun $t25@@0 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_211973)
(declare-fun $t19 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t26 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t27 () T@$1_Event_EventHandle)
(declare-fun $t28 () Int)
(declare-fun |$temp_0'bool'@3| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_212145)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_212145)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_211973)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_211973)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@0| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_203095)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_203095)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_203095)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@0| () T@$1_Event_EventHandleGenerator)
(declare-fun |$temp_0'bool'@0@@6| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_222811)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_222811)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t20@@0 () Int)
(declare-fun $t21 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun $1_VASP_ChildVASP_$memory@1 () T@$Memory_223485)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_223385)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 () Int)
(declare-fun $1_VASP_ChildVASP_$memory@2 () T@$Memory_223485)
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_223385)
(declare-fun $1_VASP_ChildVASP_$memory@0 () T@$Memory_223485)
(declare-fun |Store__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int T@$1_VASP_ChildVASP) |T@[Int]$1_VASP_ChildVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ChildVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t37@1 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@3@@7 () Int)
(declare-fun $abort_flag@2@@7 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t28@2 () T@$Mutation_16758)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t28@1 () T@$Mutation_16758)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@3 () T@$Mutation_295643)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@2 () T@$Mutation_295643)
(declare-fun |Store__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int T@$1_VASP_ParentVASP) |T@[Int]$1_VASP_ParentVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ParentVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t23@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@1@@7 () Bool)
(declare-fun $abort_code@2@@7 () Int)
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t29@1 () Int)
(declare-fun |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1| () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@0 () T@$Mutation_295643)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@1 () T@$Mutation_295643)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t19@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t17@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t18@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t16@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t15@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t14@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t9@0 () T@$Mutation_16758)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t28@0 () T@$Mutation_16758)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t11@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t12@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t13@0 () Int)
(declare-fun $t15@@1 () Int)
(declare-fun $t16@@0 () Int)
(declare-fun $t17@@3 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t6@0 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t9@0 () Bool)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t5@0 () Bool)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t4@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@6 () T@$Memory_210578)
(declare-fun $abort_code@0@@20 () Int)
(declare-fun |inline$$1_Roles_new_child_vasp_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@7 () T@$Memory_210578)
(declare-fun $1_Roles_RoleId_$memory@0@@7 () T@$Memory_210578)
(declare-fun |inline$$1_Roles_new_child_vasp_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t8@0 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t2@0 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t3@0 () Int)
(declare-fun $t13@@3 () Int)
(declare-fun $t14@@0 () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_277006)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_277070)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_277134)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_282394)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_282485)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_282576)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_309883)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_create_child_vasp_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 774719) (let ((L2_correct@@6  (and (=> (= (ControlFlow 0 490691) (- 0 787285)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) _$t1@@8) (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t5@@8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t5@@8)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) $t6@@14))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) $t6@@14)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t7@@8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t7@@8)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t1@@8 0)) (= _$t1@@8 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) _$t1@@8)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t2@@0)) 32)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) _$t1@@8) (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t5@@8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t5@@8)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) $t6@@14))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) $t6@@14)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t7@@8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t7@@8)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t1@@8 0)) (= _$t1@@8 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) _$t1@@8)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t2@@0)) 32))) (=> (= (ControlFlow 0 490691) (- 0 787467)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) _$t1@@8) (= 6 $t9@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t5@@8)) (= 5 $t9@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t5@@8)) 5)) (= 3 $t9@0@@0))) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) _$t1@@8)) (= 6 $t9@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) $t6@@14)) (= 7 $t9@0@@0))) (and (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) $t6@@14)) 1) 65536) (= 8 $t9@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t7@@8)) (= 5 $t9@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t7@@8)) 5)) (= 3 $t9@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t9@0@@0))) (and (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t9@0@@0))) (and (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t9@0@@0))) (and (= _$t1@@8 0) (= 7 $t9@0@@0))) (and (= _$t1@@8 1) (= 7 $t9@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) _$t1@@8) (= 6 $t9@0@@0))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t9@0@@0))) (and (not (= (+ 16 (seq.len _$t2@@0)) 32)) (= 7 $t9@0@@0))))))))
(let ((anon41_Then_correct  (=> (and (and $abort_flag@62 (= $abort_code@54 $abort_code@54)) (and (= $t9@0@@0 $abort_code@54) (= (ControlFlow 0 490127) 490691))) L2_correct@@6)))
(let ((anon36_Then_correct  (=> $t22 (=> (and (and (or (or (or (or (and (= $t18@@1 0) (= 7 $t9@@12)) (and (= $t18@@1 1) (= 7 $t9@@12))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) $t18@@1) (= 6 $t9@@12))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t9@@12))) (and (not (= (+ 16 (seq.len _$t2@@0)) 32)) (= 7 $t9@@12))) (= $t9@@12 $t9@@12)) (and (= $t9@0@@0 $t9@@12) (= (ControlFlow 0 490845) 490691))) L2_correct@@6))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@4@@0 (= $abort_code@5@@0 $abort_code@5@@0)) (and (= $t9@0@@0 $abort_code@5@@0) (= (ControlFlow 0 490859) 490691))) L2_correct@@6)))
(let ((anon34_Then_correct  (=> (and (and $abort_flag@4@@0 (= $abort_code@5@@0 $abort_code@5@@0)) (and (= $t9@0@@0 $abort_code@5@@0) (= (ControlFlow 0 490873) 490691))) L2_correct@@6)))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@0@@20 (= $abort_code@1@@20 $abort_code@1@@20)) (and (= $t9@0@@0 $abort_code@1@@20) (= (ControlFlow 0 490887) 490691))) L2_correct@@6)))
(let ((anon31_Then_correct  (=> $t11@@1 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t10@@7)) (= 5 $t9@@12)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t10@@7)) 5)) (= 3 $t9@@12))) (= $t9@@12 $t9@@12)) (and (= $t9@0@@0 $t9@@12) (= (ControlFlow 0 490953) 490691))) L2_correct@@6))))
(let ((anon30_Then_correct  (=> $t8@@8 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@@12)) (= $t9@@12 $t9@@12)) (and (= $t9@0@@0 $t9@@12) (= (ControlFlow 0 490979) 490691))) L2_correct@@6))))
(let ((anon41_Else_correct  (=> (not $abort_flag@62) (=> (and (= $t29 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= $t30 ($1_DiemAccount_CreateAccountEvent _$t1@@8 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) _$t1@@8))))) (and (=> (= (ControlFlow 0 490113) (- 0 786719)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) _$t1@@8))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) _$t1@@8)) (and (=> (= (ControlFlow 0 490113) (- 0 786728)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 490113) (- 0 786738)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t5@@8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t5@@8))) (and (=> (= (ControlFlow 0 490113) (- 0 786750)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t5@@8)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t5@@8)) 5))) (and (=> (= (ControlFlow 0 490113) (- 0 786768)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) _$t1@@8)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) _$t1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) _$t1@@8))) (and (=> (= (ControlFlow 0 490113) (- 0 786778)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) $t6@@14)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) $t6@@14))) (and (=> (= (ControlFlow 0 490113) (- 0 786790)) (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) $t6@@14)) 1) 65536))) (=> (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) $t6@@14)) 1) 65536)) (and (=> (= (ControlFlow 0 490113) (- 0 786808)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t7@@8)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t7@@8))) (and (=> (= (ControlFlow 0 490113) (- 0 786820)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t7@@8)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t7@@8)) 5))) (and (=> (= (ControlFlow 0 490113) (- 0 786838)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 490113) (- 0 786845)) (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 490113) (- 0 786863)) (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 490113) (- 0 786884)) (not (= _$t1@@8 0))) (=> (not (= _$t1@@8 0)) (and (=> (= (ControlFlow 0 490113) (- 0 786894)) (not (= _$t1@@8 1))) (=> (not (= _$t1@@8 1)) (and (=> (= (ControlFlow 0 490113) (- 0 786904)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) _$t1@@8))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) _$t1@@8)) (and (=> (= (ControlFlow 0 490113) (- 0 786913)) (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))))) (=> (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (and (=> (= (ControlFlow 0 490113) (- 0 786930)) (not (not (= (+ 16 (seq.len _$t2@@0)) 32)))) (=> (not (not (= (+ 16 (seq.len _$t2@@0)) 32))) (and (=> (= (ControlFlow 0 490113) (- 0 786948)) (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) _$t1@@8)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) _$t1@@8) (and (=> (= (ControlFlow 0 490113) (- 0 786955)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) _$t1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) _$t1@@8)) 6))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) _$t1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) _$t1@@8)) 6)) (and (=> (= (ControlFlow 0 490113) (- 0 786962)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory@2) (|$addr#$signer| _$t0@@27))) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@27))) 1))) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory@2) (|$addr#$signer| _$t0@@27))) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@27))) 1)) (and (=> (= (ControlFlow 0 490113) (- 0 786983)) (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory@3) _$t1@@8)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory@3) _$t1@@8) (and (=> (= (ControlFlow 0 490113) (- 0 786990)) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory@2) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_223485| $1_VASP_ChildVASP_$memory@3) _$t1@@8))) (|$addr#$signer| _$t0@@27))) (=> (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory@2) _$t1@@8) _$t1@@8 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_223485| $1_VASP_ChildVASP_$memory@3) _$t1@@8))) (|$addr#$signer| _$t0@@27)) (and (=> (= (ControlFlow 0 490113) (- 0 787003)) (|Select__T@[Int]Bool_| (|domain#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1@@8)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1@@8) (and (=> (= (ControlFlow 0 490113) (- 0 787010)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1@@8) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0)))) (=> (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1@@8) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0))) (and (=> (= (ControlFlow 0 490113) (- 0 787025)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@8))) (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@8))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@8))) (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@8)) (and (=> (= (ControlFlow 0 490113) (- 0 787043)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@8))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@8) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0))))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@8))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@8) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0)))) (and (=> (= (ControlFlow 0 490113) (- 0 787069)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@8))) (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@8))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@8))) (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@8)) (and (=> (= (ControlFlow 0 490113) (- 0 787087)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@8))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@8) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0))))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@8))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@8) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))) (and (=> (= (ControlFlow 0 490113) (- 0 787113)) (forall ((addr@@797 Int) ) (!  (=> (|$IsValid'address'| addr@@797) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@797) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) addr@@797)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@797)))))
 :qid |Rolesbpl.25387:15|
 :skolemid |964|
))) (=> (forall ((addr@@798 Int) ) (!  (=> (|$IsValid'address'| addr@@798) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@798) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) addr@@798)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@798)))))
 :qid |Rolesbpl.25387:15|
 :skolemid |964|
)) (and (=> (= (ControlFlow 0 490113) (- 0 787148)) (forall ((addr@@799 Int) ) (!  (=> (|$IsValid'address'| addr@@799) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) addr@@799) (>= (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory@3|) addr@@799))) (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) addr@@799))))))
 :qid |Rolesbpl.25392:15|
 :skolemid |965|
))) (=> (forall ((addr@@800 Int) ) (!  (=> (|$IsValid'address'| addr@@800) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) addr@@800) (>= (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory@3|) addr@@800))) (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) addr@@800))))))
 :qid |Rolesbpl.25392:15|
 :skolemid |965|
)) (and (=> (= (ControlFlow 0 490113) (- 0 787187)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@28 (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| $EmptyEventStore) $t29)))
(let ((stream_new (let ((len (|l#Multiset_172573| stream@@28)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| stream@@28) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30))))
(Multiset_172573 (|Store__T@[$EventRep]Int_| (|v#Multiset_172573| stream@@28) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| $EmptyEventStore) $t29 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@29 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| expected) handle@@29)) (|l#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| actual) handle@@29))) (forall ((v@@75 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| expected) handle@@29)) v@@75) (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| actual) handle@@29)) v@@75))
 :qid |Rolesbpl.139:13|
 :skolemid |3|
)))
 :qid |Rolesbpl.3288:13|
 :skolemid |90|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@29 (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| $EmptyEventStore) $t29)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_172573| stream@@29)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| stream@@29) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30))))
(Multiset_172573 (|Store__T@[$EventRep]Int_| (|v#Multiset_172573| stream@@29) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| $EmptyEventStore) $t29 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@30 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| expected@@0) handle@@30)) (|l#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| actual@@0) handle@@30))) (forall ((v@@76 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| expected@@0) handle@@30)) v@@76) (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| actual@@0) handle@@30)) v@@76))
 :qid |Rolesbpl.139:13|
 :skolemid |3|
)))
 :qid |Rolesbpl.3288:13|
 :skolemid |90|
))))) (=> (= (ControlFlow 0 490113) (- 0 787212)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@30 (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| $EmptyEventStore) $t29)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_172573| stream@@30)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| stream@@30) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30))))
(Multiset_172573 (|Store__T@[$EventRep]Int_| (|v#Multiset_172573| stream@@30) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| $EmptyEventStore) $t29 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@31 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| actual@@1) handle@@31)) (|l#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| expected@@1) handle@@31))) (forall ((v@@77 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| actual@@1) handle@@31)) v@@77) (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| expected@@1) handle@@31)) v@@77))
 :qid |Rolesbpl.139:13|
 :skolemid |3|
)))
 :qid |Rolesbpl.3288:13|
 :skolemid |90|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6|) (= $abort_code@54 |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6|) (= $abort_flag@62 true))) (and (=> (= (ControlFlow 0 485553) 490127) anon41_Then_correct) (=> (= (ControlFlow 0 485553) 490113) anon41_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|  (=> (and $abort_flag@40 (= $abort_code@35 $abort_code@35)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| $abort_code@35)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 489475) 485553))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|  (=> (and $abort_flag@59 (= $abort_code@51 $abort_code@51)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| $abort_code@51)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|) (= (ControlFlow 0 485547) 485553))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|  (=> (and $abort_flag@22 (= $abort_code@20 $abort_code@20)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| $abort_code@20)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 489489) 485553))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5|) (= $abort_code@54 $abort_code@53)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5|) (= $abort_flag@62 $abort_flag@61))) (and (=> (= (ControlFlow 0 481517) 490127) anon41_Then_correct) (=> (= (ControlFlow 0 481517) 490113) anon41_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|  (=> (= $abort_code@53 $abort_code@52) (=> (and (and (= $abort_flag@61 $abort_flag@60) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4|) (= (ControlFlow 0 481627) 481517))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|  (=> (not $abort_flag@59) (=> (and (and (= $abort_code@52 $abort_code@51) (= $abort_flag@60 $abort_flag@59)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 485533) 481627))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@58) (= $abort_code@51 $abort_code@50)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= $abort_flag@59 $abort_flag@58))) (and (=> (= (ControlFlow 0 485387) 485547) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 485387) 485533) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|  (=> (= $abort_code@51 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) (= $abort_flag@59 true)) (and (=> (= (ControlFlow 0 482468) 485547) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 482468) 485533) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> $abort_flag@58 (=> (and (and (= $abort_code@50 $abort_code@50) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@50)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 485401) 482468))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@50 $EXEC_FAILURE_CODE) (= $abort_flag@58 true)) (and (=> (= (ControlFlow 0 485453) 485401) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 485453) 485387) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 485451) 485453)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| ($Memory_215543 (|Store__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@50 $abort_code@49) (= $abort_flag@58 $abort_flag@57))) (and (=> (= (ControlFlow 0 485377) 485401) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 485377) 485387) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|  (=> (and (not $abort_flag@57) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t23@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 485355) 485451) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 485355) 485377) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|  (=> $abort_flag@57 (=> (and (and (= $abort_code@49 $abort_code@49) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@49)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 485467) 482468))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@57 $abort_flag@56)) (and (= $abort_code@49 $abort_code@48) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 485307) 485467) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 485307) 485355) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@57 true)) (and (= $abort_code@49 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 485337) 485467) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 485337) 485355) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 485279) 485337) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 485279) 485307) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|  (=> (and inline$$Not$4$dst@1 (= (ControlFlow 0 485343) 485279)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|  (=> (not inline$$Not$4$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 485126) 482468))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t21@0|) (= inline$$Not$4$dst@1 inline$$Not$4$dst@1))) (and (=> (= (ControlFlow 0 485110) 485343) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 485110) 485126) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|))))))
(let ((inline$$Not$4$anon0_correct  (=> (and (= inline$$Not$4$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1|)) (= (ControlFlow 0 485070) 485110)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$1$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|)) (= (ControlFlow 0 485076) 485070)) inline$$Not$4$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$1$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 485030) 482468))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|  (=> (and (not $abort_flag@56) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@1))) (and (=> (= (ControlFlow 0 485014) 485076) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 485014) 485030) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|  (=> $abort_flag@56 (=> (and (and (= $abort_code@48 $abort_code@48) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@48)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 485481) 482468))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$1$L9_correct  (=> (= $abort_flag@56 true) (=> (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@0) (= $abort_code@48 inline$$1_Roles_can_hold_balance$1$$t4@1)) (and (=> (= (ControlFlow 0 484904) 485481) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 484904) 485014) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Then_correct  (=> (and (and $abort_flag@54 (= $abort_code@46 $abort_code@46)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@46) (= (ControlFlow 0 484898) 484904))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Then_correct  (=> (and (and $abort_flag@49 (= $abort_code@42 $abort_code@42)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@42) (= (ControlFlow 0 484936) 484904))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Then_correct  (=> (and (and $abort_flag@45 (= $abort_code@39 $abort_code@39)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@39) (= (ControlFlow 0 484968) 484904))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_flag@56 $abort_flag@55)) (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_code@48 $abort_code@47))) (and (=> (= (ControlFlow 0 484884) 485481) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 484884) 485014) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Else_correct  (=> (and (not $abort_flag@54) (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1) (= $abort_code@47 $abort_code@46)) (and (= $abort_flag@55 $abort_flag@54) (= (ControlFlow 0 484872) 484884))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@53) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1) (= $abort_flag@54 $abort_flag@53))) (and (=> (= (ControlFlow 0 484830) 484898) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 484830) 484872) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct  (=> (and (and $abort_flag@53 (= $abort_code@46 $abort_code@46)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@0) (= $abort_flag@54 true))) (and (=> (= (ControlFlow 0 484848) 484898) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 484848) 484872) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Then_correct  (=> $abort_flag@51 (=> (and (and (= $abort_code@44 $abort_code@44) (= $abort_flag@53 true)) (and (= $abort_code@46 $abort_code@44) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@0))) (and (=> (= (ControlFlow 0 484754) 484848) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 484754) 484830) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t2@1) (= $abort_flag@53 $abort_flag@52)) (and (= $abort_code@46 $abort_code@45) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$t2@1))) (and (=> (= (ControlFlow 0 484690) 484848) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 484690) 484830) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Else_correct  (=> (and (and (and (not $abort_flag@51) (= inline$$1_Roles_has_role$5$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$5$$t6@2))) (and (= inline$$1_Roles_has_role$5$$t9@1 (= inline$$1_Roles_has_role$5$$t8@1 2)) (= inline$$1_Roles_has_role$5$$t9@1 inline$$1_Roles_has_role$5$$t9@1))) (and (and (= $abort_flag@52 $abort_flag@51) (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t9@1)) (and (= $abort_code@45 $abort_code@44) (= (ControlFlow 0 484736) 484690)))) inline$$1_Roles_has_role$5$L3_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Then$1_correct  (=> (= $abort_code@44 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@51 true) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@0)) (and (=> (= (ControlFlow 0 484806) 484754) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 484806) 484736) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= (ControlFlow 0 484804) 484806)) inline$$1_Roles_has_role$5$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$5$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= $abort_code@44 $abort_code@43)) (and (= $abort_flag@51 $abort_flag@50) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@1))) (and (=> (= (ControlFlow 0 484708) 484754) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 484708) 484736) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon9_Then_correct  (=> inline$$1_Roles_has_role$5$$t5@1 (and (=> (= (ControlFlow 0 484694) 484804) inline$$1_Roles_has_role$5$anon10_Then_correct) (=> (= (ControlFlow 0 484694) 484708) inline$$1_Roles_has_role$5$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$5$$t5@1) (= false false)) (=> (and (and (= $abort_flag@52 $abort_flag@50) (= inline$$1_Roles_has_role$5$$t2@1 false)) (and (= $abort_code@45 $abort_code@43) (= (ControlFlow 0 484678) 484690))) inline$$1_Roles_has_role$5$L3_correct))))
(let ((inline$$1_Roles_has_role$5$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$5$$t4@0 inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)))) (and (=> (= (ControlFlow 0 484658) 484694) inline$$1_Roles_has_role$5$anon9_Then_correct) (=> (= (ControlFlow 0 484658) 484678) inline$$1_Roles_has_role$5$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 484812) 484658)) inline$$1_Roles_has_role$5$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$1$$t1@1) (= (ControlFlow 0 484854) 484812)) inline$$1_Roles_has_designated_dealer_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$1$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 true) (= $abort_code@47 $abort_code@43)) (and (= $abort_flag@55 $abort_flag@50) (= (ControlFlow 0 484922) 484884))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Else_correct  (=> (not $abort_flag@49) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1) (= inline$$1_Roles_can_hold_balance$1$$t1@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1)) (and (= $abort_flag@50 $abort_flag@49) (= $abort_code@43 $abort_code@42))) (and (=> (= (ControlFlow 0 484172) 484922) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 484172) 484854) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@48) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1) (= $abort_flag@49 $abort_flag@48))) (and (=> (= (ControlFlow 0 484130) 484936) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 484130) 484172) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@48 (= $abort_code@42 $abort_code@42)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@0) (= $abort_flag@49 true))) (and (=> (= (ControlFlow 0 484148) 484936) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 484148) 484172) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Then_correct  (=> $abort_flag@46 (=> (and (and (= $abort_code@40 $abort_code@40) (= $abort_code@42 $abort_code@40)) (and (= $abort_flag@48 true) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@0))) (and (=> (= (ControlFlow 0 484054) 484148) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 484054) 484130) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t2@1) (= $abort_code@42 $abort_code@41)) (and (= $abort_flag@48 $abort_flag@47) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$t2@1))) (and (=> (= (ControlFlow 0 483990) 484148) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 483990) 484130) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Else_correct  (=> (and (and (and (not $abort_flag@46) (= inline$$1_Roles_has_role$4$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$4$$t6@2))) (and (= inline$$1_Roles_has_role$4$$t9@1 (= inline$$1_Roles_has_role$4$$t8@1 6)) (= inline$$1_Roles_has_role$4$$t9@1 inline$$1_Roles_has_role$4$$t9@1))) (and (and (= $abort_code@41 $abort_code@40) (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t9@1)) (and (= $abort_flag@47 $abort_flag@46) (= (ControlFlow 0 484036) 483990)))) inline$$1_Roles_has_role$4$L3_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Then$1_correct  (=> (= $abort_flag@46 true) (=> (and (= $abort_code@40 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@0)) (and (=> (= (ControlFlow 0 484106) 484054) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 484106) 484036) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= (ControlFlow 0 484104) 484106)) inline$$1_Roles_has_role$4$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$4$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= $abort_flag@46 $abort_flag@45)) (and (= $abort_code@40 $abort_code@39) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@1))) (and (=> (= (ControlFlow 0 484008) 484054) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 484008) 484036) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon9_Then_correct  (=> inline$$1_Roles_has_role$4$$t5@1 (and (=> (= (ControlFlow 0 483994) 484104) inline$$1_Roles_has_role$4$anon10_Then_correct) (=> (= (ControlFlow 0 483994) 484008) inline$$1_Roles_has_role$4$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$4$$t5@1) (= false false)) (=> (and (and (= $abort_code@41 $abort_code@39) (= inline$$1_Roles_has_role$4$$t2@1 false)) (and (= $abort_flag@47 $abort_flag@45) (= (ControlFlow 0 483978) 483990))) inline$$1_Roles_has_role$4$L3_correct))))
(let ((inline$$1_Roles_has_role$4$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$4$$t4@0 inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)))) (and (=> (= (ControlFlow 0 483958) 483994) inline$$1_Roles_has_role$4$anon9_Then_correct) (=> (= (ControlFlow 0 483958) 483978) inline$$1_Roles_has_role$4$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 484112) 483958)) inline$$1_Roles_has_role$4$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$1$$ret0@1) (= (ControlFlow 0 484154) 484112)) inline$$1_Roles_has_child_VASP_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$1$$t1@1 true)) (and (= $abort_flag@50 $abort_flag@45) (= $abort_code@43 $abort_code@39))) (and (=> (= (ControlFlow 0 484954) 484922) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 484954) 484854) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Else_correct  (=> (not $abort_flag@45) (and (=> (= (ControlFlow 0 483474) 484954) inline$$1_Roles_can_hold_balance$1$anon14_Then_correct) (=> (= (ControlFlow 0 483474) 484154) inline$$1_Roles_can_hold_balance$1$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@44) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1) (= $abort_flag@45 $abort_flag@44))) (and (=> (= (ControlFlow 0 483442) 484968) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 483442) 483474) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@44 (= $abort_code@39 $abort_code@39)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_parent_VASP_role$1$$ret0@0) (= $abort_flag@45 true))) (and (=> (= (ControlFlow 0 483460) 484968) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 483460) 483474) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Then_correct  (=> $abort_flag@42 (=> (and (and (= $abort_code@37 $abort_code@37) (= $abort_code@39 $abort_code@37)) (and (= $abort_flag@44 true) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@0))) (and (=> (= (ControlFlow 0 483366) 483460) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 483366) 483442) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t2@1) (= $abort_code@39 $abort_code@38)) (and (= $abort_flag@44 $abort_flag@43) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$t2@1))) (and (=> (= (ControlFlow 0 483302) 483460) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 483302) 483442) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Else_correct  (=> (and (and (and (not $abort_flag@42) (= inline$$1_Roles_has_role$3$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$3$$t6@2))) (and (= inline$$1_Roles_has_role$3$$t9@1 (= inline$$1_Roles_has_role$3$$t8@1 5)) (= inline$$1_Roles_has_role$3$$t9@1 inline$$1_Roles_has_role$3$$t9@1))) (and (and (= $abort_code@38 $abort_code@37) (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t9@1)) (and (= $abort_flag@43 $abort_flag@42) (= (ControlFlow 0 483348) 483302)))) inline$$1_Roles_has_role$3$L3_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Then$1_correct  (=> (= $abort_flag@42 true) (=> (and (= $abort_code@37 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@0)) (and (=> (= (ControlFlow 0 483418) 483366) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 483418) 483348) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= (ControlFlow 0 483416) 483418)) inline$$1_Roles_has_role$3$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$3$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= $abort_flag@42 $abort_flag@41)) (and (= $abort_code@37 $abort_code@36) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@1))) (and (=> (= (ControlFlow 0 483320) 483366) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 483320) 483348) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon9_Then_correct  (=> inline$$1_Roles_has_role$3$$t5@1 (and (=> (= (ControlFlow 0 483306) 483416) inline$$1_Roles_has_role$3$anon10_Then_correct) (=> (= (ControlFlow 0 483306) 483320) inline$$1_Roles_has_role$3$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$3$$t5@1) (= false false)) (=> (and (and (= $abort_code@38 $abort_code@36) (= inline$$1_Roles_has_role$3$$t2@1 false)) (and (= $abort_flag@43 $abort_flag@41) (= (ControlFlow 0 483290) 483302))) inline$$1_Roles_has_role$3$L3_correct))))
(let ((inline$$1_Roles_has_role$3$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$3$$t4@0 inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)))) (and (=> (= (ControlFlow 0 483270) 483306) inline$$1_Roles_has_role$3$anon9_Then_correct) (=> (= (ControlFlow 0 483270) 483290) inline$$1_Roles_has_role$3$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 483424) 483270)) inline$$1_Roles_has_role$3$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 483466) 483424)) inline$$1_Roles_has_parent_VASP_role$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$1$$t1@1 (= (ControlFlow 0 484974) 483466)) inline$$1_Roles_can_hold_balance$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$1$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 482462) 482468))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|  (=> (and (not $abort_flag@41) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 482446) 484974) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 482446) 482462) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|  (=> $abort_flag@41 (=> (and (and (= $abort_code@36 $abort_code@36) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| $abort_code@36)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 485495) 482468))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 482404) 485495) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 482404) 482446) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|) (= (ControlFlow 0 482410) 482404)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 485521) 482468))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 482299) 485521) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 482299) 482410) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Then_correct|  (=> inline$$Not$3$dst@1 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t12@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 485525) 482299)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Else_correct|  (=> (not inline$$Not$3$dst@1) (=> (and (and (= $abort_code@52 $abort_code@36) (= $abort_flag@60 $abort_flag@41)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 481625) 481627))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|))))
(let ((inline$$Not$3$anon0_correct  (=> (= inline$$Not$3$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t10@1|)) (and (=> (= (ControlFlow 0 481609) 485525) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 481609) 481625) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|  (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t10@1| (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|)) (= (ControlFlow 0 481615) 481609)) inline$$Not$3$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|  (=> (not $abort_flag@40) (=> (and (and (= $abort_code@36 $abort_code@35) (= $abort_flag@41 $abort_flag@40)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 489461) 481615))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@39) (= $abort_code@35 $abort_code@34)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= $abort_flag@40 $abort_flag@39))) (and (=> (= (ControlFlow 0 489313) 489475) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 489313) 489461) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|  (=> (= $abort_code@35 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2|) (= $abort_flag@40 true)) (and (=> (= (ControlFlow 0 486394) 489475) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 486394) 489461) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> $abort_flag@39 (=> (and (and (= $abort_code@34 $abort_code@34) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@34)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 489327) 486394))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@34 $EXEC_FAILURE_CODE) (= $abort_flag@39 true)) (and (=> (= (ControlFlow 0 489379) 489327) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 489379) 489313) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 489377) 489379)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_215483 (|Store__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1|))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@34 $abort_code@33) (= $abort_flag@39 $abort_flag@38))) (and (=> (= (ControlFlow 0 489303) 489327) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 489303) 489313) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|  (=> (and (not $abort_flag@38) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t23@1| (|$1_DiemAccount_Balance'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 489281) 489377) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 489281) 489303) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|  (=> $abort_flag@38 (=> (and (and (= $abort_code@33 $abort_code@33) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@33)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 489393) 486394))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|) (= $abort_flag@38 $abort_flag@37)) (and (= $abort_code@33 $abort_code@32) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|))) (and (=> (= (ControlFlow 0 489233) 489393) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 489233) 489281) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= $abort_flag@38 true)) (and (= $abort_code@33 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 489263) 489393) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 489263) 489281) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 489205) 489263) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 489205) 489233) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|  (=> (and inline$$Not$5$dst@1 (= (ControlFlow 0 489269) 489205)) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|  (=> (not inline$$Not$5$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 489052) 486394))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t21@0|) (= inline$$Not$5$dst@1 inline$$Not$5$dst@1))) (and (=> (= (ControlFlow 0 489036) 489269) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 489036) 489052) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|))))))
(let ((inline$$Not$5$anon0_correct  (=> (and (= inline$$Not$5$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1|)) (= (ControlFlow 0 488996) 489036)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$2$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|)) (= (ControlFlow 0 489002) 488996)) inline$$Not$5$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$2$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 488956) 486394))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|  (=> (and (not $abort_flag@37) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@1))) (and (=> (= (ControlFlow 0 488940) 489002) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 488940) 488956) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|  (=> $abort_flag@37 (=> (and (and (= $abort_code@32 $abort_code@32) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@32)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 489407) 486394))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$2$L9_correct  (=> (= $abort_flag@37 true) (=> (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@0) (= $abort_code@32 inline$$1_Roles_can_hold_balance$2$$t4@1)) (and (=> (= (ControlFlow 0 488830) 489407) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 488830) 488940) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Then_correct  (=> (and (and $abort_flag@35 (= $abort_code@30 $abort_code@30)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@30) (= (ControlFlow 0 488824) 488830))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Then_correct  (=> (and (and $abort_flag@30 (= $abort_code@26 $abort_code@26)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@26) (= (ControlFlow 0 488862) 488830))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Then_correct  (=> (and (and $abort_flag@26 (= $abort_code@23 $abort_code@23)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@23) (= (ControlFlow 0 488894) 488830))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_flag@37 $abort_flag@36)) (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_code@32 $abort_code@31))) (and (=> (= (ControlFlow 0 488810) 489407) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 488810) 488940) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Else_correct  (=> (and (not $abort_flag@35) (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1) (= $abort_code@31 $abort_code@30)) (and (= $abort_flag@36 $abort_flag@35) (= (ControlFlow 0 488798) 488810))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@34) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1) (= $abort_flag@35 $abort_flag@34))) (and (=> (= (ControlFlow 0 488756) 488824) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 488756) 488798) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct  (=> (and (and $abort_flag@34 (= $abort_code@30 $abort_code@30)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@0) (= $abort_flag@35 true))) (and (=> (= (ControlFlow 0 488774) 488824) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 488774) 488798) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Then_correct  (=> $abort_flag@32 (=> (and (and (= $abort_code@28 $abort_code@28) (= $abort_flag@34 true)) (and (= $abort_code@30 $abort_code@28) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@0))) (and (=> (= (ControlFlow 0 488680) 488774) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 488680) 488756) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t2@1) (= $abort_flag@34 $abort_flag@33)) (and (= $abort_code@30 $abort_code@29) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$t2@1))) (and (=> (= (ControlFlow 0 488616) 488774) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 488616) 488756) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Else_correct  (=> (and (and (and (not $abort_flag@32) (= inline$$1_Roles_has_role$8$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$8$$t6@2))) (and (= inline$$1_Roles_has_role$8$$t9@1 (= inline$$1_Roles_has_role$8$$t8@1 2)) (= inline$$1_Roles_has_role$8$$t9@1 inline$$1_Roles_has_role$8$$t9@1))) (and (and (= $abort_flag@33 $abort_flag@32) (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t9@1)) (and (= $abort_code@29 $abort_code@28) (= (ControlFlow 0 488662) 488616)))) inline$$1_Roles_has_role$8$L3_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Then$1_correct  (=> (= $abort_code@28 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@32 true) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@0)) (and (=> (= (ControlFlow 0 488732) 488680) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 488732) 488662) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= (ControlFlow 0 488730) 488732)) inline$$1_Roles_has_role$8$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$8$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= $abort_code@28 $abort_code@27)) (and (= $abort_flag@32 $abort_flag@31) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@1))) (and (=> (= (ControlFlow 0 488634) 488680) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 488634) 488662) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon9_Then_correct  (=> inline$$1_Roles_has_role$8$$t5@1 (and (=> (= (ControlFlow 0 488620) 488730) inline$$1_Roles_has_role$8$anon10_Then_correct) (=> (= (ControlFlow 0 488620) 488634) inline$$1_Roles_has_role$8$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$8$$t5@1) (= false false)) (=> (and (and (= $abort_flag@33 $abort_flag@31) (= inline$$1_Roles_has_role$8$$t2@1 false)) (and (= $abort_code@29 $abort_code@27) (= (ControlFlow 0 488604) 488616))) inline$$1_Roles_has_role$8$L3_correct))))
(let ((inline$$1_Roles_has_role$8$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$8$$t4@0 inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)))) (and (=> (= (ControlFlow 0 488584) 488620) inline$$1_Roles_has_role$8$anon9_Then_correct) (=> (= (ControlFlow 0 488584) 488604) inline$$1_Roles_has_role$8$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 488738) 488584)) inline$$1_Roles_has_role$8$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$2$$t1@1) (= (ControlFlow 0 488780) 488738)) inline$$1_Roles_has_designated_dealer_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$2$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 true) (= $abort_code@31 $abort_code@27)) (and (= $abort_flag@36 $abort_flag@31) (= (ControlFlow 0 488848) 488810))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Else_correct  (=> (not $abort_flag@30) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1) (= inline$$1_Roles_can_hold_balance$2$$t1@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1)) (and (= $abort_flag@31 $abort_flag@30) (= $abort_code@27 $abort_code@26))) (and (=> (= (ControlFlow 0 488098) 488848) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 488098) 488780) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@29) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1) (= $abort_flag@30 $abort_flag@29))) (and (=> (= (ControlFlow 0 488056) 488862) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 488056) 488098) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@29 (= $abort_code@26 $abort_code@26)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@0) (= $abort_flag@30 true))) (and (=> (= (ControlFlow 0 488074) 488862) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 488074) 488098) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Then_correct  (=> $abort_flag@27 (=> (and (and (= $abort_code@24 $abort_code@24) (= $abort_code@26 $abort_code@24)) (and (= $abort_flag@29 true) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@0))) (and (=> (= (ControlFlow 0 487980) 488074) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 487980) 488056) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t2@1) (= $abort_code@26 $abort_code@25)) (and (= $abort_flag@29 $abort_flag@28) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$t2@1))) (and (=> (= (ControlFlow 0 487916) 488074) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 487916) 488056) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Else_correct  (=> (and (and (and (not $abort_flag@27) (= inline$$1_Roles_has_role$7$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$7$$t6@2))) (and (= inline$$1_Roles_has_role$7$$t9@1 (= inline$$1_Roles_has_role$7$$t8@1 6)) (= inline$$1_Roles_has_role$7$$t9@1 inline$$1_Roles_has_role$7$$t9@1))) (and (and (= $abort_code@25 $abort_code@24) (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t9@1)) (and (= $abort_flag@28 $abort_flag@27) (= (ControlFlow 0 487962) 487916)))) inline$$1_Roles_has_role$7$L3_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Then$1_correct  (=> (= $abort_flag@27 true) (=> (and (= $abort_code@24 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@0)) (and (=> (= (ControlFlow 0 488032) 487980) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 488032) 487962) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= (ControlFlow 0 488030) 488032)) inline$$1_Roles_has_role$7$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$7$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= $abort_flag@27 $abort_flag@26)) (and (= $abort_code@24 $abort_code@23) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@1))) (and (=> (= (ControlFlow 0 487934) 487980) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 487934) 487962) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon9_Then_correct  (=> inline$$1_Roles_has_role$7$$t5@1 (and (=> (= (ControlFlow 0 487920) 488030) inline$$1_Roles_has_role$7$anon10_Then_correct) (=> (= (ControlFlow 0 487920) 487934) inline$$1_Roles_has_role$7$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$7$$t5@1) (= false false)) (=> (and (and (= $abort_code@25 $abort_code@23) (= inline$$1_Roles_has_role$7$$t2@1 false)) (and (= $abort_flag@28 $abort_flag@26) (= (ControlFlow 0 487904) 487916))) inline$$1_Roles_has_role$7$L3_correct))))
(let ((inline$$1_Roles_has_role$7$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$7$$t4@0 inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)))) (and (=> (= (ControlFlow 0 487884) 487920) inline$$1_Roles_has_role$7$anon9_Then_correct) (=> (= (ControlFlow 0 487884) 487904) inline$$1_Roles_has_role$7$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 488038) 487884)) inline$$1_Roles_has_role$7$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$2$$ret0@1) (= (ControlFlow 0 488080) 488038)) inline$$1_Roles_has_child_VASP_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$2$$t1@1 true)) (and (= $abort_flag@31 $abort_flag@26) (= $abort_code@27 $abort_code@23))) (and (=> (= (ControlFlow 0 488880) 488848) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 488880) 488780) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Else_correct  (=> (not $abort_flag@26) (and (=> (= (ControlFlow 0 487400) 488880) inline$$1_Roles_can_hold_balance$2$anon14_Then_correct) (=> (= (ControlFlow 0 487400) 488080) inline$$1_Roles_can_hold_balance$2$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@25) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1) (= $abort_flag@26 $abort_flag@25))) (and (=> (= (ControlFlow 0 487368) 488894) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 487368) 487400) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@25 (= $abort_code@23 $abort_code@23)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_parent_VASP_role$2$$ret0@0) (= $abort_flag@26 true))) (and (=> (= (ControlFlow 0 487386) 488894) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 487386) 487400) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Then_correct  (=> $abort_flag@23 (=> (and (and (= $abort_code@21 $abort_code@21) (= $abort_flag@25 true)) (and (= $abort_code@23 $abort_code@21) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@0))) (and (=> (= (ControlFlow 0 487292) 487386) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 487292) 487368) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t2@1) (= $abort_flag@25 $abort_flag@24)) (and (= $abort_code@23 $abort_code@22) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$t2@1))) (and (=> (= (ControlFlow 0 487228) 487386) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 487228) 487368) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Else_correct  (=> (and (and (and (not $abort_flag@23) (= inline$$1_Roles_has_role$6$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$6$$t6@2))) (and (= inline$$1_Roles_has_role$6$$t9@1 (= inline$$1_Roles_has_role$6$$t8@1 5)) (= inline$$1_Roles_has_role$6$$t9@1 inline$$1_Roles_has_role$6$$t9@1))) (and (and (= $abort_flag@24 $abort_flag@23) (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t9@1)) (and (= $abort_code@22 $abort_code@21) (= (ControlFlow 0 487274) 487228)))) inline$$1_Roles_has_role$6$L3_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Then$1_correct  (=> (= $abort_code@21 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@23 true) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@0)) (and (=> (= (ControlFlow 0 487344) 487292) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 487344) 487274) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= (ControlFlow 0 487342) 487344)) inline$$1_Roles_has_role$6$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$6$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= $abort_code@21 $abort_code@20)) (and (= $abort_flag@23 $abort_flag@22) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@1))) (and (=> (= (ControlFlow 0 487246) 487292) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 487246) 487274) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon9_Then_correct  (=> inline$$1_Roles_has_role$6$$t5@1 (and (=> (= (ControlFlow 0 487232) 487342) inline$$1_Roles_has_role$6$anon10_Then_correct) (=> (= (ControlFlow 0 487232) 487246) inline$$1_Roles_has_role$6$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$6$$t5@1) (= false false)) (=> (and (and (= $abort_flag@24 $abort_flag@22) (= inline$$1_Roles_has_role$6$$t2@1 false)) (and (= $abort_code@22 $abort_code@20) (= (ControlFlow 0 487216) 487228))) inline$$1_Roles_has_role$6$L3_correct))))
(let ((inline$$1_Roles_has_role$6$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$6$$t4@0 inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)))) (and (=> (= (ControlFlow 0 487196) 487232) inline$$1_Roles_has_role$6$anon9_Then_correct) (=> (= (ControlFlow 0 487196) 487216) inline$$1_Roles_has_role$6$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 487350) 487196)) inline$$1_Roles_has_role$6$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 487392) 487350)) inline$$1_Roles_has_parent_VASP_role$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= (ControlFlow 0 488900) 487392)) inline$$1_Roles_can_hold_balance$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$2$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 486388) 486394))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|  (=> (and (not $abort_flag@22) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 486372) 488900) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 486372) 486388) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|  (=> $abort_flag@22 (=> (and (and (= $abort_code@20 $abort_code@20) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| $abort_code@20)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 489421) 486394))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 486330) 489421) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 486330) 486372) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|) (= (ControlFlow 0 486336) 486330)) inline$$1_DiemAccount_exists_at$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 489447) 486394))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 486225) 489447) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 486225) 486336) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Then_correct|  (=> inline$$Not$2$dst@1 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 489451) 486225)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Else_correct|  (=> (not inline$$Not$2$dst@1) (=> (and (and (= $abort_code@36 $abort_code@20) (= $abort_flag@41 $abort_flag@22)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 481571) 481615))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|))))
(let ((inline$$Not$2$anon0_correct  (=> (= inline$$Not$2$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t7@1|)) (and (=> (= (ControlFlow 0 481557) 489451) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 481557) 481571) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Then_correct|  (=> _$t3 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|)) (= (ControlFlow 0 481563) 481557)) inline$$Not$2$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Else_correct|  (=> (and (not _$t3) (= $abort_code@53 $abort_code@20)) (=> (and (and (= $abort_flag@61 $abort_flag@22) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 481513) 481517))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|  (=> (not $abort_flag@22) (and (=> (= (ControlFlow 0 481505) 481563) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 481505) 481513) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@21) (= $abort_code@20 $abort_code@19)) (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@1|) (= $abort_flag@22 $abort_flag@21))) (and (=> (= (ControlFlow 0 481357) 489489) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 481357) 481505) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|  (=> (= $abort_code@20 |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1|) (=> (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@2|) (= $abort_flag@22 true)) (and (=> (= (ControlFlow 0 478438) 489489) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 478438) 481505) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|  (=> $abort_flag@21 (=> (and (and (= $abort_code@19 $abort_code@19) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| $abort_code@19)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory@1|) (= (ControlFlow 0 481371) 478438))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory|) (=> (and (= $abort_code@19 $EXEC_FAILURE_CODE) (= $abort_flag@21 true)) (and (=> (= (ControlFlow 0 481423) 481371) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 481423) 481357) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 481421) 481423)) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'#0'_$memory@0| ($Memory_304044 (|Store__T@[Int]Bool_| (|domain#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'#0'$0$$t23@1|))) (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory@0|)) (and (= $abort_code@19 $abort_code@18) (= $abort_flag@21 $abort_flag@20))) (and (=> (= (ControlFlow 0 481347) 481371) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 481347) 481357) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|  (=> (and (not $abort_flag@20) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t23@1| (|$1_DiemAccount_Balance'#0'| |inline$$1_Diem_zero'#0'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 481325) 481421) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 481325) 481347) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|  (=> $abort_flag@20 (=> (and (and (= $abort_code@18 $abort_code@18) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| $abort_code@18)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 481437) 478438))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'#0'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'#0'$0$$t3@1| (|$1_Diem_Diem'#0'| 0))) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t3@1| |inline$$1_Diem_zero'#0'$0$$t3@1|) (= $abort_flag@20 $abort_flag@19)) (and (= $abort_code@18 $abort_code@17) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$t3@1|))) (and (=> (= (ControlFlow 0 481277) 481437) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 481277) 481325) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'#0'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'#0'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t1@0| |inline$$1_Diem_zero'#0'$0$$t1@0|) (= $abort_flag@20 true)) (and (= $abort_code@18 |inline$$1_Diem_zero'#0'$0$$t1@0|) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 481307) 481437) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 481307) 481325) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'#0'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 481249) 481307) |inline$$1_Diem_zero'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 481249) 481277) |inline$$1_Diem_zero'#0'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 481313) 481249)) |inline$$1_Diem_zero'#0'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|  (=> (not inline$$Not$1$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 481096) 478438))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t21@0|) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 481080) 481313) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 481080) 481096) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_DiemAccount_add_currency'#0'$0$$t18@1|)) (= (ControlFlow 0 481040) 481080)) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t18@1| (|Select__T@[Int]Bool_| (|domain#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|)) (= (ControlFlow 0 481046) 481040)) inline$$Not$1$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 481000) 478438))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|  (=> (and (not $abort_flag@19) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t17@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@1))) (and (=> (= (ControlFlow 0 480984) 481046) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 480984) 481000) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|  (=> $abort_flag@19 (=> (and (and (= $abort_code@17 $abort_code@17) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| $abort_code@17)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 481451) 478438))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct  (=> (= $abort_flag@19 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@0) (= $abort_code@17 inline$$1_Roles_can_hold_balance$0$$t4@1)) (and (=> (= (ControlFlow 0 480874) 481451) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 480874) 480984) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct  (=> (and (and $abort_flag@17 (= $abort_code@15 $abort_code@15)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@15) (= (ControlFlow 0 480868) 480874))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct  (=> (and (and $abort_flag@12@@0 (= $abort_code@11 $abort_code@11)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@11) (= (ControlFlow 0 480906) 480874))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct  (=> (and (and $abort_flag@8@@0 (= $abort_code@8@@0 $abort_code@8@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@8@@0) (= (ControlFlow 0 480938) 480874))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_flag@19 $abort_flag@18)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_code@17 $abort_code@16))) (and (=> (= (ControlFlow 0 480854) 481451) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 480854) 480984) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct  (=> (and (not $abort_flag@17) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0) (= $abort_code@16 $abort_code@15)) (and (= $abort_flag@18 $abort_flag@17) (= (ControlFlow 0 480842) 480854))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@0  (=> (and (and (not $abort_flag@16) (= inline$$1_Roles_has_role$2$$ret0@1@@0 inline$$1_Roles_has_role$2$$ret0@1@@0)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 inline$$1_Roles_has_role$2$$ret0@1@@0) (= $abort_flag@17 $abort_flag@16))) (and (=> (= (ControlFlow 0 480800) 480868) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 480800) 480842) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@0  (=> (and (and $abort_flag@16 (= $abort_code@15 $abort_code@15)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0@@0) (= $abort_flag@17 true))) (and (=> (= (ControlFlow 0 480818) 480868) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 480818) 480842) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct@@0  (=> $abort_flag@14 (=> (and (and (= $abort_code@13 $abort_code@13) (= $abort_flag@16 true)) (and (= $abort_code@15 $abort_code@13) (= inline$$1_Roles_has_role$2$$ret0@1@@0 inline$$1_Roles_has_role$2$$ret0@0@@0))) (and (=> (= (ControlFlow 0 480724) 480818) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 480724) 480800) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$2$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1@@0 inline$$1_Roles_has_role$2$$t2@1@@0) (= $abort_flag@16 $abort_flag@15)) (and (= $abort_code@15 $abort_code@14) (= inline$$1_Roles_has_role$2$$ret0@1@@0 inline$$1_Roles_has_role$2$$t2@1@@0))) (and (=> (= (ControlFlow 0 480660) 480818) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 480660) 480800) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@14) (= inline$$1_Roles_has_role$2$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2@@0))) (and (= inline$$1_Roles_has_role$2$$t9@1@@0 (= inline$$1_Roles_has_role$2$$t8@1@@0 2)) (= inline$$1_Roles_has_role$2$$t9@1@@0 inline$$1_Roles_has_role$2$$t9@1@@0))) (and (and (= $abort_flag@15 $abort_flag@14) (= inline$$1_Roles_has_role$2$$t2@1@@0 inline$$1_Roles_has_role$2$$t9@1@@0)) (and (= $abort_code@14 $abort_code@13) (= (ControlFlow 0 480706) 480660)))) inline$$1_Roles_has_role$2$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct@@0  (=> (= $abort_code@13 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@14 true) (= inline$$1_Roles_has_role$2$$t6@2@@0 inline$$1_Roles_has_role$2$$t6@0@@0)) (and (=> (= (ControlFlow 0 480776) 480724) inline$$1_Roles_has_role$2$anon11_Then_correct@@0) (=> (= (ControlFlow 0 480776) 480706) inline$$1_Roles_has_role$2$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0@@0)) (= (ControlFlow 0 480774) 480776)) inline$$1_Roles_has_role$2$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0@@0)) (= $abort_code@13 $abort_code@12)) (and (= $abort_flag@14 $abort_flag@13) (= inline$$1_Roles_has_role$2$$t6@2@@0 inline$$1_Roles_has_role$2$$t6@1@@0))) (and (=> (= (ControlFlow 0 480678) 480724) inline$$1_Roles_has_role$2$anon11_Then_correct@@0) (=> (= (ControlFlow 0 480678) 480706) inline$$1_Roles_has_role$2$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$2$$t5@1@@0 (and (=> (= (ControlFlow 0 480664) 480774) inline$$1_Roles_has_role$2$anon10_Then_correct@@0) (=> (= (ControlFlow 0 480664) 480678) inline$$1_Roles_has_role$2$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$2$$t5@1@@0) (= false false)) (=> (and (and (= $abort_flag@15 $abort_flag@13) (= inline$$1_Roles_has_role$2$$t2@1@@0 false)) (and (= $abort_code@14 $abort_code@12) (= (ControlFlow 0 480648) 480660))) inline$$1_Roles_has_role$2$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$2$anon0_correct@@0  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0@@0) (= inline$$1_Roles_has_role$2$$t4@0@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$2$$t4@0@@0 inline$$1_Roles_has_role$2$$t4@0@@0) (= inline$$1_Roles_has_role$2$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0@@0)))) (and (=> (= (ControlFlow 0 480628) 480664) inline$$1_Roles_has_role$2$anon9_Then_correct@@0) (=> (= (ControlFlow 0 480628) 480648) inline$$1_Roles_has_role$2$anon9_Else_correct@@0))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct@@0  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 480782) 480628)) inline$$1_Roles_has_role$2$anon0_correct@@0))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1) (= (ControlFlow 0 480824) 480782)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 true) (= $abort_code@16 $abort_code@12)) (and (= $abort_flag@18 $abort_flag@13) (= (ControlFlow 0 480892) 480854))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct  (=> (not $abort_flag@12@@0) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0) (= inline$$1_Roles_can_hold_balance$0$$t1@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0)) (and (= $abort_flag@13 $abort_flag@12@@0) (= $abort_code@12 $abort_code@11))) (and (=> (= (ControlFlow 0 480142) 480892) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 480142) 480824) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@0  (=> (and (and (not $abort_flag@11@@0) (= inline$$1_Roles_has_role$1$$ret0@1@@0 inline$$1_Roles_has_role$1$$ret0@1@@0)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_role$1$$ret0@1@@0) (= $abort_flag@12@@0 $abort_flag@11@@0))) (and (=> (= (ControlFlow 0 480100) 480906) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 480100) 480142) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@0  (=> (and (and $abort_flag@11@@0 (= $abort_code@11 $abort_code@11)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@0@@0) (= $abort_flag@12@@0 true))) (and (=> (= (ControlFlow 0 480118) 480906) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 480118) 480142) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct@@0  (=> $abort_flag@9@@0 (=> (and (and (= $abort_code@9@@0 $abort_code@9@@0) (= $abort_code@11 $abort_code@9@@0)) (and (= $abort_flag@11@@0 true) (= inline$$1_Roles_has_role$1$$ret0@1@@0 inline$$1_Roles_has_role$1$$ret0@0@@0))) (and (=> (= (ControlFlow 0 480024) 480118) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 480024) 480100) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$1$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1@@0 inline$$1_Roles_has_role$1$$t2@1@@0) (= $abort_code@11 $abort_code@10@@0)) (and (= $abort_flag@11@@0 $abort_flag@10@@0) (= inline$$1_Roles_has_role$1$$ret0@1@@0 inline$$1_Roles_has_role$1$$t2@1@@0))) (and (=> (= (ControlFlow 0 479960) 480118) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 479960) 480100) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@9@@0) (= inline$$1_Roles_has_role$1$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2@@0))) (and (= inline$$1_Roles_has_role$1$$t9@1@@0 (= inline$$1_Roles_has_role$1$$t8@1@@0 6)) (= inline$$1_Roles_has_role$1$$t9@1@@0 inline$$1_Roles_has_role$1$$t9@1@@0))) (and (and (= $abort_code@10@@0 $abort_code@9@@0) (= inline$$1_Roles_has_role$1$$t2@1@@0 inline$$1_Roles_has_role$1$$t9@1@@0)) (and (= $abort_flag@10@@0 $abort_flag@9@@0) (= (ControlFlow 0 480006) 479960)))) inline$$1_Roles_has_role$1$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct@@0  (=> (= $abort_flag@9@@0 true) (=> (and (= $abort_code@9@@0 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2@@0 inline$$1_Roles_has_role$1$$t6@0@@0)) (and (=> (= (ControlFlow 0 480076) 480024) inline$$1_Roles_has_role$1$anon11_Then_correct@@0) (=> (= (ControlFlow 0 480076) 480006) inline$$1_Roles_has_role$1$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0@@0)) (= (ControlFlow 0 480074) 480076)) inline$$1_Roles_has_role$1$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0@@0)) (= $abort_flag@9@@0 $abort_flag@8@@0)) (and (= $abort_code@9@@0 $abort_code@8@@0) (= inline$$1_Roles_has_role$1$$t6@2@@0 inline$$1_Roles_has_role$1$$t6@1@@0))) (and (=> (= (ControlFlow 0 479978) 480024) inline$$1_Roles_has_role$1$anon11_Then_correct@@0) (=> (= (ControlFlow 0 479978) 480006) inline$$1_Roles_has_role$1$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$1$$t5@1@@0 (and (=> (= (ControlFlow 0 479964) 480074) inline$$1_Roles_has_role$1$anon10_Then_correct@@0) (=> (= (ControlFlow 0 479964) 479978) inline$$1_Roles_has_role$1$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$1$$t5@1@@0) (= false false)) (=> (and (and (= $abort_code@10@@0 $abort_code@8@@0) (= inline$$1_Roles_has_role$1$$t2@1@@0 false)) (and (= $abort_flag@10@@0 $abort_flag@8@@0) (= (ControlFlow 0 479948) 479960))) inline$$1_Roles_has_role$1$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$1$anon0_correct@@0  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0@@0) (= inline$$1_Roles_has_role$1$$t4@0@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$1$$t4@0@@0 inline$$1_Roles_has_role$1$$t4@0@@0) (= inline$$1_Roles_has_role$1$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0@@0)))) (and (=> (= (ControlFlow 0 479928) 479964) inline$$1_Roles_has_role$1$anon9_Then_correct@@0) (=> (= (ControlFlow 0 479928) 479948) inline$$1_Roles_has_role$1$anon9_Else_correct@@0))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct@@0  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 480082) 479928)) inline$$1_Roles_has_role$1$anon0_correct@@0))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0) (= (ControlFlow 0 480124) 480082)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1 true)) (and (= $abort_flag@13 $abort_flag@8@@0) (= $abort_code@12 $abort_code@8@@0))) (and (=> (= (ControlFlow 0 480924) 480892) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 480924) 480824) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct  (=> (not $abort_flag@8@@0) (and (=> (= (ControlFlow 0 479444) 480924) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct) (=> (= (ControlFlow 0 479444) 480124) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@0  (=> (and (and (not $abort_flag@7@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@7 inline$$1_Roles_has_role$0$$ret0@1@@7)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@1@@7) (= $abort_flag@8@@0 $abort_flag@7@@0))) (and (=> (= (ControlFlow 0 479412) 480938) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 479412) 479444) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@0  (=> (and (and $abort_flag@7@@0 (= $abort_code@8@@0 $abort_code@8@@0)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0@@0) (= $abort_flag@8@@0 true))) (and (=> (= (ControlFlow 0 479430) 480938) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 479430) 479444) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@7  (=> $abort_flag@5@@0 (=> (and (and (= $abort_code@6@@0 $abort_code@6@@0) (= $abort_flag@7@@0 true)) (and (= $abort_code@8@@0 $abort_code@6@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@7 inline$$1_Roles_has_role$0$$ret0@0@@7))) (and (=> (= (ControlFlow 0 479336) 479430) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 479336) 479412) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@7  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@7 inline$$1_Roles_has_role$0$$t2@1@@7) (= $abort_flag@7@@0 $abort_flag@6@@0)) (and (= $abort_code@8@@0 $abort_code@7@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@7 inline$$1_Roles_has_role$0$$t2@1@@7))) (and (=> (= (ControlFlow 0 479272) 479430) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 479272) 479412) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@7  (=> (and (and (and (not $abort_flag@5@@0) (= inline$$1_Roles_has_role$0$$t8@1@@7 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@7))) (and (= inline$$1_Roles_has_role$0$$t9@1@@7 (= inline$$1_Roles_has_role$0$$t8@1@@7 5)) (= inline$$1_Roles_has_role$0$$t9@1@@7 inline$$1_Roles_has_role$0$$t9@1@@7))) (and (and (= $abort_flag@6@@0 $abort_flag@5@@0) (= inline$$1_Roles_has_role$0$$t2@1@@7 inline$$1_Roles_has_role$0$$t9@1@@7)) (and (= $abort_code@7@@0 $abort_code@6@@0) (= (ControlFlow 0 479318) 479272)))) inline$$1_Roles_has_role$0$L3_correct@@7)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@7  (=> (= $abort_code@6@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5@@0 true) (= inline$$1_Roles_has_role$0$$t6@2@@7 inline$$1_Roles_has_role$0$$t6@0@@7)) (and (=> (= (ControlFlow 0 479388) 479336) inline$$1_Roles_has_role$0$anon11_Then_correct@@7) (=> (= (ControlFlow 0 479388) 479318) inline$$1_Roles_has_role$0$anon11_Else_correct@@7))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@7  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0@@7)) (= (ControlFlow 0 479386) 479388)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@7)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@7  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0@@7) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0@@7)) (= $abort_code@6@@0 $abort_code@5@@0)) (and (= $abort_flag@5@@0 $abort_flag@4@@0) (= inline$$1_Roles_has_role$0$$t6@2@@7 inline$$1_Roles_has_role$0$$t6@1@@7))) (and (=> (= (ControlFlow 0 479290) 479336) inline$$1_Roles_has_role$0$anon11_Then_correct@@7) (=> (= (ControlFlow 0 479290) 479318) inline$$1_Roles_has_role$0$anon11_Else_correct@@7))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@7  (=> inline$$1_Roles_has_role$0$$t5@1@@7 (and (=> (= (ControlFlow 0 479276) 479386) inline$$1_Roles_has_role$0$anon10_Then_correct@@7) (=> (= (ControlFlow 0 479276) 479290) inline$$1_Roles_has_role$0$anon10_Else_correct@@7)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@7  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@7) (= false false)) (=> (and (and (= $abort_flag@6@@0 $abort_flag@4@@0) (= inline$$1_Roles_has_role$0$$t2@1@@7 false)) (and (= $abort_code@7@@0 $abort_code@5@@0) (= (ControlFlow 0 479260) 479272))) inline$$1_Roles_has_role$0$L3_correct@@7))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@7  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@7) (= inline$$1_Roles_has_role$0$$t4@0@@7 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$0$$t4@0@@7 inline$$1_Roles_has_role$0$$t4@0@@7) (= inline$$1_Roles_has_role$0$$t5@1@@7 (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0@@7)))) (and (=> (= (ControlFlow 0 479240) 479276) inline$$1_Roles_has_role$0$anon9_Then_correct@@7) (=> (= (ControlFlow 0 479240) 479260) inline$$1_Roles_has_role$0$anon9_Else_correct@@7))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct@@0  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 479394) 479240)) inline$$1_Roles_has_role$0$anon0_correct@@7))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 479436) 479394)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct@@0)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1 (= (ControlFlow 0 480944) 479436)) inline$$1_Roles_can_hold_balance$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 478432) 478438))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|  (=> (and (not $abort_flag@4@@0) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t14@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 478416) 480944) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 478416) 478432) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|  (=> $abort_flag@4@@0 (=> (and (and (= $abort_code@5@@0 $abort_code@5@@0) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| $abort_code@5@@0)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 481465) 478438))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 478374) 481465) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 478374) 478416) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|) (= (ControlFlow 0 478380) 478374)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'#0'$0$$t11@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t11@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t11@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t11@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 481491) 478438))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|  (=> (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 478269) 481491) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 478269) 478380) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon0_correct|  (=> (and (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t3@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= _$t3 _$t3) (|$IsValid'address'| |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|))) (and (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|)) (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 481495) 478269)))) |inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|)))
(let ((anon26_correct  (=> (= $t23@@2 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816)) (=> (and (and (= $t24@@0 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= $t25@@0 ($1_DiemAccount_CreateAccountEvent (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) $t18@@1))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory@2) $t18@@1) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory@2) $t18@@1)))) (= $t23@@2 ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t19) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t19)))) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) $t18@@1)))) 0)) (= $t18@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) $t18@@1))) 0))))) (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) $t18@@1)))) 0)) (= $t18@@1 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory@2) $t18@@1))) 0)))) (= $t26 $t25@@0)) (and (and (= $t27 $t24@@0) (= $es@0 (let ((stream@@31 (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| $es) $t27)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_172573| stream@@31)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| stream@@31) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t26))))
(Multiset_172573 (|Store__T@[$EventRep]Int_| (|v#Multiset_172573| stream@@31) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t26) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| $es) $t27 stream_new@@2)))))) (and (= $t28 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 489493) 481495))))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon0_correct|)))))
(let ((anon40_Else_correct  (=> (and (and (not |$temp_0'bool'@3|) (= $1_DiemAccount_AccountOperationsCapability_$memory@1 ($Memory_212145 (|Store__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 false) (|contents#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@1) (= (ControlFlow 0 477018) 489493))) anon26_correct)))
(let ((anon40_Then_correct  (=> (and (and |$temp_0'bool'@3| (= $1_DiemAccount_AccountOperationsCapability_$memory@0 ($Memory_212145 (|Store__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0|)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@0) (= (ControlFlow 0 490703) 489493))) anon26_correct)))
(let ((anon39_Else_correct  (=> (not |$temp_0'bool'@2|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1 ($Memory_211973 (|Store__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) $t18@@1 false) (|contents#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@1)) (and (=> (= (ControlFlow 0 477004) 490703) anon40_Then_correct) (=> (= (ControlFlow 0 477004) 477018) anon40_Else_correct))))))
(let ((anon39_Then_correct  (=> |$temp_0'bool'@2| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_211973 (|Store__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) $t18@@1 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) $t18@@1 |$temp_0'$1_AccountFreezing_FreezingBit'@0|))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@0)) (and (=> (= (ControlFlow 0 490715) 490703) anon40_Then_correct) (=> (= (ControlFlow 0 490715) 477018) anon40_Else_correct))))))
(let ((anon38_Else_correct  (=> (and (not |$temp_0'bool'@1|) (= $1_Event_EventHandleGenerator_$memory@1 ($Memory_203095 (|Store__T@[Int]Bool_| (|domain#$Memory_203095| $1_Event_EventHandleGenerator_$memory) $t18@@1 false) (|contents#$Memory_203095| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 476990) 490715) anon39_Then_correct) (=> (= (ControlFlow 0 476990) 477004) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (and |$temp_0'bool'@1| (= $1_Event_EventHandleGenerator_$memory@0 ($Memory_203095 (|Store__T@[Int]Bool_| (|domain#$Memory_203095| $1_Event_EventHandleGenerator_$memory) $t18@@1 true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_203095| $1_Event_EventHandleGenerator_$memory) $t18@@1 |$temp_0'$1_Event_EventHandleGenerator'@0|)))) (and (=> (= (ControlFlow 0 490727) 490715) anon39_Then_correct) (=> (= (ControlFlow 0 490727) 477004) anon39_Else_correct)))))
(let ((anon37_Else_correct  (=> (not |$temp_0'bool'@0@@6|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_222811 (|Store__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) $t18@@1 false) (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 476976) 490727) anon38_Then_correct) (=> (= (ControlFlow 0 476976) 476990) anon38_Else_correct))))))
(let ((anon37_Then_correct  (=> |$temp_0'bool'@0@@6| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_222811 (|Store__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) $t18@@1 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) $t18@@1 |$temp_0'$1_DiemAccount_DiemAccount'@0|))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 490739) 490727) anon38_Then_correct) (=> (= (ControlFlow 0 490739) 476990) anon38_Else_correct))))))
(let ((anon36_Else_correct  (=> (not $t22) (and (=> (= (ControlFlow 0 476964) 490739) anon37_Then_correct) (=> (= (ControlFlow 0 476964) 476976) anon37_Else_correct)))))
(let ((anon35_Else_correct  (=> (not $abort_flag@4@@0) (=> (and (and (= $t18@@1 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t19 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (= $t20@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t21 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))) (and (=> (= (ControlFlow 0 476958) (- 0 779662)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) $t18@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) $t18@@1)) (and (=> (= (ControlFlow 0 476958) (- 0 779673)) (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (and (=> (= (ControlFlow 0 476958) (- 0 779682)) (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) $t18@@1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) $t18@@1) (=> (= $t22  (or (or (or (or (= $t18@@1 0) (= $t18@@1 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) $t18@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t2@@0)) 32)))) (and (=> (= (ControlFlow 0 476958) 490845) anon36_Then_correct) (=> (= (ControlFlow 0 476958) 476964) anon36_Else_correct)))))))))))))
(let ((anon34_Else_correct  (=> (not $abort_flag@4@@0) (and (=> (= (ControlFlow 0 476824) 490859) anon35_Then_correct) (=> (= (ControlFlow 0 476824) 476958) anon35_Else_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon36_Else_correct  (=> (not $abort_flag@3@@0) (=> (and (and (= $abort_code@5@@0 $abort_code@4@@0) (= $1_VASP_ChildVASP_$memory@3 $1_VASP_ChildVASP_$memory@1)) (and (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory@0) (= $abort_flag@4@@0 $abort_flag@3@@0))) (and (=> (= (ControlFlow 0 476537) 490873) anon34_Then_correct) (=> (= (ControlFlow 0 476537) 476824) anon34_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$L7_correct  (=> (and (and (= $abort_code@5@@0 inline$$1_VASP_publish_child_vasp_credential$0$$t16@1) (= $1_VASP_ChildVASP_$memory@3 $1_VASP_ChildVASP_$memory@2)) (and (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory@1) (= $abort_flag@4@@0 true))) (and (=> (= (ControlFlow 0 476050) 490873) anon34_Then_correct) (=> (= (ControlFlow 0 476050) 476824) anon34_Else_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon36_Then_correct  (=> (and $abort_flag@3@@0 (= $abort_code@4@@0 $abort_code@4@@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 $abort_code@4@@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory@1)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory@0) (= (ControlFlow 0 476551) 476050))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then$1_correct  (=> (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory) (=> (and (= $abort_code@4@@0 $EXEC_FAILURE_CODE) (= $abort_flag@3@@0 true)) (and (=> (= (ControlFlow 0 476603) 476551) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Then_correct) (=> (= (ControlFlow 0 476603) 476537) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 476601) 476603)) inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon35_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_VASP_ChildVASP_$memory@0 ($Memory_223485 (|Store__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_223485| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) inline$$1_VASP_publish_child_vasp_credential$0$$t37@1))) (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory@0)) (and (= $abort_code@4@@0 $abort_code@3@@7) (= $abort_flag@3@@0 $abort_flag@2@@7))) (and (=> (= (ControlFlow 0 476527) 476551) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Then_correct) (=> (= (ControlFlow 0 476527) 476537) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon34_Else_correct  (=> (not $abort_flag@2@@7) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t28@2 ($Mutation_16758 (|l#$Mutation_16758| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1) (|p#$Mutation_16758| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1) inline$$AddU64$0$dst@2)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@3 ($Mutation_295643 (|l#$Mutation_295643| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) (|p#$Mutation_295643| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) ($1_VASP_ParentVASP (|v#$Mutation_16758| inline$$1_VASP_publish_child_vasp_credential$0$$t28@2))))) (and (= $1_VASP_ParentVASP_$memory@0 ($Memory_223385 (|Store__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_295643| inline$$1_VASP_publish_child_vasp_credential$0$$t27@3)) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_295643| inline$$1_VASP_publish_child_vasp_credential$0$$t27@3)) (|v#$Mutation_295643| inline$$1_VASP_publish_child_vasp_credential$0$$t27@3)))) (= inline$$1_VASP_publish_child_vasp_credential$0$$t37@1 ($1_VASP_ChildVASP inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)))) (and (=> (= (ControlFlow 0 476505) 476601) inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then_correct) (=> (= (ControlFlow 0 476505) 476527) inline$$1_VASP_publish_child_vasp_credential$0$anon35_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon34_Then_correct  (=> (and $abort_flag@2@@7 (= $abort_code@3@@7 $abort_code@3@@7)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 $abort_code@3@@7) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 476617) 476050))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2@@7 true) (=> (and (= $abort_code@3@@7 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 476453) 476617) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Then_correct) (=> (= (ControlFlow 0 476453) 476505) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 1) $MAX_U64) (= (ControlFlow 0 476451) 476453)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 1)) (= $abort_flag@2@@7 $abort_flag@1@@7)) (and (= $abort_code@3@@7 $abort_code@2@@7) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 476399) 476617) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Then_correct) (=> (= (ControlFlow 0 476399) 476505) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon33_Then_correct  (=> inline$$Lt$0$dst@1@@0 (=> (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 (|v#$Mutation_16758| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 476459) 476451) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 476459) 476399) inline$$AddU64$0$anon3_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon33_Else_correct  (=> (and (not inline$$Lt$0$dst@1@@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 inline$$1_VASP_publish_child_vasp_credential$0$$t33@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t33@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 476292) 476050))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_VASP_publish_child_vasp_credential$0$$t33@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 8)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 inline$$1_VASP_publish_child_vasp_credential$0$$t33@0) (= inline$$Lt$0$dst@1@@0 inline$$Lt$0$dst@1@@0))) (and (=> (= (ControlFlow 0 476276) 476459) inline$$1_VASP_publish_child_vasp_credential$0$anon33_Then_correct) (=> (= (ControlFlow 0 476276) 476292) inline$$1_VASP_publish_child_vasp_credential$0$anon33_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (and (= inline$$Lt$0$dst@1@@0 (< inline$$1_VASP_publish_child_vasp_credential$0$$t29@1 65536)) (= (ControlFlow 0 476240) 476276)) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else_correct  (=> (not $abort_flag@1@@7) (=> (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t28@1 ($Mutation_16758 (|l#$Mutation_295643| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) (seq.++ (|p#$Mutation_295643| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) (seq.unit 0)) (|$num_children#$1_VASP_ParentVASP| (|v#$Mutation_295643| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2)))) (= |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1| (|v#$Mutation_16758| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1))) (=> (and (and (= |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1| |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1|) (= inline$$1_VASP_publish_child_vasp_credential$0$$t29@1 (|v#$Mutation_16758| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1))) (and (|$IsValid'u64'| 65536) (= (ControlFlow 0 476246) 476240))) inline$$Lt$0$anon0_correct@@0)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon32_Then_correct  (=> (and $abort_flag@1@@7 (= $abort_code@2@@7 $abort_code@2@@7)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 $abort_code@2@@7) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 476631) 476050))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then$1_correct  (=> (= $abort_code@2@@7 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@7 true) (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@2 inline$$1_VASP_publish_child_vasp_credential$0$$t27@0)) (and (=> (= (ControlFlow 0 476683) 476631) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Then_correct) (=> (= (ControlFlow 0 476683) 476246) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (= (ControlFlow 0 476681) 476683)) inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon31_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@1 ($Mutation_295643 ($Global inline$$1_VASP_publish_child_vasp_credential$0$$t23@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0))) (= $abort_code@2@@7 $abort_code@1@@20)) (and (= $abort_flag@1@@7 $abort_flag@0@@20) (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@2 inline$$1_VASP_publish_child_vasp_credential$0$$t27@1))) (and (=> (= (ControlFlow 0 476158) 476631) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Then_correct) (=> (= (ControlFlow 0 476158) 476246) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon30_Then_correct  (=> inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 (and (=> (= (ControlFlow 0 476136) 476681) inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then_correct) (=> (= (ControlFlow 0 476136) 476158) inline$$1_VASP_publish_child_vasp_credential$0$anon31_Else_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon30_Else_correct  (=> (and (not inline$$1_VASP_publish_child_vasp_credential$0$$t24@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 inline$$1_VASP_publish_child_vasp_credential$0$$t26@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t26@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 476132) 476050))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon29_Then_correct  (=> (and inline$$Not$0$dst@1@@0 (|$IsValid'address'| inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (=> (and (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t23@0 (|$addr#$signer| _$t0@@27)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t23@0 inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| inline$$1_VASP_publish_child_vasp_credential$0$$t26@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 7)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 inline$$1_VASP_publish_child_vasp_credential$0$$t26@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 inline$$1_VASP_publish_child_vasp_credential$0$$t24@0)))) (and (=> (= (ControlFlow 0 476116) 476136) inline$$1_VASP_publish_child_vasp_credential$0$anon30_Then_correct) (=> (= (ControlFlow 0 476116) 476132) inline$$1_VASP_publish_child_vasp_credential$0$anon30_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon29_Else_correct  (=> (and (not inline$$Not$0$dst@1@@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 inline$$1_VASP_publish_child_vasp_credential$0$$t22@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t22@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 476044) 476050))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_VASP_publish_child_vasp_credential$0$$t22@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 6)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 inline$$1_VASP_publish_child_vasp_credential$0$$t22@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 476028) 476116) inline$$1_VASP_publish_child_vasp_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 476028) 476044) inline$$1_VASP_publish_child_vasp_credential$0$anon29_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not inline$$1_VASP_publish_child_vasp_credential$0$$t19@0)) (= (ControlFlow 0 475992) 476028)) inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else_correct  (=> (and (not inline$$1_VASP_publish_child_vasp_credential$0$$t17@0) (|$IsValid'address'| inline$$1_VASP_publish_child_vasp_credential$0$$t18@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t18@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t18@0 inline$$1_VASP_publish_child_vasp_credential$0$$t18@0)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t19@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t18@0) (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t18@0))) (= (ControlFlow 0 475998) 475992))) inline$$Not$0$anon0_correct@@0))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon28_Then_correct  (=> inline$$1_VASP_publish_child_vasp_credential$0$$t17@0 (=> (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (= 5 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 6)) (= 3 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0))) (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@0 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 476739) 476050))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon27_Else_correct  (=> (and (not inline$$1_VASP_publish_child_vasp_credential$0$$t15@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t17@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 6))))) (and (=> (= (ControlFlow 0 475918) 476739) inline$$1_VASP_publish_child_vasp_credential$0$anon28_Then_correct) (=> (= (ControlFlow 0 475918) 475998) inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon27_Then_correct  (=> inline$$1_VASP_publish_child_vasp_credential$0$$t15@0 (=> (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) (= 5 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) 5)) (= 3 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0))) (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@0 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 476791) 476050))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon0_correct  (=> (and (= (seq.len (|p#$Mutation_16758| inline$$1_VASP_publish_child_vasp_credential$0$$t9@0)) 0) (= (seq.len (|p#$Mutation_295643| inline$$1_VASP_publish_child_vasp_credential$0$$t27@0)) 0)) (=> (and (and (and (= (seq.len (|p#$Mutation_16758| inline$$1_VASP_publish_child_vasp_credential$0$$t28@0)) 0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t11@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t12@0 (|$addr#$signer| _$t0@@27)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t13@0 (|$addr#$signer| _$t0@@27)))) (and (and (= _$t0@@27 _$t0@@27) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t14@0 (|$addr#$signer| _$t0@@27)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t15@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) 5))))))) (and (=> (= (ControlFlow 0 475878) 476791) inline$$1_VASP_publish_child_vasp_credential$0$anon27_Then_correct) (=> (= (ControlFlow 0 475878) 475918) inline$$1_VASP_publish_child_vasp_credential$0$anon27_Else_correct))))))
(let ((anon33_Else_correct  (=> (not $abort_flag@0@@20) (=> (and (and (= $t15@@1 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t16@@0 (|$addr#$signer| _$t0@@27))) (and (= $t17@@3 (|$addr#$signer| _$t0@@27)) (= (ControlFlow 0 476795) 475878))) inline$$1_VASP_publish_child_vasp_credential$0$anon0_correct))))
(let ((inline$$1_Roles_new_child_vasp_role$0$L2_correct  (=> (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@20 true) (= $abort_code@1@@20 inline$$1_Roles_new_child_vasp_role$0$$t6@0)) (and (=> (= (ControlFlow 0 474687) 490887) anon33_Then_correct) (=> (= (ControlFlow 0 474687) 476795) anon33_Else_correct))))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon9_Then_correct  (=> inline$$1_Roles_new_child_vasp_role$0$$t9@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= 6 inline$$1_Roles_new_child_vasp_role$0$$t6@0)) (and (= inline$$1_Roles_new_child_vasp_role$0$$t6@0 inline$$1_Roles_new_child_vasp_role$0$$t6@0) (= (ControlFlow 0 474681) 474687))) inline$$1_Roles_new_child_vasp_role$0$L2_correct))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon8_Then_correct  (=> (and (and inline$$1_Roles_new_child_vasp_role$0$$t5@0 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) (= 5 inline$$1_Roles_new_child_vasp_role$0$$t6@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) 5)) (= 3 inline$$1_Roles_new_child_vasp_role$0$$t6@0)))) (and (= inline$$1_Roles_new_child_vasp_role$0$$t6@0 inline$$1_Roles_new_child_vasp_role$0$$t6@0) (= (ControlFlow 0 474739) 474687))) inline$$1_Roles_new_child_vasp_role$0$L2_correct)))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon7_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory@2@@6) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory@2@@6) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 6) (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory@2@@6)) (and (= $abort_flag@0@@20 false) (= $abort_code@1@@20 $abort_code@0@@20))) (and (=> (= (ControlFlow 0 474639) 490887) anon33_Then_correct) (=> (= (ControlFlow 0 474639) 476795) anon33_Else_correct))))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon10_Else_correct  (=> (and (and (not |inline$$1_Roles_new_child_vasp_role$0$$temp_0'bool'@1|) (= $1_Roles_RoleId_$memory@1@@7 ($Memory_210578 (|Store__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) false) (|contents#$Memory_210578| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@6 $1_Roles_RoleId_$memory@1@@7) (= (ControlFlow 0 474613) 474639))) inline$$1_Roles_new_child_vasp_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon10_Then_correct  (=> (and (and |inline$$1_Roles_new_child_vasp_role$0$$temp_0'bool'@1| (= $1_Roles_RoleId_$memory@0@@7 ($Memory_210578 (|Store__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_Roles_new_child_vasp_role$0$$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@2@@6 $1_Roles_RoleId_$memory@0@@7) (= (ControlFlow 0 474653) 474639))) inline$$1_Roles_new_child_vasp_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon9_Else_correct  (=> (not inline$$1_Roles_new_child_vasp_role$0$$t9@0) (and (=> (= (ControlFlow 0 474599) 474653) inline$$1_Roles_new_child_vasp_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 474599) 474613) inline$$1_Roles_new_child_vasp_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon8_Else_correct  (=> (and (not inline$$1_Roles_new_child_vasp_role$0$$t5@0) (|$IsValid'u64'| 6)) (=> (and (and (= inline$$1_Roles_new_child_vasp_role$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= 6 0) (= inline$$1_Roles_new_child_vasp_role$0$$t8@0 173345816))) (and (=> (= 6 1) (= inline$$1_Roles_new_child_vasp_role$0$$t8@0 186537453)) (= inline$$1_Roles_new_child_vasp_role$0$$t9@0 (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))))) (and (=> (= (ControlFlow 0 474593) 474681) inline$$1_Roles_new_child_vasp_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 474593) 474599) inline$$1_Roles_new_child_vasp_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon0_correct  (=> (and (= inline$$1_Roles_new_child_vasp_role$0$$t2@0 (|$addr#$signer| _$t0@@27)) (= inline$$1_Roles_new_child_vasp_role$0$$t3@0 (|$addr#$signer| _$t0@@27))) (=> (and (and (= _$t0@@27 _$t0@@27) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_Roles_new_child_vasp_role$0$$t4@0 (|$addr#$signer| _$t0@@27)) (= inline$$1_Roles_new_child_vasp_role$0$$t5@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) 5)))))) (and (=> (= (ControlFlow 0 474527) 474739) inline$$1_Roles_new_child_vasp_role$0$anon8_Then_correct) (=> (= (ControlFlow 0 474527) 474593) inline$$1_Roles_new_child_vasp_role$0$anon8_Else_correct))))))
(let ((anon32_Else_correct  (=> (not false) (=> (and (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= $t13@@3 (|$addr#$signer| _$t0@@27))) (and (= $t14@@0 (|$addr#$signer| _$t0@@27)) (= (ControlFlow 0 474743) 474527))) inline$$1_Roles_new_child_vasp_role$0$anon0_correct))))
(let ((anon32_Then_correct true))
(let ((inline$$1_DiemAccount_create_signer$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 ($signer _$t1@@8)) (and (=> (= (ControlFlow 0 473997) 490901) anon32_Then_correct) (=> (= (ControlFlow 0 473997) 474743) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (not $t11@@1) (= (ControlFlow 0 474003) 473997)) inline$$1_DiemAccount_create_signer$0$anon0_correct)))
(let ((anon30_Else_correct  (=> (not $t8@@8) (=> (and (= $t10@@7 (|$addr#$signer| _$t0@@27)) (= $t11@@1  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) $t10@@7)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $t10@@7)) 5))))) (and (=> (= (ControlFlow 0 473959) 490953) anon31_Then_correct) (=> (= (ControlFlow 0 473959) 474003) anon31_Else_correct))))))
(let ((anon0$1_correct@@27  (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@801 Int) ) (!  (=> (|$IsValid'address'| addr@@801) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@801) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@801)) 0)) (= addr@@801 173345816)))
 :qid |Rolesbpl.24542:20|
 :skolemid |905|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@802 Int) ) (!  (=> (|$IsValid'address'| addr@@802) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@802) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@802)) 1)) (= addr@@802 186537453)))
 :qid |Rolesbpl.24550:20|
 :skolemid |906|
)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@803 Int) ) (!  (=> (|$IsValid'address'| addr@@803) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@803) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@803)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@803) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@803)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@803) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@803)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@803) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@803)) 2))))))
 :qid |Rolesbpl.24558:20|
 :skolemid |907|
))) (and (forall ((addr@@804 Int) ) (!  (=> (|$IsValid'address'| addr@@804) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@804) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@804)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@804) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@804)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@804) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@804)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@804) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@804)) 2))))))
 :qid |Rolesbpl.24562:20|
 :skolemid |908|
)) (forall ((addr@@805 Int) ) (!  (=> (|$IsValid'address'| addr@@805) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@805) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@805)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@805) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@805)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@805) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@805)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@805) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@805)) 2))))))
 :qid |Rolesbpl.24566:20|
 :skolemid |909|
))))) (=> (and (and (and (and (and (and (and (forall ((addr@@806 Int) ) (!  (=> (|$IsValid'address'| addr@@806) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@806) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@806)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@806) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@806)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@806) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@806)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@806) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@806)) 2))))))
 :qid |Rolesbpl.24570:20|
 :skolemid |910|
)) (forall ((addr@@807 Int) ) (!  (=> (|$IsValid'address'| addr@@807) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@807) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@807)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@807) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@807)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@807) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@807)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@807) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@807)) 2)))))
 :qid |Rolesbpl.24574:20|
 :skolemid |911|
))) (and (forall ((addr@@808 Int) ) (!  (=> (|$IsValid'address'| addr@@808) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@808) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@808)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@808) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@808)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@808) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@808)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@808) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@808)) 2)))))
 :qid |Rolesbpl.24578:20|
 :skolemid |912|
)) (forall ((addr@@809 Int) ) (!  (=> (|$IsValid'address'| addr@@809) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@809) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@809)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@809) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@809)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@809) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@809)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@809) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@809)) 2)))))
 :qid |Rolesbpl.24582:20|
 :skolemid |913|
)))) (and (and (forall ((addr@@810 Int) ) (!  (=> (|$IsValid'address'| addr@@810) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215002| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@810) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@810) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@810)) 4))))
 :qid |Rolesbpl.24586:20|
 :skolemid |914|
)) (forall ((addr@@811 Int) ) (!  (=> (|$IsValid'address'| addr@@811) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215102| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@811) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@811) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@811)) 3))))
 :qid |Rolesbpl.24590:20|
 :skolemid |915|
))) (and (forall ((addr@@812 Int) ) (!  (=> (|$IsValid'address'| addr@@812) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215102| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@812) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@812) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@812)) 3))))
 :qid |Rolesbpl.24594:20|
 :skolemid |916|
)) (forall ((addr@@813 Int) ) (!  (=> (|$IsValid'address'| addr@@813) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_215102| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@813) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_215102| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@813)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@813) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@813)) 3))))
 :qid |Rolesbpl.24598:20|
 :skolemid |917|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_210765| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_210765| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_210858| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210944| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211017| $1_DiemSystem_CapabilityHolder_$memory) 173345816))))) (and (and (let (($range_0@@4 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@814 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_210944| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@814))))))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@4) (let ((i1@@4 $i_1@@4))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@815 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_210944| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@815)))) i1@@4))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@815 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_210944| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@815)))) i1@@4)))) 3))))
 :qid |Rolesbpl.24618:151|
 :skolemid |918|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211088| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (forall ((mint_cap_owner1 Int) (mint_cap_owner2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1) (=> (|$IsValid'address'| mint_cap_owner2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_277006| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1) (|Select__T@[Int]Bool_| (|domain#$Memory_277006| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2)) (= mint_cap_owner1 mint_cap_owner2))))
 :qid |Rolesbpl.24627:104|
 :skolemid |919|
))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@0 Int) (mint_cap_owner2@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@0) (=> (|$IsValid'address'| mint_cap_owner2@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_277070| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_277070| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner2@@0)) (= mint_cap_owner1@@0 mint_cap_owner2@@0))))
 :qid |Rolesbpl.24631:104|
 :skolemid |920|
))))))) (and (and (and (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@1 Int) (mint_cap_owner2@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@1) (=> (|$IsValid'address'| mint_cap_owner2@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_277134| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_277134| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2@@1)) (= mint_cap_owner1@@1 mint_cap_owner2@@1))))
 :qid |Rolesbpl.24635:88|
 :skolemid |921|
))) (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_277006| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |Rolesbpl.24639:20|
 :skolemid |922|
))) (and (forall ((addr3@@0 Int) ) (!  (=> (|$IsValid'address'| addr3@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_277070| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr3@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))))
 :qid |Rolesbpl.24643:20|
 :skolemid |923|
)) (forall ((addr3@@1 Int) ) (!  (=> (|$IsValid'address'| addr3@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_277134| |$1_Diem_MintCapability'#0'_$memory|) addr3@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))
 :qid |Rolesbpl.24647:20|
 :skolemid |924|
)))) (and (and (forall ((addr@@816 Int) ) (!  (=> (|$IsValid'address'| addr@@816) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_282394| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@816) (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Rolesbpl.24651:20|
 :skolemid |925|
)) (forall ((addr@@817 Int) ) (!  (=> (|$IsValid'address'| addr@@817) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_282485| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@817) (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Rolesbpl.24655:20|
 :skolemid |926|
))) (and (forall ((addr@@818 Int) ) (!  (=> (|$IsValid'address'| addr@@818) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_282576| |$1_Diem_Preburn'#0'_$memory|) addr@@818) (|Select__T@[Int]Bool_| (|domain#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Rolesbpl.24659:20|
 :skolemid |927|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211256| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211327| $1_XDX_Reserve_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211495| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_223485| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |Rolesbpl.24683:20|
 :skolemid |928|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211566| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211663| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@28 Int) ) (!  (=> (|$IsValid'address'| addr1@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215368| $1_DualAttestation_Credential_$memory) addr1@@28) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr1@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr1@@28)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr1@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr1@@28)) 2)))))
 :qid |Rolesbpl.24695:20|
 :skolemid |929|
))))))) (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211747| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211831| $1_ChainId_ChainId_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211902| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) 173345816))))))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_211902| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (and (forall ((addr@@819 Int) ) (!  (=> (|$IsValid'address'| addr@@819) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@819) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@819)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@819)))) 0)) (= addr@@819 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@819))) 0)))))))
 :qid |Rolesbpl.24723:20|
 :skolemid |930|
)) (forall ((addr@@820 Int) ) (!  (=> (|$IsValid'address'| addr@@820) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@820) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@820) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@820)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@820)))) 0)) (= addr@@820 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@820))) 0)))))))
 :qid |Rolesbpl.24727:20|
 :skolemid |931|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_212216| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (and (forall ((addr@@821 Int) ) (!  (=> (|$IsValid'address'| addr@@821) (= (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@821) (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@821)))
 :qid |Rolesbpl.24739:20|
 :skolemid |932|
)) (forall ((addr@@822 Int) ) (!  (=> (|$IsValid'address'| addr@@822) (= (|Select__T@[Int]Bool_| (|domain#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@822)  (and (= addr@@822 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@822))))
 :qid |Rolesbpl.24743:20|
 :skolemid |933|
)))) (and (and (forall ((addr@@823 Int) ) (!  (=> (|$IsValid'address'| addr@@823) (= (|Select__T@[Int]Bool_| (|domain#$Memory_212216| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@823)  (and (= addr@@823 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@823))))
 :qid |Rolesbpl.24747:20|
 :skolemid |934|
)) (forall ((addr@@824 Int) ) (!  (=> (|$IsValid'address'| addr@@824) (= (|Select__T@[Int]Bool_| (|domain#$Memory_222911| $1_VASPDomain_VASPDomainManager_$memory) addr@@824)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@824) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@824)) 1))))
 :qid |Rolesbpl.24751:20|
 :skolemid |935|
))) (and (forall ((addr@@825 Int) ) (!  (=> (|$IsValid'address'| addr@@825) (= (|Select__T@[Int]Bool_| (|domain#$Memory_222996| $1_VASPDomain_VASPDomains_$memory) addr@@825)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@825) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@825)) 5))))
 :qid |Rolesbpl.24755:20|
 :skolemid |936|
)) (forall ((addr@@826 Int) ) (!  (=> (|$IsValid'address'| addr@@826) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@826) (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@826)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@826) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@826)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@826) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@826)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@826) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@826)) 2)))))
 :qid |Rolesbpl.24759:20|
 :skolemid |937|
)))))) (and (and (and (and (forall ((addr@@827 Int) ) (!  (=> (|$IsValid'address'| addr@@827) (= (|Select__T@[Int]Bool_| (|domain#$Memory_223130| $1_DesignatedDealer_Dealer_$memory) addr@@827)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@827) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@827)) 2))))
 :qid |Rolesbpl.24763:20|
 :skolemid |938|
)) (forall ((addr@@828 Int) ) (!  (=> (|$IsValid'address'| addr@@828) (= (|Select__T@[Int]Bool_| (|domain#$Memory_215368| $1_DualAttestation_Credential_$memory) addr@@828)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@828) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@828)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@828) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@828)) 5)))))
 :qid |Rolesbpl.24767:20|
 :skolemid |939|
))) (and (forall ((addr@@829 Int) ) (!  (=> (|$IsValid'address'| addr@@829) (= (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@829) (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) addr@@829)))
 :qid |Rolesbpl.24771:20|
 :skolemid |940|
)) (forall ((addr@@830 Int) ) (!  (=> (|$IsValid'address'| addr@@830) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@830) (|Select__T@[Int]Bool_| (|domain#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) addr@@830)))
 :qid |Rolesbpl.24775:20|
 :skolemid |941|
)))) (and (and (forall ((addr@@831 Int) ) (!  (=> (|$IsValid'address'| addr@@831) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@831) (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@831)))
 :qid |Rolesbpl.24779:20|
 :skolemid |942|
)) (forall ((addr@@832 Int) ) (!  (=> (|$IsValid'address'| addr@@832) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@832) (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@832)))
 :qid |Rolesbpl.24783:20|
 :skolemid |943|
))) (and (forall ((addr@@833 Int) ) (!  (=> (|$IsValid'address'| addr@@833) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) addr@@833) (|Select__T@[Int]Bool_| (|domain#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) addr@@833)))
 :qid |Rolesbpl.24787:20|
 :skolemid |944|
)) (forall ((addr@@834 Int) ) (!  (=> (|$IsValid'address'| addr@@834) (= (|Select__T@[Int]Bool_| (|domain#$Memory_210765| $1_SlidingNonce_SlidingNonce_$memory) addr@@834)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@834) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@834)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@834) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@834)) 1)))))
 :qid |Rolesbpl.24791:20|
 :skolemid |945|
))))) (and (and (and (forall ((addr@@835 Int) ) (!  (=> (|$IsValid'address'| addr@@835) (= (|Select__T@[Int]Bool_| (|domain#$Memory_215102| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@835)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@835) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@835)) 3))))
 :qid |Rolesbpl.24795:20|
 :skolemid |946|
)) (forall ((addr@@836 Int) ) (!  (=> (|$IsValid'address'| addr@@836) (= (|Select__T@[Int]Bool_| (|domain#$Memory_215002| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@836)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@836) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@836)) 4))))
 :qid |Rolesbpl.24799:20|
 :skolemid |947|
))) (and (forall ((addr@@837 Int) ) (!  (=> (|$IsValid'address'| addr@@837) (= (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) addr@@837)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@837) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@837)) 5))))
 :qid |Rolesbpl.24803:20|
 :skolemid |948|
)) (forall ((addr@@838 Int) ) (!  (=> (|$IsValid'address'| addr@@838) (= (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) addr@@838)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_210578| $1_Roles_RoleId_$memory) addr@@838) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) addr@@838)) 6))))
 :qid |Rolesbpl.24807:20|
 :skolemid |949|
)))) (and (and (forall ((addr@@839 Int) ) (!  (=> (|$IsValid'address'| addr@@839) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_309883| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@839) (or (|Select__T@[Int]Bool_| (|domain#$Memory_223385| $1_VASP_ParentVASP_$memory) addr@@839) (|Select__T@[Int]Bool_| (|domain#$Memory_223485| $1_VASP_ChildVASP_$memory) addr@@839))))
 :qid |Rolesbpl.24811:20|
 :skolemid |950|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_212287| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_212371| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_210452| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)))))))) (and (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@27)) ($1_Signer_is_txn_signer _$t0@@27)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@27))) (|$IsValid'address'| _$t1@@8)) (and (|$IsValid'vec'u8''| _$t2@@0) (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@29)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@29))
 :qid |Rolesbpl.24851:20|
 :skolemid |951|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@29))
)))) (and (and (forall (($a_0@@30 Int) ) (! (let (($rsc@@30 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $a_0@@30)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@30))
 :qid |Rolesbpl.24855:20|
 :skolemid |952|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_210578| $1_Roles_RoleId_$memory) $a_0@@30))
)) (forall (($a_0@@31 Int) ) (! (let (($rsc@@31 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@31)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@31) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@31)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@31) 10000000000))))
 :qid |Rolesbpl.24859:20|
 :skolemid |953|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_211172| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@31))
))) (and (forall (($a_0@@32 Int) ) (! (let (($rsc@@32 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@32)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@32) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@32)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@32) 10000000000))))
 :qid |Rolesbpl.24863:20|
 :skolemid |954|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_211411| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@32))
)) (forall (($a_0@@33 Int) ) (! (let (($rsc@@33 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@33)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@33) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@33)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@33) 10000000000))))
 :qid |Rolesbpl.24867:20|
 :skolemid |955|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_276705| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@33))
))))) (and (and (and (and (forall (($a_0@@34 Int) ) (! (let (($rsc@@34 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_223485| $1_VASP_ChildVASP_$memory) $a_0@@34)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@34))
 :qid |Rolesbpl.24871:20|
 :skolemid |956|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_223485| $1_VASP_ChildVASP_$memory) $a_0@@34))
)) (forall (($a_0@@35 Int) ) (! (let (($rsc@@35 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) $a_0@@35)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@35))
 :qid |Rolesbpl.24875:20|
 :skolemid |957|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_223385| $1_VASP_ParentVASP_$memory) $a_0@@35))
))) (and (forall (($a_0@@36 Int) ) (! (let (($rsc@@36 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) $a_0@@36)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@36))
 :qid |Rolesbpl.24879:20|
 :skolemid |958|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_211973| $1_AccountFreezing_FreezingBit_$memory) $a_0@@36))
)) (forall (($a_0@@37 Int) ) (! (let (($rsc@@37 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) $a_0@@37)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@37) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@37))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@37))) 1))))
 :qid |Rolesbpl.24883:20|
 :skolemid |959|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_222811| $1_DiemAccount_DiemAccount_$memory) $a_0@@37))
)))) (and (and (forall (($a_0@@38 Int) ) (! (let (($rsc@@38 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@38)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@38))
 :qid |Rolesbpl.24887:20|
 :skolemid |960|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_212145| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@38))
)) (forall (($a_0@@39 Int) ) (! (let (($rsc@@39 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@39)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@39))
 :qid |Rolesbpl.24891:20|
 :skolemid |961|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_215483| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@39))
))) (and (forall (($a_0@@40 Int) ) (! (let (($rsc@@40 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@40)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@40))
 :qid |Rolesbpl.24895:20|
 :skolemid |962|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_215543| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@40))
)) (forall (($a_0@@41 Int) ) (! (let (($rsc@@41 (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@41)))
(|$IsValid'$1_DiemAccount_Balance'#0''| $rsc@@41))
 :qid |Rolesbpl.24899:20|
 :skolemid |963|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_304044| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@41))
))))) (and (and (and (= $t5@@8 (|$addr#$signer| _$t0@@27)) (= $t6@@14 (|$addr#$signer| _$t0@@27))) (and (= $t7@@8 (|$addr#$signer| _$t0@@27)) (= _$t0@@27 _$t0@@27))) (and (and (= _$t1@@8 _$t1@@8) (= _$t2@@0 _$t2@@0)) (and (= _$t3 _$t3) (= $t8@@8  (not (|Select__T@[Int]Bool_| (|domain#$Memory_209900| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))) (and (=> (= (ControlFlow 0 473913) 490979) anon30_Then_correct) (=> (= (ControlFlow 0 473913) 473959) anon30_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@27  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@32 T@$1_Event_EventHandle) ) (! (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_172573_| (|streams#$EventStore| $es) handle@@32)))
 (and (= (|l#Multiset_172573| stream@@32) 0) (forall ((v@@78 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_172573| stream@@32) v@@78) 0)
 :qid |Rolesbpl.134:13|
 :skolemid |2|
))))
 :qid |Rolesbpl.3272:13|
 :skolemid |89|
))) (= (ControlFlow 0 471893) 473913)) anon0$1_correct@@27)))
(let ((anon0_correct@@27  (=> (= (ControlFlow 0 774719) 471893) inline$$InitEventStore$0$anon0_correct@@27)))
anon0_correct@@27))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
