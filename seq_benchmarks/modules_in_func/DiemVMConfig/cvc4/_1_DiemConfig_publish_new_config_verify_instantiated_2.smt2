(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_206420 0)) ((($Memory_206420 (|domain#$Memory_206420| |T@[Int]Bool|) (|contents#$Memory_206420| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_215612 0)) ((($Memory_215612 (|domain#$Memory_215612| |T@[Int]Bool|) (|contents#$Memory_215612| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_215541 0)) ((($Memory_215541 (|domain#$Memory_215541| |T@[Int]Bool|) (|contents#$Memory_215541| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_215298 0)) ((($Memory_215298 (|domain#$Memory_215298| |T@[Int]Bool|) (|contents#$Memory_215298| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_215227 0)) ((($Memory_215227 (|domain#$Memory_215227| |T@[Int]Bool|) (|contents#$Memory_215227| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_215156 0)) ((($Memory_215156 (|domain#$Memory_215156| |T@[Int]Bool|) (|contents#$Memory_215156| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_300425 0)) ((($Memory_300425 (|domain#$Memory_300425| |T@[Int]Bool|) (|contents#$Memory_300425| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_214988 0)) ((($Memory_214988 (|domain#$Memory_214988| |T@[Int]Bool|) (|contents#$Memory_214988| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_240769 0)) ((($Memory_240769 (|domain#$Memory_240769| |T@[Int]Bool|) (|contents#$Memory_240769| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_293719 0)) ((($Memory_293719 (|domain#$Memory_293719| |T@[Int]Bool|) (|contents#$Memory_293719| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_293655 0)) ((($Memory_293655 (|domain#$Memory_293655| |T@[Int]Bool|) (|contents#$Memory_293655| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_292298 0)) ((($Memory_292298 (|domain#$Memory_292298| |T@[Int]Bool|) (|contents#$Memory_292298| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_292234 0)) ((($Memory_292234 (|domain#$Memory_292234| |T@[Int]Bool|) (|contents#$Memory_292234| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_288740 0)) ((($Memory_288740 (|domain#$Memory_288740| |T@[Int]Bool|) (|contents#$Memory_288740| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_288453 0)) ((($Memory_288453 (|domain#$Memory_288453| |T@[Int]Bool|) (|contents#$Memory_288453| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_214820 0)) ((($Memory_214820 (|domain#$Memory_214820| |T@[Int]Bool|) (|contents#$Memory_214820| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_214581 0)) ((($Memory_214581 (|domain#$Memory_214581| |T@[Int]Bool|) (|contents#$Memory_214581| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_215470 0)) ((($Memory_215470 (|domain#$Memory_215470| |T@[Int]Bool|) (|contents#$Memory_215470| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_275303 0)) ((($Memory_275303 (|domain#$Memory_275303| |T@[Int]Bool|) (|contents#$Memory_275303| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_275239 0)) ((($Memory_275239 (|domain#$Memory_275239| |T@[Int]Bool|) (|contents#$Memory_275239| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_275175 0)) ((($Memory_275175 (|domain#$Memory_275175| |T@[Int]Bool|) (|contents#$Memory_275175| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_275670 0)) ((($Memory_275670 (|domain#$Memory_275670| |T@[Int]Bool|) (|contents#$Memory_275670| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_275583 0)) ((($Memory_275583 (|domain#$Memory_275583| |T@[Int]Bool|) (|contents#$Memory_275583| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_302532 0)) ((($Memory_302532 (|domain#$Memory_302532| |T@[Int]Bool|) (|contents#$Memory_302532| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_280745 0)) ((($Memory_280745 (|domain#$Memory_280745| |T@[Int]Bool|) (|contents#$Memory_280745| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_281170 0)) ((($Memory_281170 (|domain#$Memory_281170| |T@[Int]Bool|) (|contents#$Memory_281170| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_240944 0)) ((($Memory_240944 (|domain#$Memory_240944| |T@[Int]Bool|) (|contents#$Memory_240944| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_280654 0)) ((($Memory_280654 (|domain#$Memory_280654| |T@[Int]Bool|) (|contents#$Memory_280654| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_214652 0)) ((($Memory_214652 (|domain#$Memory_214652| |T@[Int]Bool|) (|contents#$Memory_214652| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_281071 0)) ((($Memory_281071 (|domain#$Memory_281071| |T@[Int]Bool|) (|contents#$Memory_281071| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_240884 0)) ((($Memory_240884 (|domain#$Memory_240884| |T@[Int]Bool|) (|contents#$Memory_240884| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_280563 0)) ((($Memory_280563 (|domain#$Memory_280563| |T@[Int]Bool|) (|contents#$Memory_280563| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_214891 0)) ((($Memory_214891 (|domain#$Memory_214891| |T@[Int]Bool|) (|contents#$Memory_214891| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_280972 0)) ((($Memory_280972 (|domain#$Memory_280972| |T@[Int]Bool|) (|contents#$Memory_280972| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_274874 0)) ((($Memory_274874 (|domain#$Memory_274874| |T@[Int]Bool|) (|contents#$Memory_274874| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_214736 0)) ((($Memory_214736 (|domain#$Memory_214736| |T@[Int]Bool|) (|contents#$Memory_214736| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_214497 0)) ((($Memory_214497 (|domain#$Memory_214497| |T@[Int]Bool|) (|contents#$Memory_214497| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_226845 0)) ((($Memory_226845 (|domain#$Memory_226845| |T@[Int]Bool|) (|contents#$Memory_226845| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_226758 0)) ((($Memory_226758 (|domain#$Memory_226758| |T@[Int]Bool|) (|contents#$Memory_226758| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_226671 0)) ((($Memory_226671 (|domain#$Memory_226671| |T@[Int]Bool|) (|contents#$Memory_226671| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_226584 0)) ((($Memory_226584 (|domain#$Memory_226584| |T@[Int]Bool|) (|contents#$Memory_226584| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_226497 0)) ((($Memory_226497 (|domain#$Memory_226497| |T@[Int]Bool|) (|contents#$Memory_226497| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_226410 0)) ((($Memory_226410 (|domain#$Memory_226410| |T@[Int]Bool|) (|contents#$Memory_226410| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_226323 0)) ((($Memory_226323 (|domain#$Memory_226323| |T@[Int]Bool|) (|contents#$Memory_226323| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_214342 0)) ((($Memory_214342 (|domain#$Memory_214342| |T@[Int]Bool|) (|contents#$Memory_214342| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_225424 0)) ((($Memory_225424 (|domain#$Memory_225424| |T@[Int]Bool|) (|contents#$Memory_225424| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_214183 0)) ((($Memory_214183 (|domain#$Memory_214183| |T@[Int]Bool|) (|contents#$Memory_214183| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_225343 0)) ((($Memory_225343 (|domain#$Memory_225343| |T@[Int]Bool|) (|contents#$Memory_225343| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_213777 0)) ((($Memory_213777 (|domain#$Memory_213777| |T@[Int]Bool|) (|contents#$Memory_213777| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_215696 0)) ((($Memory_215696 (|domain#$Memory_215696| |T@[Int]Bool|) (|contents#$Memory_215696| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_225210 0)) ((($Memory_225210 (|domain#$Memory_225210| |T@[Int]Bool|) (|contents#$Memory_225210| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_215072 0)) ((($Memory_215072 (|domain#$Memory_215072| |T@[Int]Bool|) (|contents#$Memory_215072| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_214413 0)) ((($Memory_214413 (|domain#$Memory_214413| |T@[Int]Bool|) (|contents#$Memory_214413| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_214090 0)) ((($Memory_214090 (|domain#$Memory_214090| |T@[Int]Bool|) (|contents#$Memory_214090| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_308391 0)) ((($Memory_308391 (|domain#$Memory_308391| |T@[Int]Bool|) (|contents#$Memory_308391| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_301439 0)) ((($Memory_301439 (|domain#$Memory_301439| |T@[Int]Bool|) (|contents#$Memory_301439| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_214269 0)) ((($Memory_214269 (|domain#$Memory_214269| |T@[Int]Bool|) (|contents#$Memory_214269| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_223652 0)) ((($Memory_223652 (|domain#$Memory_223652| |T@[Int]Bool|) (|contents#$Memory_223652| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_222186 0)) ((($Memory_222186 (|domain#$Memory_222186| |T@[Int]Bool|) (|contents#$Memory_222186| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_213903 0)) ((($Memory_213903 (|domain#$Memory_213903| |T@[Int]Bool|) (|contents#$Memory_213903| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_213225 0)) ((($Memory_213225 (|domain#$Memory_213225| |T@[Int]Bool|) (|contents#$Memory_213225| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_175890 0)) (((Multiset_175890 (|v#Multiset_175890| |T@[$EventRep]Int|) (|l#Multiset_175890| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_175890| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_175890|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_416891 0)) ((($Mutation_416891 (|l#$Mutation_416891| T@$Location) (|p#$Mutation_416891| (Seq Int)) (|v#$Mutation_416891| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((T@$Mutation_416845 0)) ((($Mutation_416845 (|l#$Mutation_416845| T@$Location) (|p#$Mutation_416845| (Seq Int)) (|v#$Mutation_416845| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$Mutation_406120 0)) ((($Mutation_406120 (|l#$Mutation_406120| T@$Location) (|p#$Mutation_406120| (Seq Int)) (|v#$Mutation_406120| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_406076 0)) ((($Mutation_406076 (|l#$Mutation_406076| T@$Location) (|p#$Mutation_406076| (Seq Int)) (|v#$Mutation_406076| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_294038 0)) ((($Mutation_294038 (|l#$Mutation_294038| T@$Location) (|p#$Mutation_294038| (Seq Int)) (|v#$Mutation_294038| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_69596 0)) ((($Mutation_69596 (|l#$Mutation_69596| T@$Location) (|p#$Mutation_69596| (Seq Int)) (|v#$Mutation_69596| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_286616 0)) ((($Mutation_286616 (|l#$Mutation_286616| T@$Location) (|p#$Mutation_286616| (Seq Int)) (|v#$Mutation_286616| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_273602 0)) ((($Mutation_273602 (|l#$Mutation_273602| T@$Location) (|p#$Mutation_273602| (Seq Int)) (|v#$Mutation_273602| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_237596 0)) ((($Mutation_237596 (|l#$Mutation_237596| T@$Location) (|p#$Mutation_237596| (Seq Int)) (|v#$Mutation_237596| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-datatypes ((T@$Mutation_237551 0)) ((($Mutation_237551 (|l#$Mutation_237551| T@$Location) (|p#$Mutation_237551| (Seq Int)) (|v#$Mutation_237551| |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$Mutation_234946 0)) ((($Mutation_234946 (|l#$Mutation_234946| T@$Location) (|p#$Mutation_234946| (Seq Int)) (|v#$Mutation_234946| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_234901 0)) ((($Mutation_234901 (|l#$Mutation_234901| T@$Location) (|p#$Mutation_234901| (Seq Int)) (|v#$Mutation_234901| |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_232296 0)) ((($Mutation_232296 (|l#$Mutation_232296| T@$Location) (|p#$Mutation_232296| (Seq Int)) (|v#$Mutation_232296| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-datatypes ((T@$Mutation_232251 0)) ((($Mutation_232251 (|l#$Mutation_232251| T@$Location) (|p#$Mutation_232251| (Seq Int)) (|v#$Mutation_232251| |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_229646 0)) ((($Mutation_229646 (|l#$Mutation_229646| T@$Location) (|p#$Mutation_229646| (Seq Int)) (|v#$Mutation_229646| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_229601 0)) ((($Mutation_229601 (|l#$Mutation_229601| T@$Location) (|p#$Mutation_229601| (Seq Int)) (|v#$Mutation_229601| |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$Mutation_226924 0)) ((($Mutation_226924 (|l#$Mutation_226924| T@$Location) (|p#$Mutation_226924| (Seq Int)) (|v#$Mutation_226924| |T@$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_213720 0)) ((($Mutation_213720 (|l#$Mutation_213720| T@$Location) (|p#$Mutation_213720| (Seq Int)) (|v#$Mutation_213720| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_207051 0)) ((($Mutation_207051 (|l#$Mutation_207051| T@$Location) (|p#$Mutation_207051| (Seq Int)) (|v#$Mutation_207051| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_16758 0)) ((($Mutation_16758 (|l#$Mutation_16758| T@$Location) (|p#$Mutation_16758| (Seq Int)) (|v#$Mutation_16758| Int) ) ) ))
(declare-datatypes ((T@$Mutation_202427 0)) ((($Mutation_202427 (|l#$Mutation_202427| T@$Location) (|p#$Mutation_202427| (Seq Int)) (|v#$Mutation_202427| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_201681 0)) ((($Mutation_201681 (|l#$Mutation_201681| T@$Location) (|p#$Mutation_201681| (Seq Int)) (|v#$Mutation_201681| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_200277 0)) ((($Mutation_200277 (|l#$Mutation_200277| T@$Location) (|p#$Mutation_200277| (Seq Int)) (|v#$Mutation_200277| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_199531 0)) ((($Mutation_199531 (|l#$Mutation_199531| T@$Location) (|p#$Mutation_199531| (Seq Int)) (|v#$Mutation_199531| (Seq T@$1_XUS_XUS)) ) ) ))
(declare-datatypes ((T@$Mutation_198127 0)) ((($Mutation_198127 (|l#$Mutation_198127| T@$Location) (|p#$Mutation_198127| (Seq Int)) (|v#$Mutation_198127| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_197381 0)) ((($Mutation_197381 (|l#$Mutation_197381| T@$Location) (|p#$Mutation_197381| (Seq Int)) (|v#$Mutation_197381| (Seq T@$1_XDX_XDX)) ) ) ))
(declare-datatypes ((T@$Mutation_195977 0)) ((($Mutation_195977 (|l#$Mutation_195977| T@$Location) (|p#$Mutation_195977| (Seq Int)) (|v#$Mutation_195977| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_195231 0)) ((($Mutation_195231 (|l#$Mutation_195231| T@$Location) (|p#$Mutation_195231| (Seq Int)) (|v#$Mutation_195231| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_193827 0)) ((($Mutation_193827 (|l#$Mutation_193827| T@$Location) (|p#$Mutation_193827| (Seq Int)) (|v#$Mutation_193827| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_193081 0)) ((($Mutation_193081 (|l#$Mutation_193081| T@$Location) (|p#$Mutation_193081| (Seq Int)) (|v#$Mutation_193081| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_191677 0)) ((($Mutation_191677 (|l#$Mutation_191677| T@$Location) (|p#$Mutation_191677| (Seq Int)) (|v#$Mutation_191677| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_190931 0)) ((($Mutation_190931 (|l#$Mutation_190931| T@$Location) (|p#$Mutation_190931| (Seq Int)) (|v#$Mutation_190931| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_189527 0)) ((($Mutation_189527 (|l#$Mutation_189527| T@$Location) (|p#$Mutation_189527| (Seq Int)) (|v#$Mutation_189527| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_188781 0)) ((($Mutation_188781 (|l#$Mutation_188781| T@$Location) (|p#$Mutation_188781| (Seq Int)) (|v#$Mutation_188781| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_187377 0)) ((($Mutation_187377 (|l#$Mutation_187377| T@$Location) (|p#$Mutation_187377| (Seq Int)) (|v#$Mutation_187377| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_186631 0)) ((($Mutation_186631 (|l#$Mutation_186631| T@$Location) (|p#$Mutation_186631| (Seq Int)) (|v#$Mutation_186631| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_185227 0)) ((($Mutation_185227 (|l#$Mutation_185227| T@$Location) (|p#$Mutation_185227| (Seq Int)) (|v#$Mutation_185227| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_184481 0)) ((($Mutation_184481 (|l#$Mutation_184481| T@$Location) (|p#$Mutation_184481| (Seq Int)) (|v#$Mutation_184481| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_183077 0)) ((($Mutation_183077 (|l#$Mutation_183077| T@$Location) (|p#$Mutation_183077| (Seq Int)) (|v#$Mutation_183077| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_182331 0)) ((($Mutation_182331 (|l#$Mutation_182331| T@$Location) (|p#$Mutation_182331| (Seq Int)) (|v#$Mutation_182331| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_180927 0)) ((($Mutation_180927 (|l#$Mutation_180927| T@$Location) (|p#$Mutation_180927| (Seq Int)) (|v#$Mutation_180927| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_180181 0)) ((($Mutation_180181 (|l#$Mutation_180181| T@$Location) (|p#$Mutation_180181| (Seq Int)) (|v#$Mutation_180181| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_178739 0)) ((($Mutation_178739 (|l#$Mutation_178739| T@$Location) (|p#$Mutation_178739| (Seq Int)) (|v#$Mutation_178739| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_177993 0)) ((($Mutation_177993 (|l#$Mutation_177993| T@$Location) (|p#$Mutation_177993| (Seq Int)) (|v#$Mutation_177993| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_175890_| (|T@[$1_Event_EventHandle]Multiset_175890| T@$1_Event_EventHandle) T@Multiset_175890)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'#0''| (|T@$1_DiemConfig_DiemConfig'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| (|T@$1_DiemConfig_ModifyConfigCapability'#0'|) Bool)
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
(declare-fun ReverseVec_159865 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_158486 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_158683 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_158880 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_160456 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_159471 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_159274 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_159077 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_159668 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_158289 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun ReverseVec_160062 ((Seq T@$1_XDX_XDX)) (Seq T@$1_XDX_XDX))
(declare-fun ReverseVec_160259 ((Seq T@$1_XUS_XUS)) (Seq T@$1_XUS_XUS))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_175890| |T@[$1_Event_EventHandle]Multiset_175890|) |T@[$1_Event_EventHandle]Multiset_175890|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemVMConfigbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemVMConfigbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemVMConfigbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemVMConfigbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemVMConfigbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemVMConfigbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemVMConfigbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemVMConfigbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemVMConfigbpl.595:13|
 :skolemid |15|
))))
 :qid |DiemVMConfigbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemVMConfigbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemVMConfigbpl.608:17|
 :skolemid |18|
)))))
 :qid |DiemVMConfigbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemVMConfigbpl.775:13|
 :skolemid |20|
))))
 :qid |DiemVMConfigbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemVMConfigbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemVMConfigbpl.788:17|
 :skolemid |23|
)))))
 :qid |DiemVMConfigbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemVMConfigbpl.955:13|
 :skolemid |25|
))))
 :qid |DiemVMConfigbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemVMConfigbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemVMConfigbpl.968:17|
 :skolemid |28|
)))))
 :qid |DiemVMConfigbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemVMConfigbpl.1135:13|
 :skolemid |30|
))))
 :qid |DiemVMConfigbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemVMConfigbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemVMConfigbpl.1148:17|
 :skolemid |33|
)))))
 :qid |DiemVMConfigbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |DiemVMConfigbpl.1315:13|
 :skolemid |35|
))))
 :qid |DiemVMConfigbpl.1313:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemVMConfigbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemVMConfigbpl.1328:17|
 :skolemid |38|
)))))
 :qid |DiemVMConfigbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |DiemVMConfigbpl.1495:13|
 :skolemid |40|
))))
 :qid |DiemVMConfigbpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemVMConfigbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemVMConfigbpl.1508:17|
 :skolemid |43|
)))))
 :qid |DiemVMConfigbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |DiemVMConfigbpl.1675:13|
 :skolemid |45|
))))
 :qid |DiemVMConfigbpl.1673:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemVMConfigbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemVMConfigbpl.1688:17|
 :skolemid |48|
)))))
 :qid |DiemVMConfigbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |DiemVMConfigbpl.1855:13|
 :skolemid |50|
))))
 :qid |DiemVMConfigbpl.1853:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemVMConfigbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemVMConfigbpl.1868:17|
 :skolemid |53|
)))))
 :qid |DiemVMConfigbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |DiemVMConfigbpl.2035:13|
 :skolemid |55|
))))
 :qid |DiemVMConfigbpl.2033:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemVMConfigbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemVMConfigbpl.2048:17|
 :skolemid |58|
)))))
 :qid |DiemVMConfigbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq T@$1_XDX_XDX)) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'$1_XDX_XDX'| (seq.nth v@@22 i@@27)))
 :qid |DiemVMConfigbpl.2215:13|
 :skolemid |60|
))))
 :qid |DiemVMConfigbpl.2213:36|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_XDX_XDX)) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@28 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemVMConfigbpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemVMConfigbpl.2228:17|
 :skolemid |63|
)))))
 :qid |DiemVMConfigbpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq T@$1_XUS_XUS)) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'$1_XUS_XUS'| (seq.nth v@@24 i@@30)))
 :qid |DiemVMConfigbpl.2395:13|
 :skolemid |65|
))))
 :qid |DiemVMConfigbpl.2393:36|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_XUS_XUS)) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@31 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DiemVMConfigbpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DiemVMConfigbpl.2408:17|
 :skolemid |68|
)))))
 :qid |DiemVMConfigbpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'vec'u8''| (seq.nth v@@26 i@@33)))
 :qid |DiemVMConfigbpl.2575:13|
 :skolemid |70|
))))
 :qid |DiemVMConfigbpl.2573:33|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 (Seq (Seq Int))) (e@@10 (Seq Int)) ) (! (let ((i@@34 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |DiemVMConfigbpl.2580:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |DiemVMConfigbpl.2588:17|
 :skolemid |73|
)))))
 :qid |DiemVMConfigbpl.2584:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v@@28 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len v@@28))) (|$IsValid'address'| (seq.nth v@@28 i@@36)))
 :qid |DiemVMConfigbpl.2755:13|
 :skolemid |75|
))))
 :qid |DiemVMConfigbpl.2753:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 (Seq Int)) (e@@11 Int) ) (! (let ((i@@37 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len v@@29)))) (= (seq.nth v@@29 i@@38) e@@11))
 :qid |DiemVMConfigbpl.2760:13|
 :skolemid |77|
))) (= i@@37 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len v@@29)))) (= (seq.nth v@@29 i@@37) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@37)) (not (= (seq.nth v@@29 j@@11) e@@11)))
 :qid |DiemVMConfigbpl.2768:17|
 :skolemid |78|
)))))
 :qid |DiemVMConfigbpl.2764:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v@@30 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (seq.len v@@30)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len v@@30))) (|$IsValid'u8'| (seq.nth v@@30 i@@39)))
 :qid |DiemVMConfigbpl.2935:13|
 :skolemid |80|
))))
 :qid |DiemVMConfigbpl.2933:28|
 :skolemid |81|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 (Seq Int)) (e@@12 Int) ) (! (let ((i@@40 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len v@@31)))) (= (seq.nth v@@31 i@@41) e@@12))
 :qid |DiemVMConfigbpl.2940:13|
 :skolemid |82|
))) (= i@@40 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len v@@31)))) (= (seq.nth v@@31 i@@40) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@40)) (not (= (seq.nth v@@31 j@@12) e@@12)))
 :qid |DiemVMConfigbpl.2948:17|
 :skolemid |83|
)))))
 :qid |DiemVMConfigbpl.2944:15|
 :skolemid |84|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemVMConfigbpl.3121:15|
 :skolemid |85|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemVMConfigbpl.3137:15|
 :skolemid |86|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemVMConfigbpl.3208:15|
 :skolemid |87|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemVMConfigbpl.3211:15|
 :skolemid |88|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_175890_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_175890| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_175890| stream) v@@32) 0)
 :qid |DiemVMConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemVMConfigbpl.3272:13|
 :skolemid |89|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemVMConfigbpl.3313:80|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemVMConfigbpl.3319:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemVMConfigbpl.3369:82|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemVMConfigbpl.3375:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemVMConfigbpl.3425:80|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemVMConfigbpl.3431:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemVMConfigbpl.3481:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemVMConfigbpl.3487:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemVMConfigbpl.3537:76|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemVMConfigbpl.3543:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemVMConfigbpl.3593:78|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemVMConfigbpl.3599:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemVMConfigbpl.3649:74|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemVMConfigbpl.3655:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemVMConfigbpl.3705:69|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemVMConfigbpl.3711:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemVMConfigbpl.3761:70|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemVMConfigbpl.3767:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemVMConfigbpl.3817:60|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemVMConfigbpl.3823:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemVMConfigbpl.3873:66|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemVMConfigbpl.3879:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemVMConfigbpl.3929:60|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemVMConfigbpl.3935:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemVMConfigbpl.3985:63|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemVMConfigbpl.3991:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemVMConfigbpl.4041:79|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemVMConfigbpl.4047:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemVMConfigbpl.4097:82|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemVMConfigbpl.4103:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemVMConfigbpl.4153:88|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemVMConfigbpl.4159:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemVMConfigbpl.4209:72|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemVMConfigbpl.4215:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemVMConfigbpl.4294:61|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemVMConfigbpl.5109:36|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemVMConfigbpl.6610:71|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemVMConfigbpl.6980:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemVMConfigbpl.6993:64|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemVMConfigbpl.7006:75|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemVMConfigbpl.7019:72|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemVMConfigbpl.7053:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemVMConfigbpl.7075:46|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemVMConfigbpl.7356:49|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemVMConfigbpl.7461:71|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemVMConfigbpl.7475:91|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemVMConfigbpl.7489:113|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |DiemVMConfigbpl.7503:89|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemVMConfigbpl.7517:75|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemVMConfigbpl.7531:73|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15) true)
 :qid |DiemVMConfigbpl.7545:49|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@16)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@16)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@16))))
 :qid |DiemVMConfigbpl.7565:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17) true)
 :qid |DiemVMConfigbpl.7581:57|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18) true)
 :qid |DiemVMConfigbpl.7595:83|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19) true)
 :qid |DiemVMConfigbpl.7609:103|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20) true)
 :qid |DiemVMConfigbpl.7623:125|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@21) true)
 :qid |DiemVMConfigbpl.7637:101|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@22) true)
 :qid |DiemVMConfigbpl.7651:87|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@23) true)
 :qid |DiemVMConfigbpl.7665:85|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@24) true)
 :qid |DiemVMConfigbpl.7679:61|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@25) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@25)))
 :qid |DiemVMConfigbpl.7693:48|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@26)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@26)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@26))))
 :qid |DiemVMConfigbpl.16286:45|
 :skolemid |446|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@27) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@27)))
 :qid |DiemVMConfigbpl.16300:51|
 :skolemid |447|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@27))
)))
(assert (forall ((s@@28 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@28)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@28)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@28))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@28))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@28))))
 :qid |DiemVMConfigbpl.16323:48|
 :skolemid |448|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@28))
)))
(assert (forall ((s@@29 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@29) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@29)))
 :qid |DiemVMConfigbpl.16615:49|
 :skolemid |449|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@29))
)))
(assert (forall ((s@@30 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@30) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@30)))
 :qid |DiemVMConfigbpl.16628:65|
 :skolemid |450|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@31)))
 :qid |DiemVMConfigbpl.17170:45|
 :skolemid |451|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@32) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@32)))
 :qid |DiemVMConfigbpl.17183:45|
 :skolemid |452|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@33) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@33)))
 :qid |DiemVMConfigbpl.17196:37|
 :skolemid |453|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34) true)
 :qid |DiemVMConfigbpl.17209:55|
 :skolemid |454|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35) true)
 :qid |DiemVMConfigbpl.17223:55|
 :skolemid |455|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@36))))
 :qid |DiemVMConfigbpl.17243:38|
 :skolemid |456|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@37))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@37))))
 :qid |DiemVMConfigbpl.17264:44|
 :skolemid |457|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))))
 :qid |DiemVMConfigbpl.17315:53|
 :skolemid |458|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))))
 :qid |DiemVMConfigbpl.17377:53|
 :skolemid |459|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@40)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@40)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@40))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@40))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@40))))
 :qid |DiemVMConfigbpl.17439:45|
 :skolemid |460|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@41) true)
 :qid |DiemVMConfigbpl.17465:55|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@42) true)
 :qid |DiemVMConfigbpl.17479:55|
 :skolemid |462|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@43) true)
 :qid |DiemVMConfigbpl.17493:47|
 :skolemid |463|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@43))
)))
(assert (forall ((s@@44 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@44)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@44)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@44))))
 :qid |DiemVMConfigbpl.17510:38|
 :skolemid |464|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@45)))
 :qid |DiemVMConfigbpl.17524:48|
 :skolemid |465|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@46) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@46)))
 :qid |DiemVMConfigbpl.17538:48|
 :skolemid |466|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@47) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@47)))
 :qid |DiemVMConfigbpl.17552:40|
 :skolemid |467|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@47))
)))
(assert (forall ((s@@48 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@48)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@48)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@48))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@48))))
 :qid |DiemVMConfigbpl.17572:41|
 :skolemid |468|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@49)))
 :qid |DiemVMConfigbpl.17587:53|
 :skolemid |469|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@50)))
 :qid |DiemVMConfigbpl.17601:53|
 :skolemid |470|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@51) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@51)))
 :qid |DiemVMConfigbpl.17615:45|
 :skolemid |471|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@52))))
 :qid |DiemVMConfigbpl.17632:60|
 :skolemid |472|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@53))))
 :qid |DiemVMConfigbpl.17649:60|
 :skolemid |473|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@54)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@54)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@54))))
 :qid |DiemVMConfigbpl.17666:52|
 :skolemid |474|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@54))
)))
(assert (forall ((s@@55 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@55)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@55)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@55))))
 :qid |DiemVMConfigbpl.17683:57|
 :skolemid |475|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@55))
)))
(assert (forall ((s@@56 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@56) true)
 :qid |DiemVMConfigbpl.19856:68|
 :skolemid |476|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57))))
 :qid |DiemVMConfigbpl.19878:66|
 :skolemid |477|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58))))
 :qid |DiemVMConfigbpl.19904:66|
 :skolemid |478|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |DiemVMConfigbpl.19933:56|
 :skolemid |479|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |DiemVMConfigbpl.19963:56|
 :skolemid |480|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@61) true)
 :qid |DiemVMConfigbpl.20397:31|
 :skolemid |481|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@61))
)))
(assert (forall ((s@@62 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@62) true)
 :qid |DiemVMConfigbpl.20727:31|
 :skolemid |482|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@63)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@63)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@63))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@63))))
 :qid |DiemVMConfigbpl.20746:35|
 :skolemid |483|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@64)))
 :qid |DiemVMConfigbpl.21160:45|
 :skolemid |484|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@65))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@65))))
 :qid |DiemVMConfigbpl.21179:50|
 :skolemid |485|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@66)))
 :qid |DiemVMConfigbpl.21194:52|
 :skolemid |486|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@67)))
 :qid |DiemVMConfigbpl.21208:46|
 :skolemid |487|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@68) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@68)))
 :qid |DiemVMConfigbpl.21590:38|
 :skolemid |488|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@69) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@69)))
 :qid |DiemVMConfigbpl.21604:39|
 :skolemid |489|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@69))
)))
(assert (forall ((s@@70 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70))))
 :qid |DiemVMConfigbpl.22291:65|
 :skolemid |490|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@71)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@71)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@71))))
 :qid |DiemVMConfigbpl.22659:60|
 :skolemid |491|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@72))))
 :qid |DiemVMConfigbpl.22676:66|
 :skolemid |492|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@73)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@73)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@73))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@73))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@73))))
 :qid |DiemVMConfigbpl.22705:50|
 :skolemid |493|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@74) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@74)))
 :qid |DiemVMConfigbpl.22724:45|
 :skolemid |494|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@75)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@75)) true))
 :qid |DiemVMConfigbpl.23297:87|
 :skolemid |495|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@76) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@76)))
 :qid |DiemVMConfigbpl.23498:47|
 :skolemid |496|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@77)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@77)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@77))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@77))))
 :qid |DiemVMConfigbpl.23518:58|
 :skolemid |497|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@78) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@78)))
 :qid |DiemVMConfigbpl.23533:39|
 :skolemid |498|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@79)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@79))))
 :qid |DiemVMConfigbpl.23555:58|
 :skolemid |499|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@80)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@80))))
 :qid |DiemVMConfigbpl.23572:58|
 :skolemid |500|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@81) true)
 :qid |DiemVMConfigbpl.23587:51|
 :skolemid |501|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@82)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@82)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@82))))
 :qid |DiemVMConfigbpl.23604:60|
 :skolemid |502|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@83)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@83)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@83))))
 :qid |DiemVMConfigbpl.23890:47|
 :skolemid |503|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@84)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@84))))
 :qid |DiemVMConfigbpl.23912:63|
 :skolemid |504|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@85) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@85)))
 :qid |DiemVMConfigbpl.23927:57|
 :skolemid |505|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@86) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@86)))
 :qid |DiemVMConfigbpl.23940:55|
 :skolemid |506|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@87)))
 :qid |DiemVMConfigbpl.23954:55|
 :skolemid |507|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@88) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@88)))
 :qid |DiemVMConfigbpl.23968:47|
 :skolemid |508|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@89)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@89))))
 :qid |DiemVMConfigbpl.23985:54|
 :skolemid |509|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@90)))
 :qid |DiemVMConfigbpl.23999:55|
 :skolemid |510|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@91)))
 :qid |DiemVMConfigbpl.24013:57|
 :skolemid |511|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@92))))
 :qid |DiemVMConfigbpl.24035:56|
 :skolemid |512|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@93))))
 :qid |DiemVMConfigbpl.24060:52|
 :skolemid |513|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@94)))
 :qid |DiemVMConfigbpl.24076:54|
 :skolemid |514|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94))
)))
(assert (forall ((s@@95 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@95) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@95)))
 :qid |DiemVMConfigbpl.41100:55|
 :skolemid |1462|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@96)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@96)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@96))))
 :qid |DiemVMConfigbpl.41122:47|
 :skolemid |1463|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@97)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@97)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@97))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@97))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@97))))
 :qid |DiemVMConfigbpl.41146:47|
 :skolemid |1464|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@98) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@98)))
 :qid |DiemVMConfigbpl.41378:63|
 :skolemid |1465|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@99) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@99)))
 :qid |DiemVMConfigbpl.41714:49|
 :skolemid |1466|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@100)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@100)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@100))))
 :qid |DiemVMConfigbpl.41757:49|
 :skolemid |1467|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@101)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@101)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@101))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@101))))
 :qid |DiemVMConfigbpl.41786:48|
 :skolemid |1468|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@102) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@102)))
 :qid |DiemVMConfigbpl.43705:47|
 :skolemid |1539|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@102))
)))
(assert (forall ((v@@33 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_16611 v@@33)))
 (and (= (seq.len r@@0) (seq.len v@@33)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@0))) (= (seq.nth r@@0 i@@42) (seq.nth v@@33 (- (- (seq.len v@@33) i@@42) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@42))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_16611 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_159865 v@@34)))
 (and (= (seq.len r@@1) (seq.len v@@34)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@1))) (= (seq.nth r@@1 i@@43) (seq.nth v@@34 (- (- (seq.len v@@34) i@@43) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@43))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_159865 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_158486 v@@35)))
 (and (= (seq.len r@@2) (seq.len v@@35)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@2))) (= (seq.nth r@@2 i@@44) (seq.nth v@@35 (- (- (seq.len v@@35) i@@44) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@44))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_158486 v@@35))
)))
(assert (forall ((v@@36 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_158683 v@@36)))
 (and (= (seq.len r@@3) (seq.len v@@36)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@3))) (= (seq.nth r@@3 i@@45) (seq.nth v@@36 (- (- (seq.len v@@36) i@@45) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@45))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_158683 v@@36))
)))
(assert (forall ((v@@37 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_158880 v@@37)))
 (and (= (seq.len r@@4) (seq.len v@@37)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@4))) (= (seq.nth r@@4 i@@46) (seq.nth v@@37 (- (- (seq.len v@@37) i@@46) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@46))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_158880 v@@37))
)))
(assert (forall ((v@@38 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_160456 v@@38)))
 (and (= (seq.len r@@5) (seq.len v@@38)) (forall ((i@@47 Int) ) (!  (=> (and (>= i@@47 0) (< i@@47 (seq.len r@@5))) (= (seq.nth r@@5 i@@47) (seq.nth v@@38 (- (- (seq.len v@@38) i@@47) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@47))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_160456 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_159471 v@@39)))
 (and (= (seq.len r@@6) (seq.len v@@39)) (forall ((i@@48 Int) ) (!  (=> (and (>= i@@48 0) (< i@@48 (seq.len r@@6))) (= (seq.nth r@@6 i@@48) (seq.nth v@@39 (- (- (seq.len v@@39) i@@48) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@48))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_159471 v@@39))
)))
(assert (forall ((v@@40 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_159274 v@@40)))
 (and (= (seq.len r@@7) (seq.len v@@40)) (forall ((i@@49 Int) ) (!  (=> (and (>= i@@49 0) (< i@@49 (seq.len r@@7))) (= (seq.nth r@@7 i@@49) (seq.nth v@@40 (- (- (seq.len v@@40) i@@49) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@49))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_159274 v@@40))
)))
(assert (forall ((v@@41 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_159077 v@@41)))
 (and (= (seq.len r@@8) (seq.len v@@41)) (forall ((i@@50 Int) ) (!  (=> (and (>= i@@50 0) (< i@@50 (seq.len r@@8))) (= (seq.nth r@@8 i@@50) (seq.nth v@@41 (- (- (seq.len v@@41) i@@50) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@50))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_159077 v@@41))
)))
(assert (forall ((v@@42 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@9 (ReverseVec_159668 v@@42)))
 (and (= (seq.len r@@9) (seq.len v@@42)) (forall ((i@@51 Int) ) (!  (=> (and (>= i@@51 0) (< i@@51 (seq.len r@@9))) (= (seq.nth r@@9 i@@51) (seq.nth v@@42 (- (- (seq.len v@@42) i@@51) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@51))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_159668 v@@42))
)))
(assert (forall ((v@@43 (Seq |T@#0|)) ) (! (let ((r@@10 (ReverseVec_158289 v@@43)))
 (and (= (seq.len r@@10) (seq.len v@@43)) (forall ((i@@52 Int) ) (!  (=> (and (>= i@@52 0) (< i@@52 (seq.len r@@10))) (= (seq.nth r@@10 i@@52) (seq.nth v@@43 (- (- (seq.len v@@43) i@@52) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@52))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_158289 v@@43))
)))
(assert (forall ((v@@44 (Seq T@$1_XDX_XDX)) ) (! (let ((r@@11 (ReverseVec_160062 v@@44)))
 (and (= (seq.len r@@11) (seq.len v@@44)) (forall ((i@@53 Int) ) (!  (=> (and (>= i@@53 0) (< i@@53 (seq.len r@@11))) (= (seq.nth r@@11 i@@53) (seq.nth v@@44 (- (- (seq.len v@@44) i@@53) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@53))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_160062 v@@44))
)))
(assert (forall ((v@@45 (Seq T@$1_XUS_XUS)) ) (! (let ((r@@12 (ReverseVec_160259 v@@45)))
 (and (= (seq.len r@@12) (seq.len v@@45)) (forall ((i@@54 Int) ) (!  (=> (and (>= i@@54 0) (< i@@54 (seq.len r@@12))) (= (seq.nth r@@12 i@@54) (seq.nth v@@45 (- (- (seq.len v@@45) i@@54) 1))))
 :qid |DiemVMConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@54))
))))
 :qid |DiemVMConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_160259 v@@45))
)))
(assert (forall ((|l#0| Bool) (i@@55 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@55) |l#0|)
 :qid |DiemVMConfigbpl.250:54|
 :skolemid |1630|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@55))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_175890|) (|l#1| |T@[$1_Event_EventHandle]Multiset_175890|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_175890_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_175890| (|Select__T@[$1_Event_EventHandle]Multiset_175890_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_175890| (|Select__T@[$1_Event_EventHandle]Multiset_175890_| |l#1| handle@@0))))
(Multiset_175890 (|lambda#3| (|v#Multiset_175890| (|Select__T@[$1_Event_EventHandle]Multiset_175890_| |l#0@@0| handle@@0)) (|v#Multiset_175890| (|Select__T@[$1_Event_EventHandle]Multiset_175890_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemVMConfigbpl.3282:13|
 :skolemid |1631|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_175890_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@46) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@46) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@46)))
 :qid |DiemVMConfigbpl.129:29|
 :skolemid |1632|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@46))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_16758)
(declare-fun $t14@1 () T@$Mutation_213720)
(declare-fun $t24@1 () T@$Mutation_16758)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_213720)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_213225)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_213225)
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_213903)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_214090)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_214183)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_214269)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_214342)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_214413)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_214497)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_214581)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_214652)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_214736)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_214820)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_214891)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_214988)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_215072)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_215156)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_215227)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_215298)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_215470)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_215541)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_215612)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_215696)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_213777)
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
(declare-fun $t14 () T@$Mutation_213720)
(declare-fun $t14@0 () T@$Mutation_213720)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_213720)
(declare-fun $t24 () T@$Mutation_16758)
; Valid
(declare-fun $t31 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_214183)
(declare-fun $t32 () Int)
(declare-fun $t33 () T@$1_DiemConfig_Configuration)
(declare-fun $t34 () Int)
(declare-fun $t35 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_225424)
(declare-fun $t22 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@0 () Int)
(declare-fun $t36 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t37 () T@$1_Event_EventHandle)
(declare-fun $t29 () T@$1_Event_EventHandle)
(declare-fun $t38 () Bool)
(declare-fun $t28 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_175890_| (|T@[$1_Event_EventHandle]Multiset_175890| T@$1_Event_EventHandle T@Multiset_175890) |T@[$1_Event_EventHandle]Multiset_175890|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_175890|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_175890)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_175890_| (|Store__T@[$1_Event_EventHandle]Multiset_175890_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_175890|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_175890)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_175890_| (|Store__T@[$1_Event_EventHandle]Multiset_175890_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_175890_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory| () T@$Memory_226845)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory| () T@$Memory_225343)
(declare-fun $t9@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@0 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@0| () T@$Memory_225343)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|T@[Int]$1_DiemConfig_DiemConfig'#0'| Int) |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun _$t1@@0 () |T@#0|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_214183)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_214183)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t30 () Bool)
(declare-fun $t15@0@@0 () Int)
(declare-fun $t26 () T@$1_DiemConfig_Configuration)
(declare-fun $t27 () Int)
(declare-fun $t15 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'#0''@0| () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t20@1 () T@$Mutation_226924)
(declare-fun $t21@0 () T@$Mutation_178739)
(declare-fun $t21@1 () T@$Mutation_178739)
(declare-fun $t20@2 () T@$Mutation_226924)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|T@[Int]$1_DiemConfig_DiemConfig'#0'| Int |T@$1_DiemConfig_DiemConfig'#0'|) |T@[Int]$1_DiemConfig_DiemConfig'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'#0'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@0 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies () |T@[Int]Bool|)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t20@@0 () T@$Mutation_226924)
(declare-fun $t20@0 () T@$Mutation_226924)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t17@0@@0 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t19 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t14@@0 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| Int) |T@$1_DiemConfig_ModifyConfigCapability'#0'|)
(declare-fun $t11@@0 () Int)
(declare-fun $t7@@0 () T@$Mutation_226924)
(declare-fun $t21 () T@$Mutation_178739)
; Valid
(declare-fun $t31@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@0 () T@$Memory_214183)
(declare-fun $t32@@0 () Int)
(declare-fun $t33@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t34@@0 () Int)
(declare-fun $t35@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t22@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@1 () Int)
(declare-fun $t36@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t37@@0 () T@$1_Event_EventHandle)
(declare-fun $t29@@0 () T@$1_Event_EventHandle)
(declare-fun $t38@@0 () Bool)
(declare-fun $t28@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_226323)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $t9@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@1 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_214269)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun _$t1@@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_214183)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_214183)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@0| () T@$1_DiemConfig_Configuration)
(declare-fun $t30@@0 () Bool)
(declare-fun $t15@0@@1 () Int)
(declare-fun $t26@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t27@@0 () Int)
(declare-fun $t15@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t20@1@@0 () T@$Mutation_229601)
(declare-fun $t21@0@@0 () T@$Mutation_229646)
(declare-fun $t21@1@@0 () T@$Mutation_229646)
(declare-fun $t20@2@@0 () T@$Mutation_229601)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@1 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t20@@1 () T@$Mutation_229601)
(declare-fun $t20@0@@0 () T@$Mutation_229601)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t17@0@@1 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| () |T@[Int]Bool|)
(declare-fun $t19@@0 () Int)
(declare-fun $t12@0@@0 () Bool)
(declare-fun $t14@@1 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $t11@@1 () Int)
(declare-fun $t7@@1 () T@$Mutation_229601)
(declare-fun $t21@@0 () T@$Mutation_229646)
; Valid
(declare-fun $t31@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@1 () T@$Memory_214183)
(declare-fun $t32@@1 () Int)
(declare-fun $t33@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t34@@1 () Int)
(declare-fun $t35@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t22@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@2 () Int)
(declare-fun $t36@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t37@@1 () T@$1_Event_EventHandle)
(declare-fun $t29@@1 () T@$1_Event_EventHandle)
(declare-fun $t38@@1 () Bool)
(declare-fun $t28@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory| () T@$Memory_226584)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory| () T@$Memory_225210)
(declare-fun $t9@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@2 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@0| () T@$Memory_225210)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun _$t1@@2 () T@$1_DiemConsensusConfig_DiemConsensusConfig)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@1 () T@$Memory_214183)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@1 () T@$Memory_214183)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@1| () T@$1_DiemConfig_Configuration)
(declare-fun $t30@@1 () Bool)
(declare-fun $t15@0@@2 () Int)
(declare-fun $t26@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $t27@@1 () Int)
(declare-fun $t15@@1 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t20@1@@1 () T@$Mutation_232251)
(declare-fun $t21@0@@1 () T@$Mutation_232296)
(declare-fun $t21@1@@1 () T@$Mutation_232296)
(declare-fun $t20@2@@1 () T@$Mutation_232251)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@2 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@1 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t20@@2 () T@$Mutation_232251)
(declare-fun $t20@0@@1 () T@$Mutation_232251)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t17@0@@2 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$modifies| () |T@[Int]Bool|)
(declare-fun $t19@@1 () Int)
(declare-fun $t12@0@@1 () Bool)
(declare-fun $t14@@2 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t11@@2 () Int)
(declare-fun $t7@@2 () T@$Mutation_232251)
(declare-fun $t21@@1 () T@$Mutation_232296)
; Valid
(declare-fun $t31@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@2 () T@$Memory_214183)
(declare-fun $t32@@2 () Int)
(declare-fun $t33@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t34@@2 () Int)
(declare-fun $t35@@2 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t22@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@3 () Int)
(declare-fun $t36@@2 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t37@@2 () T@$1_Event_EventHandle)
(declare-fun $t29@@2 () T@$1_Event_EventHandle)
(declare-fun $t38@@2 () Bool)
(declare-fun $t28@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@2 () T@$EventStore)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_226671)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun $t9@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@3 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0| () T@$Memory_215696)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun _$t1@@3 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@2 () T@$Memory_214183)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@2 () T@$Memory_214183)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@2| () T@$1_DiemConfig_Configuration)
(declare-fun $t30@@2 () Bool)
(declare-fun $t15@0@@3 () Int)
(declare-fun $t26@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t27@@2 () Int)
(declare-fun $t15@@2 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t20@1@@2 () T@$Mutation_234901)
(declare-fun $t21@0@@2 () T@$Mutation_234946)
(declare-fun $t21@1@@2 () T@$Mutation_234946)
(declare-fun $t20@2@@2 () T@$Mutation_234901)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@3 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@2 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t20@@3 () T@$Mutation_234901)
(declare-fun $t20@0@@2 () T@$Mutation_234901)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t17@0@@3 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies| () |T@[Int]Bool|)
(declare-fun $t19@@2 () Int)
(declare-fun $t12@0@@2 () Bool)
(declare-fun $t14@@3 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t11@@3 () Int)
(declare-fun $t7@@3 () T@$Mutation_234901)
(declare-fun $t21@@2 () T@$Mutation_234946)
; Valid
(declare-fun $t31@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@3 () T@$Memory_214183)
(declare-fun $t32@@3 () Int)
(declare-fun $t33@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t34@@3 () Int)
(declare-fun $t35@@3 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t22@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t23@@4 () Int)
(declare-fun $t36@@3 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t37@@3 () T@$1_Event_EventHandle)
(declare-fun $t29@@3 () T@$1_Event_EventHandle)
(declare-fun $t38@@3 () Bool)
(declare-fun $t28@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@3 () T@$EventStore)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_226758)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun $t9@@4 () T@$1_DiemConfig_Configuration)
(declare-fun $t10@@4 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0| () T@$Memory_213777)
(declare-fun _$t1@@4 () T@$1_DiemVersion_DiemVersion)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@3 () T@$Memory_214183)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@3 () T@$Memory_214183)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@3| () T@$1_DiemConfig_Configuration)
(declare-fun $t30@@3 () Bool)
(declare-fun $t15@0@@4 () Int)
(declare-fun $t26@@3 () T@$1_DiemConfig_Configuration)
(declare-fun $t27@@3 () Int)
(declare-fun $t15@@3 () Int)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $t20@1@@3 () T@$Mutation_237551)
(declare-fun $t21@0@@3 () T@$Mutation_237596)
(declare-fun $t21@1@@3 () T@$Mutation_237596)
(declare-fun $t20@2@@3 () T@$Mutation_237551)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@@4 () T@$1_DiemConfig_Configuration)
(declare-fun $t25@@4 () Int)
(declare-fun $1_DiemConfig_Configuration_$modifies@@3 () |T@[Int]Bool|)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t20@@4 () T@$Mutation_237551)
(declare-fun $t20@0@@3 () T@$Mutation_237551)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t17@0@@4 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies| () |T@[Int]Bool|)
(declare-fun $t19@@3 () Int)
(declare-fun $t12@0@@3 () Bool)
(declare-fun $t14@@4 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)
(declare-fun $t11@@4 () Int)
(declare-fun $t7@@4 () T@$Mutation_237551)
(declare-fun $t21@@3 () T@$Mutation_237596)
; Valid
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@1| () T@$Memory_226845)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun $t5 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@2| () T@$Memory_225343)
(declare-fun _$t1@@5 () |T@#0|)
(declare-fun $t9@0 () Int)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$memory@0| () T@$Memory_226845)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| Int |T@$1_DiemConfig_ModifyConfigCapability'#0'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'#0'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@5 () |T@$1_DiemConfig_ModifyConfigCapability'#0'|)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@5 () Int)
(declare-fun $t11@0@@0 () Bool)
(declare-fun $t10@@5 () Int)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@1| () T@$Memory_225343)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$memory@0@@0| () T@$Memory_225343)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'#0''@0@@0| () |T@$1_DiemConfig_DiemConfig'#0'|)
(declare-fun $t8 () Bool)
(declare-fun $t6 () Int)
(declare-fun $t9@@5 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_222186)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_223652)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_240769)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_240884)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_240944)
(declare-fun |$1_DiemConfig_DiemConfig'#0'_$modifies@@0| () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_226323)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun $t5@@0 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_214269)
(declare-fun _$t1@@6 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t9@0@@0 () Int)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_226323)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@6 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@6 () Int)
(declare-fun $t11@0@@1 () Bool)
(declare-fun $t10@@6 () Int)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_214269)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| () T@$Memory_214269)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t8@@0 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun $t9@@6 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@1| () T@$Memory_226584)
(declare-fun _$t0@@7 () T@$signer)
(declare-fun $t5@@1 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@2| () T@$Memory_225210)
(declare-fun _$t1@@7 () T@$1_DiemConsensusConfig_DiemConsensusConfig)
(declare-fun $t9@0@@1 () Int)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@0| () T@$Memory_226584)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@7 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@7 () Int)
(declare-fun $t11@0@@2 () Bool)
(declare-fun $t10@@7 () Int)
(declare-fun |$temp_0'bool'@0@@6| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@1| () T@$Memory_225210)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$memory@0@@0| () T@$Memory_225210)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|)
(declare-fun $t8@@1 () Bool)
(declare-fun $t6@@1 () Int)
(declare-fun $t9@@7 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'_$modifies@@0| () |T@[Int]Bool|)
; Valid
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1| () T@$Memory_226671)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t5@@2 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2| () T@$Memory_215696)
(declare-fun _$t1@@8 () T@$1_DiemVMConfig_DiemVMConfig)
(declare-fun $t9@0@@2 () Int)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@0| () T@$Memory_226671)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@@8 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14@@8 () Int)
(declare-fun $t11@0@@3 () Bool)
(declare-fun $t10@@8 () Int)
(declare-fun |$temp_0'bool'@0@@7| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1| () T@$Memory_215696)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0@@0| () T@$Memory_215696)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|)
(declare-fun $t8@@2 () Bool)
(declare-fun $t6@@2 () Int)
(declare-fun $t9@@8 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies@@0| () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_publish_new_config$verify_instantiated_2)
(assert (not
 (=> (= (ControlFlow 0 0) 753423) (let ((anon19_Else_correct@@7  (=> (not $abort_flag@0@@8) (and (=> (= (ControlFlow 0 451675) (- 0 754692)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) 173345816)) (and (=> (= (ControlFlow 0 451675) (- 0 754710)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 451675) (- 0 754718)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@8)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@8))) (and (=> (= (ControlFlow 0 451675) (- 0 754729)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) $t5@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) $t5@@2))) (and (=> (= (ControlFlow 0 451675) (- 0 754741)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) $t5@@2)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) $t5@@2)) 0))) (and (=> (= (ControlFlow 0 451675) (- 0 754759)) (not (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (=> (= (ControlFlow 0 451675) (- 0 754773)) (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) (|$addr#$signer| _$t0@@8))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) (|$addr#$signer| _$t0@@8)) (and (=> (= (ControlFlow 0 451675) (- 0 754782)) (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 451675) (- 0 754788)) (= (let ((addr@@82 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr@@82))) _$t1@@8)) (=> (= (let ((addr@@83 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr@@83))) _$t1@@8) (=> (= (ControlFlow 0 451675) (- 0 754797)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_214183| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_214183| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 451507) (- 0 754568)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) $t5@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) $t5@@2)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (=> (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) $t5@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) $t5@@2)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (=> (= (ControlFlow 0 451507) (- 0 754614)) (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@8))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) $t5@@2)) (= 5 $t9@0@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) $t5@@2)) 0)) (= 3 $t9@0@@2))) (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t9@0@@2))))))))
(let ((anon19_Then_correct@@7  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t9@0@@2 $abort_code@1@@8) (= (ControlFlow 0 451689) 451507))) L3_correct@@2)))
(let ((anon18_Then$1_correct@@2  (=> (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (=> (and (= $abort_flag@0@@8 true) (= $abort_code@1@@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 451741) 451689) anon19_Then_correct@@7) (=> (= (ControlFlow 0 451741) 451675) anon19_Else_correct@@7))))))
(let ((anon18_Then_correct@@7  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@8)) (= (ControlFlow 0 451739) 451741)) anon18_Then$1_correct@@2)))
(let ((anon18_Else_correct@@7  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@8))) (=> (and (and (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@0| ($Memory_226671 (|Store__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@8) true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) (|$addr#$signer| _$t0@@8) $t7@@8))) (= |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@1| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory@0|)) (and (= $abort_flag@0@@8 false) (= $abort_code@1@@8 $abort_code@0@@8))) (and (=> (= (ControlFlow 0 451547) 451689) anon19_Then_correct@@7) (=> (= (ControlFlow 0 451547) 451675) anon19_Else_correct@@7))))))
(let ((anon17_Then_correct@@2  (=> inline$$Not$0$dst@1@@2 (and (=> (= (ControlFlow 0 451525) (- 0 754440)) (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$modifies| (|$addr#$signer| _$t0@@8))) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$modifies| (|$addr#$signer| _$t0@@8)) (and (=> (= (ControlFlow 0 451525) 451739) anon18_Then_correct@@7) (=> (= (ControlFlow 0 451525) 451547) anon18_Else_correct@@7)))))))
(let ((anon17_Else_correct@@2  (=> (and (and (not inline$$Not$0$dst@1@@2) (= $t14@@8 $t14@@8)) (and (= $t9@0@@2 $t14@@8) (= (ControlFlow 0 451371) 451507))) L3_correct@@2)))
(let ((anon5$1_correct@@2  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t14@@8) (= $t14@@8 6)) (and (= $t14@@8 $t14@@8) (= inline$$Not$0$dst@1@@2 inline$$Not$0$dst@1@@2))) (and (=> (= (ControlFlow 0 451355) 451525) anon17_Then_correct@@2) (=> (= (ControlFlow 0 451355) 451371) anon17_Else_correct@@2))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (and (= inline$$Not$0$dst@1@@2  (not $t11@0@@3)) (= (ControlFlow 0 451315) 451355)) anon5$1_correct@@2)))
(let ((anon5_correct@@2  (=> (and (and (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| $t7@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816)) (and (= (let ((addr@@84 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr@@84))) _$t1@@8) (= (|Select__T@[Int]Bool_| (|domain#$Memory_214183| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_214183| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (=> (= (ControlFlow 0 451321) (- 0 754295)) (forall ((config_address@@23 Int) ) (!  (=> (|$IsValid'address'| config_address@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) config_address@@23) (= config_address@@23 173345816)))
 :qid |DiemVMConfigbpl.11636:15|
 :skolemid |281|
))) (=> (forall ((config_address@@24 Int) ) (!  (=> (|$IsValid'address'| config_address@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) config_address@@24) (= config_address@@24 173345816)))
 :qid |DiemVMConfigbpl.11636:15|
 :skolemid |281|
)) (and (=> (= (ControlFlow 0 451321) (- 0 754320)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) 173345816)) (and (=> (= (ControlFlow 0 451321) (- 0 754331)) (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr@@85) (= addr@@85 173345816)))
 :qid |DiemVMConfigbpl.11648:15|
 :skolemid |282|
))) (=> (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2|) addr@@86) (= addr@@86 173345816)))
 :qid |DiemVMConfigbpl.11648:15|
 :skolemid |282|
)) (=> (= $t7@@8 $t7@@8) (=> (and (and (|$IsValid'address'| $t10@@8) (= $t10@@8 (|$addr#$signer| _$t0@@8))) (and (= $t11@0@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) $t10@@8)) (= (ControlFlow 0 451321) 451315))) inline$$Not$0$anon0_correct@@2)))))))))))
(let ((anon16_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@7|) (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1| ($Memory_215696 (|Store__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 false) (|contents#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@1|) (= (ControlFlow 0 451167) 451321))) anon5_correct@@2)))
(let ((anon16_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@7| (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0@@0| ($Memory_215696 (|Store__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''@0@@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory@0@@0|) (= (ControlFlow 0 451753) 451321))) anon5_correct@@2)))
(let ((anon15_Else_correct@@2  (=> (not $t8@@2) (and (=> (= (ControlFlow 0 451155) 451753) anon16_Then_correct@@2) (=> (= (ControlFlow 0 451155) 451167) anon16_Else_correct@@2)))))
(let ((anon15_Then_correct@@2  (=> $t8@@2 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) $t6@@2)) (= 5 $t9@@8)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) $t6@@2)) 0)) (= 3 $t9@@8))) (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t9@@8))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816) (= 6 $t9@@8))) (= $t9@@8 $t9@@8)) (and (= $t9@0@@2 $t9@@8) (= (ControlFlow 0 451841) 451507))) L3_correct@@2))))
(let ((anon0$1_correct@@8  (=> (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@87)) 0)) (= addr@@87 173345816)))
 :qid |DiemVMConfigbpl.11452:20|
 :skolemid |261|
)) (=> (and (and (and (and (and (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@88)) 1)) (= addr@@88 186537453)))
 :qid |DiemVMConfigbpl.11456:20|
 :skolemid |262|
)) (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@89)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@89)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@89)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@89)) 2))))))
 :qid |DiemVMConfigbpl.11460:20|
 :skolemid |263|
))) (and (forall ((addr@@90 Int) ) (!  (=> (|$IsValid'address'| addr@@90) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@90)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@90)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@90)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@90)) 2))))))
 :qid |DiemVMConfigbpl.11464:20|
 :skolemid |264|
)) (forall ((addr@@91 Int) ) (!  (=> (|$IsValid'address'| addr@@91) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@91)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@91)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@91)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@91)) 2))))))
 :qid |DiemVMConfigbpl.11468:20|
 :skolemid |265|
)))) (and (and (forall ((addr@@92 Int) ) (!  (=> (|$IsValid'address'| addr@@92) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@92)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@92)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@92)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@92)) 2))))))
 :qid |DiemVMConfigbpl.11472:20|
 :skolemid |266|
)) (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@93)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@93)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@93)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@93)) 2)))))
 :qid |DiemVMConfigbpl.11476:20|
 :skolemid |267|
))) (and (forall ((addr@@94 Int) ) (!  (=> (|$IsValid'address'| addr@@94) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@94)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@94)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@94)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@94)) 2)))))
 :qid |DiemVMConfigbpl.11480:20|
 :skolemid |268|
)) (forall ((addr@@95 Int) ) (!  (=> (|$IsValid'address'| addr@@95) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@95)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@95)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@95)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@95)) 2)))))
 :qid |DiemVMConfigbpl.11484:20|
 :skolemid |269|
))))) (and (and (and (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_222186| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@96) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@96)) 4))))
 :qid |DiemVMConfigbpl.11488:20|
 :skolemid |270|
)) (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_223652| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@97) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@97)) 3))))
 :qid |DiemVMConfigbpl.11492:20|
 :skolemid |271|
))) (and (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_223652| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@98) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@98)) 3))))
 :qid |DiemVMConfigbpl.11496:20|
 :skolemid |272|
)) (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_223652| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@99) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_223652| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@99)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@99)) 3))))
 :qid |DiemVMConfigbpl.11500:20|
 :skolemid |273|
)))) (and (and (forall ((config_address@@25 Int) ) (!  (=> (|$IsValid'address'| config_address@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@25) (= config_address@@25 173345816)))
 :qid |DiemVMConfigbpl.11504:20|
 :skolemid |274|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_240769| $1_DualAttestation_Credential_$memory) addr1@@2) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr1@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr1@@2)) 2)))))
 :qid |DiemVMConfigbpl.11508:20|
 :skolemid |275|
))) (and (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_240884| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@100) (|Select__T@[Int]Bool_| (|domain#$Memory_240944| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@100)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@100)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@100)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) addr@@100)) 2)))))
 :qid |DiemVMConfigbpl.11512:20|
 :skolemid |276|
)) (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) addr@@101) (= addr@@101 173345816)))
 :qid |DiemVMConfigbpl.11516:20|
 :skolemid |277|
)))))) (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@8)) ($1_Signer_is_txn_signer _$t0@@8)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@8))) (and (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| _$t1@@8) (forall (($a_0@@34 Int) ) (! (let (($rsc@@34 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) $a_0@@34)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@34))
 :qid |DiemVMConfigbpl.11525:20|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) $a_0@@34))
)))) (and (and (and (forall (($a_0@@35 Int) ) (! (let (($rsc@@35 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@35)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| $rsc@@35))
 :qid |DiemVMConfigbpl.11529:20|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@35))
)) (forall (($a_0@@36 Int) ) (! (let (($rsc@@36 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@36)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| $rsc@@36))
 :qid |DiemVMConfigbpl.11533:20|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_| (|contents#$Memory_226671| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$memory|) $a_0@@36))
))) (and (= $t5@@2 (|$addr#$signer| _$t0@@8)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies@@0| 173345816))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'_$modifies| 173345816) (= _$t0@@8 _$t0@@8)) (and (= _$t1@@8 _$t1@@8) (= $t6@@2 (|$addr#$signer| _$t0@@8))))))) (and (=> (= (ControlFlow 0 451147) (- 0 754070)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies@@0| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$modifies@@0| 173345816) (=> (= $t8@@2  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_213903| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_213903| $1_Roles_RoleId_$memory) $t6@@2)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_215696| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 451147) 451841) anon15_Then_correct@@2) (=> (= (ControlFlow 0 451147) 451155) anon15_Else_correct@@2)))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_175890_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_175890| stream@@14) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_175890| stream@@14) v@@56) 0)
 :qid |DiemVMConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemVMConfigbpl.3272:13|
 :skolemid |89|
))) (= (ControlFlow 0 450510) 451147)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 753423) 450510) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
