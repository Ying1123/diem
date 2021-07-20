(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_127481 0)) ((($Memory_127481 (|domain#$Memory_127481| |T@[Int]Bool|) (|contents#$Memory_127481| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_193072 0)) ((($Memory_193072 (|domain#$Memory_193072| |T@[Int]Bool|) (|contents#$Memory_193072| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_185972 0)) ((($Memory_185972 (|domain#$Memory_185972| |T@[Int]Bool|) (|contents#$Memory_185972| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_181171 0)) ((($Memory_181171 (|domain#$Memory_181171| |T@[Int]Bool|) (|contents#$Memory_181171| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_181517 0)) ((($Memory_181517 (|domain#$Memory_181517| |T@[Int]Bool|) (|contents#$Memory_181517| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_181138 0)) ((($Memory_181138 (|domain#$Memory_181138| |T@[Int]Bool|) (|contents#$Memory_181138| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_181051 0)) ((($Memory_181051 (|domain#$Memory_181051| |T@[Int]Bool|) (|contents#$Memory_181051| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_180752 0)) ((($Memory_180752 (|domain#$Memory_180752| |T@[Int]Bool|) (|contents#$Memory_180752| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_177330 0)) ((($Memory_177330 (|domain#$Memory_177330| |T@[Int]Bool|) (|contents#$Memory_177330| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_177061 0)) ((($Memory_177061 (|domain#$Memory_177061| |T@[Int]Bool|) (|contents#$Memory_177061| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_173749 0)) ((($Memory_173749 (|domain#$Memory_173749| |T@[Int]Bool|) (|contents#$Memory_173749| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_173685 0)) ((($Memory_173685 (|domain#$Memory_173685| |T@[Int]Bool|) (|contents#$Memory_173685| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_170137 0)) ((($Memory_170137 (|domain#$Memory_170137| |T@[Int]Bool|) (|contents#$Memory_170137| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_170504 0)) ((($Memory_170504 (|domain#$Memory_170504| |T@[Int]Bool|) (|contents#$Memory_170504| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_165534 0)) ((($Memory_165534 (|domain#$Memory_165534| |T@[Int]Bool|) (|contents#$Memory_165534| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_165602 0)) ((($Memory_165602 (|domain#$Memory_165602| |T@[Int]Bool|) (|contents#$Memory_165602| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_166513 0)) ((($Memory_166513 (|domain#$Memory_166513| |T@[Int]Bool|) (|contents#$Memory_166513| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_166294 0)) ((($Memory_166294 (|domain#$Memory_166294| |T@[Int]Bool|) (|contents#$Memory_166294| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_185699 0)) ((($Memory_185699 (|domain#$Memory_185699| |T@[Int]Bool|) (|contents#$Memory_185699| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_147868 0)) ((($Memory_147868 (|domain#$Memory_147868| |T@[Int]Bool|) (|contents#$Memory_147868| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_147781 0)) ((($Memory_147781 (|domain#$Memory_147781| |T@[Int]Bool|) (|contents#$Memory_147781| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_147694 0)) ((($Memory_147694 (|domain#$Memory_147694| |T@[Int]Bool|) (|contents#$Memory_147694| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_143061 0)) ((($Memory_143061 (|domain#$Memory_143061| |T@[Int]Bool|) (|contents#$Memory_143061| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_142974 0)) ((($Memory_142974 (|domain#$Memory_142974| |T@[Int]Bool|) (|contents#$Memory_142974| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_142887 0)) ((($Memory_142887 (|domain#$Memory_142887| |T@[Int]Bool|) (|contents#$Memory_142887| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_184484 0)) ((($Memory_184484 (|domain#$Memory_184484| |T@[Int]Bool|) (|contents#$Memory_184484| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_148223 0)) ((($Memory_148223 (|domain#$Memory_148223| |T@[Int]Bool|) (|contents#$Memory_148223| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_174220 0)) ((($Memory_174220 (|domain#$Memory_174220| |T@[Int]Bool|) (|contents#$Memory_174220| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_148648 0)) ((($Memory_148648 (|domain#$Memory_148648| |T@[Int]Bool|) (|contents#$Memory_148648| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_148132 0)) ((($Memory_148132 (|domain#$Memory_148132| |T@[Int]Bool|) (|contents#$Memory_148132| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_168849 0)) ((($Memory_168849 (|domain#$Memory_168849| |T@[Int]Bool|) (|contents#$Memory_168849| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_148549 0)) ((($Memory_148549 (|domain#$Memory_148549| |T@[Int]Bool|) (|contents#$Memory_148549| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_148041 0)) ((($Memory_148041 (|domain#$Memory_148041| |T@[Int]Bool|) (|contents#$Memory_148041| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_174143 0)) ((($Memory_174143 (|domain#$Memory_174143| |T@[Int]Bool|) (|contents#$Memory_174143| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_148450 0)) ((($Memory_148450 (|domain#$Memory_148450| |T@[Int]Bool|) (|contents#$Memory_148450| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_142460 0)) ((($Memory_142460 (|domain#$Memory_142460| |T@[Int]Bool|) (|contents#$Memory_142460| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_142308 0)) ((($Memory_142308 (|domain#$Memory_142308| |T@[Int]Bool|) (|contents#$Memory_142308| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_142244 0)) ((($Memory_142244 (|domain#$Memory_142244| |T@[Int]Bool|) (|contents#$Memory_142244| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_138201 0)) ((($Memory_138201 (|domain#$Memory_138201| |T@[Int]Bool|) (|contents#$Memory_138201| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_138114 0)) ((($Memory_138114 (|domain#$Memory_138114| |T@[Int]Bool|) (|contents#$Memory_138114| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_138027 0)) ((($Memory_138027 (|domain#$Memory_138027| |T@[Int]Bool|) (|contents#$Memory_138027| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_137940 0)) ((($Memory_137940 (|domain#$Memory_137940| |T@[Int]Bool|) (|contents#$Memory_137940| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_137853 0)) ((($Memory_137853 (|domain#$Memory_137853| |T@[Int]Bool|) (|contents#$Memory_137853| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_138466 0)) ((($Memory_138466 (|domain#$Memory_138466| |T@[Int]Bool|) (|contents#$Memory_138466| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_136979 0)) ((($Memory_136979 (|domain#$Memory_136979| |T@[Int]Bool|) (|contents#$Memory_136979| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_137045 0)) ((($Memory_137045 (|domain#$Memory_137045| |T@[Int]Bool|) (|contents#$Memory_137045| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_136898 0)) ((($Memory_136898 (|domain#$Memory_136898| |T@[Int]Bool|) (|contents#$Memory_136898| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_136817 0)) ((($Memory_136817 (|domain#$Memory_136817| |T@[Int]Bool|) (|contents#$Memory_136817| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_136736 0)) ((($Memory_136736 (|domain#$Memory_136736| |T@[Int]Bool|) (|contents#$Memory_136736| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_136655 0)) ((($Memory_136655 (|domain#$Memory_136655| |T@[Int]Bool|) (|contents#$Memory_136655| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_136133 0)) ((($Memory_136133 (|domain#$Memory_136133| |T@[Int]Bool|) (|contents#$Memory_136133| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_184567 0)) ((($Memory_184567 (|domain#$Memory_184567| |T@[Int]Bool|) (|contents#$Memory_184567| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_136574 0)) ((($Memory_136574 (|domain#$Memory_136574| |T@[Int]Bool|) (|contents#$Memory_136574| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_135599 0)) ((($Memory_135599 (|domain#$Memory_135599| |T@[Int]Bool|) (|contents#$Memory_135599| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_135029 0)) ((($Memory_135029 (|domain#$Memory_135029| |T@[Int]Bool|) (|contents#$Memory_135029| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_134702 0)) ((($Memory_134702 (|domain#$Memory_134702| |T@[Int]Bool|) (|contents#$Memory_134702| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_134233 0)) ((($Memory_134233 (|domain#$Memory_134233| |T@[Int]Bool|) (|contents#$Memory_134233| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_99804 0)) (((Multiset_99804 (|v#Multiset_99804| |T@[$EventRep]Int|) (|l#Multiset_99804| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_99804| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_99804|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_190855 0)) ((($Mutation_190855 (|l#$Mutation_190855| T@$Location) (|p#$Mutation_190855| (Seq Int)) (|v#$Mutation_190855| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_190811 0)) ((($Mutation_190811 (|l#$Mutation_190811| T@$Location) (|p#$Mutation_190811| (Seq Int)) (|v#$Mutation_190811| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_182202 0)) ((($Mutation_182202 (|l#$Mutation_182202| T@$Location) (|p#$Mutation_182202| (Seq Int)) (|v#$Mutation_182202| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_182160 0)) ((($Mutation_182160 (|l#$Mutation_182160| T@$Location) (|p#$Mutation_182160| (Seq Int)) (|v#$Mutation_182160| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_178873 0)) ((($Mutation_178873 (|l#$Mutation_178873| T@$Location) (|p#$Mutation_178873| (Seq Int)) (|v#$Mutation_178873| T@$1_DualAttestation_Limit) ) ) ))
(declare-datatypes ((T@$Mutation_175342 0)) ((($Mutation_175342 (|l#$Mutation_175342| T@$Location) (|p#$Mutation_175342| (Seq Int)) (|v#$Mutation_175342| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_170599 0)) ((($Mutation_170599 (|l#$Mutation_170599| T@$Location) (|p#$Mutation_170599| (Seq Int)) (|v#$Mutation_170599| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_170538 0)) ((($Mutation_170538 (|l#$Mutation_170538| T@$Location) (|p#$Mutation_170538| (Seq Int)) (|v#$Mutation_170538| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_164321 0)) ((($Mutation_164321 (|l#$Mutation_164321| T@$Location) (|p#$Mutation_164321| (Seq Int)) (|v#$Mutation_164321| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_42880 0)) ((($Mutation_42880 (|l#$Mutation_42880| T@$Location) (|p#$Mutation_42880| (Seq Int)) (|v#$Mutation_42880| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_162882 0)) ((($Mutation_162882 (|l#$Mutation_162882| T@$Location) (|p#$Mutation_162882| (Seq Int)) (|v#$Mutation_162882| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_151806 0)) ((($Mutation_151806 (|l#$Mutation_151806| T@$Location) (|p#$Mutation_151806| (Seq Int)) (|v#$Mutation_151806| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_151759 0)) ((($Mutation_151759 (|l#$Mutation_151759| T@$Location) (|p#$Mutation_151759| (Seq Int)) (|v#$Mutation_151759| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_149911 0)) ((($Mutation_149911 (|l#$Mutation_149911| T@$Location) (|p#$Mutation_149911| (Seq Int)) (|v#$Mutation_149911| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_140997 0)) ((($Mutation_140997 (|l#$Mutation_140997| T@$Location) (|p#$Mutation_140997| (Seq Int)) (|v#$Mutation_140997| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_128109 0)) ((($Mutation_128109 (|l#$Mutation_128109| T@$Location) (|p#$Mutation_128109| (Seq Int)) (|v#$Mutation_128109| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_14539 0)) ((($Mutation_14539 (|l#$Mutation_14539| T@$Location) (|p#$Mutation_14539| (Seq Int)) (|v#$Mutation_14539| Int) ) ) ))
(declare-datatypes ((T@$Mutation_122342 0)) ((($Mutation_122342 (|l#$Mutation_122342| T@$Location) (|p#$Mutation_122342| (Seq Int)) (|v#$Mutation_122342| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_121596 0)) ((($Mutation_121596 (|l#$Mutation_121596| T@$Location) (|p#$Mutation_121596| (Seq Int)) (|v#$Mutation_121596| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_120156 0)) ((($Mutation_120156 (|l#$Mutation_120156| T@$Location) (|p#$Mutation_120156| (Seq Int)) (|v#$Mutation_120156| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_119410 0)) ((($Mutation_119410 (|l#$Mutation_119410| T@$Location) (|p#$Mutation_119410| (Seq Int)) (|v#$Mutation_119410| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_117970 0)) ((($Mutation_117970 (|l#$Mutation_117970| T@$Location) (|p#$Mutation_117970| (Seq Int)) (|v#$Mutation_117970| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_117224 0)) ((($Mutation_117224 (|l#$Mutation_117224| T@$Location) (|p#$Mutation_117224| (Seq Int)) (|v#$Mutation_117224| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_115784 0)) ((($Mutation_115784 (|l#$Mutation_115784| T@$Location) (|p#$Mutation_115784| (Seq Int)) (|v#$Mutation_115784| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_115038 0)) ((($Mutation_115038 (|l#$Mutation_115038| T@$Location) (|p#$Mutation_115038| (Seq Int)) (|v#$Mutation_115038| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_113598 0)) ((($Mutation_113598 (|l#$Mutation_113598| T@$Location) (|p#$Mutation_113598| (Seq Int)) (|v#$Mutation_113598| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_112852 0)) ((($Mutation_112852 (|l#$Mutation_112852| T@$Location) (|p#$Mutation_112852| (Seq Int)) (|v#$Mutation_112852| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_111412 0)) ((($Mutation_111412 (|l#$Mutation_111412| T@$Location) (|p#$Mutation_111412| (Seq Int)) (|v#$Mutation_111412| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_110666 0)) ((($Mutation_110666 (|l#$Mutation_110666| T@$Location) (|p#$Mutation_110666| (Seq Int)) (|v#$Mutation_110666| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_109226 0)) ((($Mutation_109226 (|l#$Mutation_109226| T@$Location) (|p#$Mutation_109226| (Seq Int)) (|v#$Mutation_109226| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_108480 0)) ((($Mutation_108480 (|l#$Mutation_108480| T@$Location) (|p#$Mutation_108480| (Seq Int)) (|v#$Mutation_108480| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_107040 0)) ((($Mutation_107040 (|l#$Mutation_107040| T@$Location) (|p#$Mutation_107040| (Seq Int)) (|v#$Mutation_107040| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_106294 0)) ((($Mutation_106294 (|l#$Mutation_106294| T@$Location) (|p#$Mutation_106294| (Seq Int)) (|v#$Mutation_106294| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_104854 0)) ((($Mutation_104854 (|l#$Mutation_104854| T@$Location) (|p#$Mutation_104854| (Seq Int)) (|v#$Mutation_104854| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_104108 0)) ((($Mutation_104108 (|l#$Mutation_104108| T@$Location) (|p#$Mutation_104108| (Seq Int)) (|v#$Mutation_104108| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_102630 0)) ((($Mutation_102630 (|l#$Mutation_102630| T@$Location) (|p#$Mutation_102630| (Seq Int)) (|v#$Mutation_102630| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_101884 0)) ((($Mutation_101884 (|l#$Mutation_101884| T@$Location) (|p#$Mutation_101884| (Seq Int)) (|v#$Mutation_101884| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_99804_| (|T@[$1_Event_EventHandle]Multiset_99804| T@$1_Event_EventHandle) T@Multiset_99804)
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
(declare-fun $1_SlidingNonce_spec_try_record_nonce (Int Int) Int)
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
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'#0''| (|T@$1_AccountLimits_LimitsDefinition'#0'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'#0''| (|T@$1_TransactionFee_TransactionFee'#0'|) Bool)
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int (Seq Int) Int) (Seq Int))
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
(declare-fun |$IsValid'$1_DiemAccount_Balance'#0''| (|T@$1_DiemAccount_Balance'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_14392 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_90286 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_88907 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_89104 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_89301 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_90483 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_89892 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_89695 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_89498 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_90089 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_88710 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_99804| |T@[$1_Event_EventHandle]Multiset_99804|) |T@[$1_Event_EventHandle]Multiset_99804|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |TreasuryComplianceScriptsandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |TreasuryComplianceScriptsandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |TreasuryComplianceScriptsandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |TreasuryComplianceScriptsandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |TreasuryComplianceScriptsandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |TreasuryComplianceScriptsandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |TreasuryComplianceScriptsandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |TreasuryComplianceScriptsandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |TreasuryComplianceScriptsandybpl.590:13|
 :skolemid |15|
))))
 :qid |TreasuryComplianceScriptsandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |TreasuryComplianceScriptsandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |TreasuryComplianceScriptsandybpl.603:17|
 :skolemid |18|
)))))
 :qid |TreasuryComplianceScriptsandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |TreasuryComplianceScriptsandybpl.770:13|
 :skolemid |20|
))))
 :qid |TreasuryComplianceScriptsandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |TreasuryComplianceScriptsandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |TreasuryComplianceScriptsandybpl.783:17|
 :skolemid |23|
)))))
 :qid |TreasuryComplianceScriptsandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |TreasuryComplianceScriptsandybpl.950:13|
 :skolemid |25|
))))
 :qid |TreasuryComplianceScriptsandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |TreasuryComplianceScriptsandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |TreasuryComplianceScriptsandybpl.963:17|
 :skolemid |28|
)))))
 :qid |TreasuryComplianceScriptsandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |TreasuryComplianceScriptsandybpl.1130:13|
 :skolemid |30|
))))
 :qid |TreasuryComplianceScriptsandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |TreasuryComplianceScriptsandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |TreasuryComplianceScriptsandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |TreasuryComplianceScriptsandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |TreasuryComplianceScriptsandybpl.1310:13|
 :skolemid |35|
))))
 :qid |TreasuryComplianceScriptsandybpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |TreasuryComplianceScriptsandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |TreasuryComplianceScriptsandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |TreasuryComplianceScriptsandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |TreasuryComplianceScriptsandybpl.1490:13|
 :skolemid |40|
))))
 :qid |TreasuryComplianceScriptsandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |TreasuryComplianceScriptsandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |TreasuryComplianceScriptsandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |TreasuryComplianceScriptsandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |TreasuryComplianceScriptsandybpl.1670:13|
 :skolemid |45|
))))
 :qid |TreasuryComplianceScriptsandybpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |TreasuryComplianceScriptsandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |TreasuryComplianceScriptsandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |TreasuryComplianceScriptsandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |TreasuryComplianceScriptsandybpl.1850:13|
 :skolemid |50|
))))
 :qid |TreasuryComplianceScriptsandybpl.1848:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |TreasuryComplianceScriptsandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |TreasuryComplianceScriptsandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |TreasuryComplianceScriptsandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |TreasuryComplianceScriptsandybpl.2030:13|
 :skolemid |55|
))))
 :qid |TreasuryComplianceScriptsandybpl.2028:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |TreasuryComplianceScriptsandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |TreasuryComplianceScriptsandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |TreasuryComplianceScriptsandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'vec'u8''| (seq.nth v@@22 i@@27)))
 :qid |TreasuryComplianceScriptsandybpl.2210:13|
 :skolemid |60|
))))
 :qid |TreasuryComplianceScriptsandybpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@22))
)))
(assert (forall ((v@@23 (Seq (Seq Int))) (e@@8 (Seq Int)) ) (! (let ((i@@28 (|$IndexOfVec'vec'u8''| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |TreasuryComplianceScriptsandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |TreasuryComplianceScriptsandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |TreasuryComplianceScriptsandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'address'| (seq.nth v@@24 i@@30)))
 :qid |TreasuryComplianceScriptsandybpl.2390:13|
 :skolemid |65|
))))
 :qid |TreasuryComplianceScriptsandybpl.2388:33|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |TreasuryComplianceScriptsandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |TreasuryComplianceScriptsandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |TreasuryComplianceScriptsandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'u64'| (seq.nth v@@26 i@@33)))
 :qid |TreasuryComplianceScriptsandybpl.2570:13|
 :skolemid |70|
))))
 :qid |TreasuryComplianceScriptsandybpl.2568:29|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'u64''| v@@26))
)))
(assert (forall ((v@@27 (Seq Int)) (e@@10 Int) ) (! (let ((i@@34 (|$IndexOfVec'u64'| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |TreasuryComplianceScriptsandybpl.2575:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |TreasuryComplianceScriptsandybpl.2583:17|
 :skolemid |73|
)))))
 :qid |TreasuryComplianceScriptsandybpl.2579:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'u64'| v@@27 e@@10))
)))
(assert (forall ((v@@28 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@28)  (and (|$IsValid'u64'| (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len v@@28))) (|$IsValid'u8'| (seq.nth v@@28 i@@36)))
 :qid |TreasuryComplianceScriptsandybpl.2750:13|
 :skolemid |75|
))))
 :qid |TreasuryComplianceScriptsandybpl.2748:28|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'u8''| v@@28))
)))
(assert (forall ((v@@29 (Seq Int)) (e@@11 Int) ) (! (let ((i@@37 (|$IndexOfVec'u8'| v@@29 e@@11)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len v@@29)))) (= (seq.nth v@@29 i@@38) e@@11))
 :qid |TreasuryComplianceScriptsandybpl.2755:13|
 :skolemid |77|
))) (= i@@37 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len v@@29)))) (= (seq.nth v@@29 i@@37) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@37)) (not (= (seq.nth v@@29 j@@11) e@@11)))
 :qid |TreasuryComplianceScriptsandybpl.2763:17|
 :skolemid |78|
)))))
 :qid |TreasuryComplianceScriptsandybpl.2759:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'u8'| v@@29 e@@11))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |TreasuryComplianceScriptsandybpl.2936:15|
 :skolemid |80|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |TreasuryComplianceScriptsandybpl.2952:15|
 :skolemid |81|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |TreasuryComplianceScriptsandybpl.2999:15|
 :skolemid |82|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |TreasuryComplianceScriptsandybpl.3002:15|
 :skolemid |83|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_99804| stream) 0) (forall ((v@@30 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| stream) v@@30) 0)
 :qid |TreasuryComplianceScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |TreasuryComplianceScriptsandybpl.3078:13|
 :skolemid |84|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |TreasuryComplianceScriptsandybpl.3119:80|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |TreasuryComplianceScriptsandybpl.3125:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |TreasuryComplianceScriptsandybpl.3175:82|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |TreasuryComplianceScriptsandybpl.3181:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |TreasuryComplianceScriptsandybpl.3231:80|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |TreasuryComplianceScriptsandybpl.3237:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |TreasuryComplianceScriptsandybpl.3287:79|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |TreasuryComplianceScriptsandybpl.3293:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |TreasuryComplianceScriptsandybpl.3343:76|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |TreasuryComplianceScriptsandybpl.3349:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |TreasuryComplianceScriptsandybpl.3399:78|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |TreasuryComplianceScriptsandybpl.3405:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |TreasuryComplianceScriptsandybpl.3455:74|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |TreasuryComplianceScriptsandybpl.3461:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |TreasuryComplianceScriptsandybpl.3511:69|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |TreasuryComplianceScriptsandybpl.3517:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |TreasuryComplianceScriptsandybpl.3567:70|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |TreasuryComplianceScriptsandybpl.3573:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |TreasuryComplianceScriptsandybpl.3623:60|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |TreasuryComplianceScriptsandybpl.3629:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |TreasuryComplianceScriptsandybpl.3679:66|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |TreasuryComplianceScriptsandybpl.3685:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |TreasuryComplianceScriptsandybpl.3735:60|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |TreasuryComplianceScriptsandybpl.3741:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |TreasuryComplianceScriptsandybpl.3791:63|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |TreasuryComplianceScriptsandybpl.3797:15|
 :skolemid |111|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |TreasuryComplianceScriptsandybpl.3847:79|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |TreasuryComplianceScriptsandybpl.3853:15|
 :skolemid |113|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |TreasuryComplianceScriptsandybpl.3903:82|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |TreasuryComplianceScriptsandybpl.3909:15|
 :skolemid |115|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |TreasuryComplianceScriptsandybpl.3959:88|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |TreasuryComplianceScriptsandybpl.3965:15|
 :skolemid |117|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |TreasuryComplianceScriptsandybpl.4015:72|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |TreasuryComplianceScriptsandybpl.4021:15|
 :skolemid |119|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |TreasuryComplianceScriptsandybpl.4100:61|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |TreasuryComplianceScriptsandybpl.4277:36|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |TreasuryComplianceScriptsandybpl.4296:71|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |TreasuryComplianceScriptsandybpl.4365:46|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |TreasuryComplianceScriptsandybpl.4378:64|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |TreasuryComplianceScriptsandybpl.4391:75|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |TreasuryComplianceScriptsandybpl.4404:72|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |TreasuryComplianceScriptsandybpl.4433:55|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |TreasuryComplianceScriptsandybpl.4455:46|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account Int) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |TreasuryComplianceScriptsandybpl.4466:15|
 :skolemid |129|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |TreasuryComplianceScriptsandybpl.4479:49|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |TreasuryComplianceScriptsandybpl.4705:71|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |TreasuryComplianceScriptsandybpl.4719:91|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |TreasuryComplianceScriptsandybpl.4733:113|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |TreasuryComplianceScriptsandybpl.4747:75|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |TreasuryComplianceScriptsandybpl.4761:73|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |TreasuryComplianceScriptsandybpl.4781:48|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |TreasuryComplianceScriptsandybpl.4797:57|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |TreasuryComplianceScriptsandybpl.4811:83|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |TreasuryComplianceScriptsandybpl.4825:103|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |TreasuryComplianceScriptsandybpl.4839:125|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |TreasuryComplianceScriptsandybpl.4853:87|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |TreasuryComplianceScriptsandybpl.4867:85|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |TreasuryComplianceScriptsandybpl.4881:48|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |TreasuryComplianceScriptsandybpl.4902:45|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |TreasuryComplianceScriptsandybpl.4916:51|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |TreasuryComplianceScriptsandybpl.4939:48|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |TreasuryComplianceScriptsandybpl.5255:49|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |TreasuryComplianceScriptsandybpl.5300:65|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |TreasuryComplianceScriptsandybpl.5849:45|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |TreasuryComplianceScriptsandybpl.5862:45|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@29)))
 :qid |TreasuryComplianceScriptsandybpl.5875:37|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |TreasuryComplianceScriptsandybpl.5888:55|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |TreasuryComplianceScriptsandybpl.5902:55|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@32) true)
 :qid |TreasuryComplianceScriptsandybpl.5916:47|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |TreasuryComplianceScriptsandybpl.5936:38|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |TreasuryComplianceScriptsandybpl.5957:44|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |TreasuryComplianceScriptsandybpl.6008:53|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |TreasuryComplianceScriptsandybpl.6070:53|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |TreasuryComplianceScriptsandybpl.6132:45|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |TreasuryComplianceScriptsandybpl.6158:55|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |TreasuryComplianceScriptsandybpl.6172:55|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@40) true)
 :qid |TreasuryComplianceScriptsandybpl.6186:47|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@41)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@41))))
 :qid |TreasuryComplianceScriptsandybpl.6203:38|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@42)))
 :qid |TreasuryComplianceScriptsandybpl.6217:48|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@43)))
 :qid |TreasuryComplianceScriptsandybpl.6231:48|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@44) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@44)))
 :qid |TreasuryComplianceScriptsandybpl.6245:40|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@45)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@45))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@45))))
 :qid |TreasuryComplianceScriptsandybpl.6265:41|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@46)))
 :qid |TreasuryComplianceScriptsandybpl.6280:53|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@47)))
 :qid |TreasuryComplianceScriptsandybpl.6294:53|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@48)))
 :qid |TreasuryComplianceScriptsandybpl.6308:45|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@49))))
 :qid |TreasuryComplianceScriptsandybpl.6325:60|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@50))))
 :qid |TreasuryComplianceScriptsandybpl.6342:60|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@51))))
 :qid |TreasuryComplianceScriptsandybpl.6359:52|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@51))
)))
(assert (forall ((s@@52 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@52))))
 :qid |TreasuryComplianceScriptsandybpl.6376:57|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53) true)
 :qid |TreasuryComplianceScriptsandybpl.11771:68|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@54))))
 :qid |TreasuryComplianceScriptsandybpl.11793:66|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@55))))
 :qid |TreasuryComplianceScriptsandybpl.11819:66|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@56))))
 :qid |TreasuryComplianceScriptsandybpl.11845:58|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@57)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@57)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@57))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@57))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@57))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@57))))
 :qid |TreasuryComplianceScriptsandybpl.11874:48|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@57))
)))
(assert (forall ((s@@58 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@58) true)
 :qid |TreasuryComplianceScriptsandybpl.12208:31|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@58))
)))
(assert (forall ((s@@59 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@59) true)
 :qid |TreasuryComplianceScriptsandybpl.12557:31|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@59))
)))
(assert (forall ((s@@60 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@60)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@60)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@60))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@60))))
 :qid |TreasuryComplianceScriptsandybpl.12576:35|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@61) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@61)))
 :qid |TreasuryComplianceScriptsandybpl.12997:45|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@62)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@62))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@62))))
 :qid |TreasuryComplianceScriptsandybpl.13016:50|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@63) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@63)))
 :qid |TreasuryComplianceScriptsandybpl.13031:52|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@64) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@64)))
 :qid |TreasuryComplianceScriptsandybpl.13045:46|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@65) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@65)))
 :qid |TreasuryComplianceScriptsandybpl.14016:38|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@66) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@66)))
 :qid |TreasuryComplianceScriptsandybpl.14030:39|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@66))
)))
(assert (forall ((s@@67 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@67)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@67)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@67))))
 :qid |TreasuryComplianceScriptsandybpl.14062:65|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@67))
)))
(assert (forall ((s@@68 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@68)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@68)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@68))))
 :qid |TreasuryComplianceScriptsandybpl.14080:57|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@68))
)))
(assert (forall ((payer Int) (metadata (Seq Int)) (deposit_value Int) ) (! (let (($$res@@0 ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |TreasuryComplianceScriptsandybpl.14944:15|
 :skolemid |195|
)))
(assert (forall ((s@@69 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@69)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@69))))
 :qid |TreasuryComplianceScriptsandybpl.14972:60|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@70))))
 :qid |TreasuryComplianceScriptsandybpl.14989:66|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@71)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@71))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@71))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@71))))
 :qid |TreasuryComplianceScriptsandybpl.15018:50|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@72) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@72)))
 :qid |TreasuryComplianceScriptsandybpl.15037:45|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@73)) true))
 :qid |TreasuryComplianceScriptsandybpl.15528:87|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@74)))
 :qid |TreasuryComplianceScriptsandybpl.15740:47|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@75)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@75))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@75))))
 :qid |TreasuryComplianceScriptsandybpl.15760:58|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@76)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@76)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@76))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@76))))
 :qid |TreasuryComplianceScriptsandybpl.15781:53|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@76))
)))
(assert (forall ((s@@77 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@77) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@77)))
 :qid |TreasuryComplianceScriptsandybpl.15797:39|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@78)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@78))))
 :qid |TreasuryComplianceScriptsandybpl.15829:58|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@79)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@79))))
 :qid |TreasuryComplianceScriptsandybpl.15846:58|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@80) true)
 :qid |TreasuryComplianceScriptsandybpl.15861:51|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@81)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@81)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@81))))
 :qid |TreasuryComplianceScriptsandybpl.15878:60|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@82)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@82)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@82))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@82))))
 :qid |TreasuryComplianceScriptsandybpl.16867:47|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@83)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@83)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@83))))
 :qid |TreasuryComplianceScriptsandybpl.16889:63|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@84) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@84)))
 :qid |TreasuryComplianceScriptsandybpl.16904:57|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@84))
)))
(assert (forall ((s@@85 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@85) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@85)))
 :qid |TreasuryComplianceScriptsandybpl.16917:47|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@86)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@86)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@86))))
 :qid |TreasuryComplianceScriptsandybpl.16934:54|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@87) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@87)))
 :qid |TreasuryComplianceScriptsandybpl.16948:55|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@88) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@88)))
 :qid |TreasuryComplianceScriptsandybpl.16962:57|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@89)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@89)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@89))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@89))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@89))))
 :qid |TreasuryComplianceScriptsandybpl.16984:56|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@90)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@90))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@90))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@90))))
 :qid |TreasuryComplianceScriptsandybpl.17009:52|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@91)))
 :qid |TreasuryComplianceScriptsandybpl.17025:54|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@92)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@92)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@92))))
 :qid |TreasuryComplianceScriptsandybpl.18167:47|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@93)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@93))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@93))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@93))))
 :qid |TreasuryComplianceScriptsandybpl.18191:47|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@94) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@94)))
 :qid |TreasuryComplianceScriptsandybpl.18432:49|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@95)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@95)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@95))))
 :qid |TreasuryComplianceScriptsandybpl.18475:49|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@96)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@96)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@96))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@96))))
 :qid |TreasuryComplianceScriptsandybpl.18504:48|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@97) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@97)))
 :qid |TreasuryComplianceScriptsandybpl.18799:47|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@97))
)))
(assert (forall ((v@@31 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_14392 v@@31)))
 (and (= (seq.len r@@0) (seq.len v@@31)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@0))) (= (seq.nth r@@0 i@@39) (seq.nth v@@31 (- (- (seq.len v@@31) i@@39) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@39))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14392 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_90286 v@@32)))
 (and (= (seq.len r@@1) (seq.len v@@32)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@1))) (= (seq.nth r@@1 i@@40) (seq.nth v@@32 (- (- (seq.len v@@32) i@@40) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@40))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_90286 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_88907 v@@33)))
 (and (= (seq.len r@@2) (seq.len v@@33)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@2))) (= (seq.nth r@@2 i@@41) (seq.nth v@@33 (- (- (seq.len v@@33) i@@41) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@41))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_88907 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_89104 v@@34)))
 (and (= (seq.len r@@3) (seq.len v@@34)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@3))) (= (seq.nth r@@3 i@@42) (seq.nth v@@34 (- (- (seq.len v@@34) i@@42) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@42))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_89104 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_89301 v@@35)))
 (and (= (seq.len r@@4) (seq.len v@@35)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@4))) (= (seq.nth r@@4 i@@43) (seq.nth v@@35 (- (- (seq.len v@@35) i@@43) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@43))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_89301 v@@35))
)))
(assert (forall ((v@@36 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_90483 v@@36)))
 (and (= (seq.len r@@5) (seq.len v@@36)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@5))) (= (seq.nth r@@5 i@@44) (seq.nth v@@36 (- (- (seq.len v@@36) i@@44) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@44))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_90483 v@@36))
)))
(assert (forall ((v@@37 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_89892 v@@37)))
 (and (= (seq.len r@@6) (seq.len v@@37)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@6))) (= (seq.nth r@@6 i@@45) (seq.nth v@@37 (- (- (seq.len v@@37) i@@45) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@45))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_89892 v@@37))
)))
(assert (forall ((v@@38 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_89695 v@@38)))
 (and (= (seq.len r@@7) (seq.len v@@38)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@7))) (= (seq.nth r@@7 i@@46) (seq.nth v@@38 (- (- (seq.len v@@38) i@@46) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@46))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_89695 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_89498 v@@39)))
 (and (= (seq.len r@@8) (seq.len v@@39)) (forall ((i@@47 Int) ) (!  (=> (and (>= i@@47 0) (< i@@47 (seq.len r@@8))) (= (seq.nth r@@8 i@@47) (seq.nth v@@39 (- (- (seq.len v@@39) i@@47) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@47))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_89498 v@@39))
)))
(assert (forall ((v@@40 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@9 (ReverseVec_90089 v@@40)))
 (and (= (seq.len r@@9) (seq.len v@@40)) (forall ((i@@48 Int) ) (!  (=> (and (>= i@@48 0) (< i@@48 (seq.len r@@9))) (= (seq.nth r@@9 i@@48) (seq.nth v@@40 (- (- (seq.len v@@40) i@@48) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@48))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_90089 v@@40))
)))
(assert (forall ((v@@41 (Seq |T@#0|)) ) (! (let ((r@@10 (ReverseVec_88710 v@@41)))
 (and (= (seq.len r@@10) (seq.len v@@41)) (forall ((i@@49 Int) ) (!  (=> (and (>= i@@49 0) (< i@@49 (seq.len r@@10))) (= (seq.nth r@@10 i@@49) (seq.nth v@@41 (- (- (seq.len v@@41) i@@49) 1))))
 :qid |TreasuryComplianceScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@49))
))))
 :qid |TreasuryComplianceScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_88710 v@@41))
)))
(assert (forall ((|l#0| Bool) (i@@50 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@50) |l#0|)
 :qid |TreasuryComplianceScriptsandybpl.245:54|
 :skolemid |552|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@50))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_99804|) (|l#1| |T@[$1_Event_EventHandle]Multiset_99804|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| |l#1| handle@@0))))
(Multiset_99804 (|lambda#3| (|v#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| |l#0@@0| handle@@0)) (|v#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |TreasuryComplianceScriptsandybpl.3088:13|
 :skolemid |553|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@42) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@42) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@42)))
 :qid |TreasuryComplianceScriptsandybpl.124:29|
 :skolemid |554|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@42))
)))
(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 346432) true)
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_TreasuryComplianceScripts_update_minting_ability$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 372651) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@3 () Bool)
(declare-fun $t12 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int) T@$1_VASPDomain_VASPDomains)
(declare-fun $1_VASPDomain_VASPDomains_$memory@2 () T@$Memory_170504)
(declare-fun _$t1 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_170504)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_170137)
(declare-fun $t3 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun _$t2 () (Seq Int))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_134702)
(declare-fun $t4 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () Int)
(declare-fun $es@2 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t5 () T@$1_Event_EventHandle)
(declare-fun $t6 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_99804_| (|T@[$1_Event_EventHandle]Multiset_99804| T@$1_Event_EventHandle T@Multiset_99804) |T@[$1_Event_EventHandle]Multiset_99804|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_99804|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_99804)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|Store__T@[$1_Event_EventHandle]Multiset_99804_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_99804|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_99804)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|Store__T@[$1_Event_EventHandle]Multiset_99804_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_99804_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0 () T@$Memory_170504)
(declare-fun $es@0 () T@$EventStore)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@1 () T@$Memory_170504)
(declare-fun $es@1 () T@$EventStore)
(declare-fun |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t34@1 () T@$Mutation_128109)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t36@1 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t33@2 () T@$Mutation_170599)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t33@0 () T@$Mutation_170599)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t33@1 () T@$Mutation_170599)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|T@[Int]$1_VASPDomain_VASPDomainManager| Int) T@$1_VASPDomain_VASPDomainManager)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t24@3 () T@$Mutation_170538)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t24@2 () T@$Mutation_170538)
(declare-fun |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$m'@1| () T@$Mutation_117224)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int T@$1_VASPDomain_VASPDomains) |T@[Int]$1_VASPDomain_VASPDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t31@1 () T@$Mutation_117224)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t30@0 () Int)
(declare-fun |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1| () Bool)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t26@1 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t4@1 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t9@1 () T@$1_VASPDomain_VASPDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |inline$$1_VASPDomain_add_vasp_domain$0$$temp_0'$1_VASPDomain_VASPDomains'@1| () T@$1_VASPDomain_VASPDomains)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t24@0 () T@$Mutation_170538)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t24@1 () T@$Mutation_170538)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t21@1 () Bool)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t23@0 () Int)
(declare-fun inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 () Bool)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t20@0 () Int)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t16@0 () Bool)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t15@0 () Int)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t17@0 () Int)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t3@0 () T@$Mutation_170538)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t31@0 () T@$Mutation_117224)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t34@0 () T@$Mutation_128109)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t11@0 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t12@0 () Int)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t13@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_VASPDomain_add_vasp_domain$0$$t14@0 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_135029)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_135599)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_147694)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_147781)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_147868)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_142887)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_142974)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_143061)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_148450)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_148041)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_148549)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_148132)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_148648)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_148223)
(declare-fun |$1_AccountLimits_Window'#0'_$memory| () T@$Memory_165534)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_177061)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_184567)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_184484)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_180752)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_134233)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_181171)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t7 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun $t8 () Int)
(declare-fun $t9 () T@$1_Event_EventHandle)
(declare-fun $t10 () T@$1_VASPDomain_VASPDomainEvent)
(push 1)
(set-info :boogie-vc-id $1_TreasuryComplianceScripts_add_vasp_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 373823) (let ((anon4_Else_correct  (=> (and (not $abort_flag@3) (= $t12 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory@2) _$t1)))) (and (=> (= (ControlFlow 0 289906) (- 0 376547)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1))) (and (=> (= (ControlFlow 0 289906) (- 0 376558)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 289906) (- 0 376568)) (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (and (>= i@@51 0) (< i@@51 (seq.len $t3)))) (= (seq.nth $t3 i@@51) ($1_VASPDomain_VASPDomain _$t2)))
 :qid |TreasuryComplianceScriptsandybpl.1855:13|
 :skolemid |52|
)))) (=> (not (exists ((i@@52 Int) ) (!  (and (and (|$IsValid'u64'| i@@52) (and (>= i@@52 0) (< i@@52 (seq.len $t3)))) (= (seq.nth $t3 i@@52) ($1_VASPDomain_VASPDomain _$t2)))
 :qid |TreasuryComplianceScriptsandybpl.1855:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 289906) (- 0 376580)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) $t4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) $t4))) (and (=> (= (ControlFlow 0 289906) (- 0 376592)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) $t4)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) $t4)) 1))) (and (=> (= (ControlFlow 0 289906) (- 0 376610)) (not (not (= _$t0 186537453)))) (=> (not (not (= _$t0 186537453))) (and (=> (= (ControlFlow 0 289906) (- 0 376624)) (not (> (seq.len _$t2) 63))) (=> (not (> (seq.len _$t2) 63)) (and (=> (= (ControlFlow 0 289906) (- 0 376636)) (exists ((i@@53 Int) ) (!  (and (and (|$IsValid'u64'| i@@53) (and (>= i@@53 0) (< i@@53 (seq.len $t12)))) (= (seq.nth $t12 i@@53) ($1_VASPDomain_VASPDomain _$t2)))
 :qid |TreasuryComplianceScriptsandybpl.1855:13|
 :skolemid |52|
))) (=> (exists ((i@@54 Int) ) (!  (and (and (|$IsValid'u64'| i@@54) (and (>= i@@54 0) (< i@@54 (seq.len $t12)))) (= (seq.nth $t12 i@@54) ($1_VASPDomain_VASPDomain _$t2)))
 :qid |TreasuryComplianceScriptsandybpl.1855:13|
 :skolemid |52|
)) (and (=> (= (ControlFlow 0 289906) (- 0 376646)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $EmptyEventStore) $t5)))
(let ((stream_new (let ((len (|l#Multiset_99804| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@0) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t6))))
(Multiset_99804 (|Store__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@0) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t6) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $EmptyEventStore) $t5 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@43 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| expected) handle@@1)) v@@43) (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| actual) handle@@1)) v@@43))
 :qid |TreasuryComplianceScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |TreasuryComplianceScriptsandybpl.3094:13|
 :skolemid |85|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $EmptyEventStore) $t5)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_99804| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@1) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t6))))
(Multiset_99804 (|Store__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@1) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t6) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $EmptyEventStore) $t5 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@44 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| expected@@0) handle@@2)) v@@44) (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| actual@@0) handle@@2)) v@@44))
 :qid |TreasuryComplianceScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |TreasuryComplianceScriptsandybpl.3094:13|
 :skolemid |85|
))))) (=> (= (ControlFlow 0 289906) (- 0 376671)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@2) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@2) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $EmptyEventStore) $t5)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_99804| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@2) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t6))))
(Multiset_99804 (|Store__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@2) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| $t6) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $EmptyEventStore) $t5 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@45 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| actual@@1) handle@@3)) v@@45) (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| expected@@1) handle@@3)) v@@45))
 :qid |TreasuryComplianceScriptsandybpl.134:13|
 :skolemid |3|
)))
 :qid |TreasuryComplianceScriptsandybpl.3094:13|
 :skolemid |85|
)))))))))))))))))))))))))))
(let ((anon4_Then_correct  (=> (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (=> (= (ControlFlow 0 290162) (- 0 376311)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (and (>= i@@55 0) (< i@@55 (seq.len $t3)))) (= (seq.nth $t3 i@@55) ($1_VASPDomain_VASPDomain _$t2)))
 :qid |TreasuryComplianceScriptsandybpl.1855:13|
 :skolemid |52|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) $t4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) $t4)) 1))) (not (= _$t0 186537453))) (> (seq.len _$t2) 63))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (exists ((i@@56 Int) ) (!  (and (and (|$IsValid'u64'| i@@56) (and (>= i@@56 0) (< i@@56 (seq.len $t3)))) (= (seq.nth $t3 i@@56) ($1_VASPDomain_VASPDomain _$t2)))
 :qid |TreasuryComplianceScriptsandybpl.1855:13|
 :skolemid |52|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) $t4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) $t4)) 1))) (not (= _$t0 186537453))) (> (seq.len _$t2) 63)) (=> (= (ControlFlow 0 290162) (- 0 376377)) (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1)) (= 5 $abort_code@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= 5 $abort_code@4))) (and (exists ((i@@57 Int) ) (!  (and (and (|$IsValid'u64'| i@@57) (and (>= i@@57 0) (< i@@57 (seq.len $t3)))) (= (seq.nth $t3 i@@57) ($1_VASPDomain_VASPDomain _$t2)))
 :qid |TreasuryComplianceScriptsandybpl.1855:13|
 :skolemid |52|
)) (= 7 $abort_code@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) $t4)) (= 5 $abort_code@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) $t4)) 1)) (= 3 $abort_code@4))) (and (not (= _$t0 186537453)) (= 2 $abort_code@4))) (and (> (seq.len _$t2) 63) (= 7 $abort_code@4))) (= 3 $abort_code@4)) (= 2 $abort_code@4)) (= 5 $abort_code@4)) (= 7 $abort_code@4))))))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon44_Else_correct  (=> (not $abort_flag@2) (=> (and (and (= $abort_code@4 $abort_code@3) (= $abort_flag@3 $abort_flag@2)) (and (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory@0) (= $es@2 $es@0))) (and (=> (= (ControlFlow 0 289448) 290162) anon4_Then_correct) (=> (= (ControlFlow 0 289448) 289906) anon4_Else_correct))))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$L7_correct  (=> (and (and (= $abort_code@4 inline$$1_VASPDomain_add_vasp_domain$0$$t17@1) (= $abort_flag@3 true)) (and (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory@1) (= $es@2 $es@1))) (and (=> (= (ControlFlow 0 288506) 290162) anon4_Then_correct) (=> (= (ControlFlow 0 288506) 289906) anon4_Else_correct)))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon44_Then_correct  (=> (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 $abort_code@3) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory@0)) (and (= $es@1 $es@0) (= (ControlFlow 0 289462) 288506))) inline$$1_VASPDomain_add_vasp_domain$0$L7_correct))))
(let ((|inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1| (|v#$Mutation_128109| inline$$1_VASPDomain_add_vasp_domain$0$$t34@1)) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_99804| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@3) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| inline$$1_VASPDomain_add_vasp_domain$0$$t36@1))))
(Multiset_99804 (|Store__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@3) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| inline$$1_VASPDomain_add_vasp_domain$0$$t36@1) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 289432) 289462) inline$$1_VASPDomain_add_vasp_domain$0$anon44_Then_correct) (=> (= (ControlFlow 0 289432) 289448) inline$$1_VASPDomain_add_vasp_domain$0$anon44_Else_correct)))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon43_Else_correct  (=> (and (and (not $abort_flag@2) (= inline$$1_VASPDomain_add_vasp_domain$0$$t34@1 ($Mutation_128109 (|l#$Mutation_170599| inline$$1_VASPDomain_add_vasp_domain$0$$t33@2) (seq.++ (|p#$Mutation_170599| inline$$1_VASPDomain_add_vasp_domain$0$$t33@2) (seq.unit 0)) (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|v#$Mutation_170599| inline$$1_VASPDomain_add_vasp_domain$0$$t33@2))))) (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t36@1 ($1_VASPDomain_VASPDomainEvent false inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 _$t1)) (= (ControlFlow 0 289438) 289432))) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct|)))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon43_Then_correct  (=> (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 $abort_code@3) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory@0)) (and (= $es@1 $es) (= (ControlFlow 0 289476) 288506))) inline$$1_VASPDomain_add_vasp_domain$0$L7_correct))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon42_Then$1_correct  (=> (= inline$$1_VASPDomain_add_vasp_domain$0$$t33@2 inline$$1_VASPDomain_add_vasp_domain$0$$t33@0) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 289528) 289476) inline$$1_VASPDomain_add_vasp_domain$0$anon43_Then_correct) (=> (= (ControlFlow 0 289528) 289438) inline$$1_VASPDomain_add_vasp_domain$0$anon43_Else_correct))))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon42_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= (ControlFlow 0 289526) 289528)) inline$$1_VASPDomain_add_vasp_domain$0$anon42_Then$1_correct)))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon42_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t33@1 ($Mutation_170599 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (= inline$$1_VASPDomain_add_vasp_domain$0$$t33@2 inline$$1_VASPDomain_add_vasp_domain$0$$t33@1)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 289323) 289476) inline$$1_VASPDomain_add_vasp_domain$0$anon43_Then_correct) (=> (= (ControlFlow 0 289323) 289438) inline$$1_VASPDomain_add_vasp_domain$0$anon43_Else_correct))))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon41_Else_correct  (=> (and (and (not $abort_flag@1) (= inline$$1_VASPDomain_add_vasp_domain$0$$t24@3 ($Mutation_170538 (|l#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@2) (|p#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@2) ($1_VASPDomain_VASPDomains (|v#$Mutation_117224| |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$m'@1|))))) (and (= $1_VASPDomain_VASPDomains_$memory@0 ($Memory_170504 (|Store__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) (|a#$Global| (|l#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@3)) true) (|Store__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) (|a#$Global| (|l#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@3)) (|v#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@3)))) (|$IsValid'address'| 186537453))) (and (=> (= (ControlFlow 0 289301) 289526) inline$$1_VASPDomain_add_vasp_domain$0$anon42_Then_correct) (=> (= (ControlFlow 0 289301) 289323) inline$$1_VASPDomain_add_vasp_domain$0$anon42_Else_correct)))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon41_Then_correct  (=> (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 $abort_code@2) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory)) (and (= $es@1 $es) (= (ControlFlow 0 289542) 288506))) inline$$1_VASPDomain_add_vasp_domain$0$L7_correct))))
(let ((|inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$m'@1| ($Mutation_117224 (|l#$Mutation_117224| inline$$1_VASPDomain_add_vasp_domain$0$$t31@1) (|p#$Mutation_117224| inline$$1_VASPDomain_add_vasp_domain$0$$t31@1) (seq.++ (|v#$Mutation_117224| inline$$1_VASPDomain_add_vasp_domain$0$$t31@1) (seq.unit inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1)))) (and (=> (= (ControlFlow 0 289253) 289542) inline$$1_VASPDomain_add_vasp_domain$0$anon41_Then_correct) (=> (= (ControlFlow 0 289253) 289301) inline$$1_VASPDomain_add_vasp_domain$0$anon41_Else_correct)))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon40_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t31@1 ($Mutation_117224 (|l#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@2) (seq.++ (|p#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@2) (seq.unit 0)) (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@2)))) (= (ControlFlow 0 289259) 289253)) |inline$$1_Vector_push_back'$1_VASPDomain_VASPDomain'$0$anon0_correct|))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon40_Else_correct  (=> (and (not inline$$Not$0$dst@1) (= inline$$1_VASPDomain_add_vasp_domain$0$$t30@0 inline$$1_VASPDomain_add_vasp_domain$0$$t30@0)) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 inline$$1_VASPDomain_add_vasp_domain$0$$t30@0) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory)) (and (= $es@1 $es) (= (ControlFlow 0 289186) 288506))) inline$$1_VASPDomain_add_vasp_domain$0$L7_correct))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon39_Else$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_add_vasp_domain$0$$t30@0) (= inline$$1_VASPDomain_add_vasp_domain$0$$t30@0 7)) (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t30@0 inline$$1_VASPDomain_add_vasp_domain$0$$t30@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 289170) 289259) inline$$1_VASPDomain_add_vasp_domain$0$anon40_Then_correct) (=> (= (ControlFlow 0 289170) 289186) inline$$1_VASPDomain_add_vasp_domain$0$anon40_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1|)) (= (ControlFlow 0 289130) 289170)) inline$$1_VASPDomain_add_vasp_domain$0$anon39_Else$1_correct)))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon39_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 289136) 289130)) inline$$Not$0$anon0_correct)))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon39_Then_correct  (=> (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 $abort_code@2) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory)) (and (= $es@1 $es) (= (ControlFlow 0 289556) 288506))) inline$$1_VASPDomain_add_vasp_domain$0$L7_correct))))
(let ((|inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$res@1| (exists ((i@@58 Int) ) (!  (and (and (|$IsValid'u64'| i@@58) (and (>= i@@58 0) (< i@@58 (seq.len inline$$1_VASPDomain_add_vasp_domain$0$$t26@1)))) (= (seq.nth inline$$1_VASPDomain_add_vasp_domain$0$$t26@1 i@@58) inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1))
 :qid |TreasuryComplianceScriptsandybpl.1855:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 289086) 289556) inline$$1_VASPDomain_add_vasp_domain$0$anon39_Then_correct) (=> (= (ControlFlow 0 289086) 289136) inline$$1_VASPDomain_add_vasp_domain$0$anon39_Else_correct)))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon38_Else_correct  (=> (and (and (not $abort_flag@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1)) (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t26@1 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@2))) (= (ControlFlow 0 289092) 289086))) |inline$$1_Vector_contains'$1_VASPDomain_VASPDomain'$0$anon0_correct|)))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon38_Then_correct  (=> (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 $abort_code@2) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory)) (and (= $es@1 $es) (= (ControlFlow 0 289570) 288506))) inline$$1_VASPDomain_add_vasp_domain$0$L7_correct))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$L3_correct  (=> (= $abort_code@2 inline$$1_VASPDomain_create_vasp_domain$0$$t4@1) (=> (and (= $abort_flag@1 true) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0)) (and (=> (= (ControlFlow 0 288986) 289570) inline$$1_VASPDomain_add_vasp_domain$0$anon38_Then_correct) (=> (= (ControlFlow 0 288986) 289092) inline$$1_VASPDomain_add_vasp_domain$0$anon38_Else_correct))))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon7_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t4@1 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0) (= (ControlFlow 0 288980) 288986))) inline$$1_VASPDomain_create_vasp_domain$0$L3_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t4@1 $abort_code@1) (= (ControlFlow 0 289018) 288986))) inline$$1_VASPDomain_create_vasp_domain$0$L3_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon7_Then_correct  (=> (and inline$$Le$0$dst@1 (= inline$$1_VASPDomain_create_vasp_domain$0$$t9@1 ($1_VASPDomain_VASPDomain _$t2))) (=> (and (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t9@1 inline$$1_VASPDomain_create_vasp_domain$0$$t9@1) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1 inline$$1_VASPDomain_create_vasp_domain$0$$t9@1))) (and (=> (= (ControlFlow 0 289004) 289570) inline$$1_VASPDomain_add_vasp_domain$0$anon38_Then_correct) (=> (= (ControlFlow 0 289004) 289092) inline$$1_VASPDomain_add_vasp_domain$0$anon38_Else_correct))))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_create_vasp_domain$0$$t8@0) (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 7)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 288964) 289004) inline$$1_VASPDomain_create_vasp_domain$0$anon7_Then_correct) (=> (= (ControlFlow 0 288964) 288980) inline$$1_VASPDomain_create_vasp_domain$0$anon7_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u8'$0$l@1| 63)) (= (ControlFlow 0 288928) 288964)) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else$1_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 288934) 288928)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t2)) (and (=> (= (ControlFlow 0 288868) 289018) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Then_correct) (=> (= (ControlFlow 0 288868) 288934) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else_correct)))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon0_correct  (=> (and (= _$t2 _$t2) (= (ControlFlow 0 288874) 288868)) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon37_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_VASPDomain_add_vasp_domain$0$$temp_0'$1_VASPDomain_VASPDomains'@1| (|v#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@2))) (and (= |inline$$1_VASPDomain_add_vasp_domain$0$$temp_0'$1_VASPDomain_VASPDomains'@1| |inline$$1_VASPDomain_add_vasp_domain$0$$temp_0'$1_VASPDomain_VASPDomains'@1|) (= (ControlFlow 0 289024) 288874))) inline$$1_VASPDomain_create_vasp_domain$0$anon0_correct)))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon37_Then_correct  (=> (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 $abort_code@1) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory)) (and (= $es@1 $es) (= (ControlFlow 0 289584) 288506))) inline$$1_VASPDomain_add_vasp_domain$0$L7_correct))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon36_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$1_VASPDomain_add_vasp_domain$0$$t24@2 inline$$1_VASPDomain_add_vasp_domain$0$$t24@0)) (and (=> (= (ControlFlow 0 289636) 289584) inline$$1_VASPDomain_add_vasp_domain$0$anon37_Then_correct) (=> (= (ControlFlow 0 289636) 289024) inline$$1_VASPDomain_add_vasp_domain$0$anon37_Else_correct))))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon36_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1)) (= (ControlFlow 0 289634) 289636)) inline$$1_VASPDomain_add_vasp_domain$0$anon36_Then$1_correct)))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon36_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t24@1 ($Mutation_170538 ($Global _$t1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$1_VASPDomain_add_vasp_domain$0$$t24@2 inline$$1_VASPDomain_add_vasp_domain$0$$t24@1))) (and (=> (= (ControlFlow 0 288590) 289584) inline$$1_VASPDomain_add_vasp_domain$0$anon37_Then_correct) (=> (= (ControlFlow 0 288590) 289024) inline$$1_VASPDomain_add_vasp_domain$0$anon37_Else_correct))))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon35_Then_correct  (=> inline$$1_VASPDomain_add_vasp_domain$0$$t21@1 (and (=> (= (ControlFlow 0 288568) 289634) inline$$1_VASPDomain_add_vasp_domain$0$anon36_Then_correct) (=> (= (ControlFlow 0 288568) 288590) inline$$1_VASPDomain_add_vasp_domain$0$anon36_Else_correct)))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon35_Else_correct  (=> (and (not inline$$1_VASPDomain_add_vasp_domain$0$$t21@1) (= inline$$1_VASPDomain_add_vasp_domain$0$$t23@0 inline$$1_VASPDomain_add_vasp_domain$0$$t23@0)) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 inline$$1_VASPDomain_add_vasp_domain$0$$t23@0) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory)) (and (= $es@1 $es) (= (ControlFlow 0 288564) 288506))) inline$$1_VASPDomain_add_vasp_domain$0$L7_correct))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon34_Then_correct  (=> inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 (=> (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t21@1 (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_add_vasp_domain$0$$t23@0) (= inline$$1_VASPDomain_add_vasp_domain$0$$t23@0 5)) (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t23@0 inline$$1_VASPDomain_add_vasp_domain$0$$t23@0) (= inline$$1_VASPDomain_add_vasp_domain$0$$t21@1 inline$$1_VASPDomain_add_vasp_domain$0$$t21@1))) (and (=> (= (ControlFlow 0 288548) 288568) inline$$1_VASPDomain_add_vasp_domain$0$anon35_Then_correct) (=> (= (ControlFlow 0 288548) 288564) inline$$1_VASPDomain_add_vasp_domain$0$anon35_Else_correct)))))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon34_Else_correct  (=> (and (not inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1) (= inline$$1_VASPDomain_add_vasp_domain$0$$t20@0 inline$$1_VASPDomain_add_vasp_domain$0$$t20@0)) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 inline$$1_VASPDomain_add_vasp_domain$0$$t20@0) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory)) (and (= $es@1 $es) (= (ControlFlow 0 288500) 288506))) inline$$1_VASPDomain_add_vasp_domain$0$L7_correct))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon33_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_add_vasp_domain$0$$t20@0) (= inline$$1_VASPDomain_add_vasp_domain$0$$t20@0 5)) (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t20@0 inline$$1_VASPDomain_add_vasp_domain$0$$t20@0) (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1))) (and (=> (= (ControlFlow 0 288484) 288548) inline$$1_VASPDomain_add_vasp_domain$0$anon34_Then_correct) (=> (= (ControlFlow 0 288484) 288500) inline$$1_VASPDomain_add_vasp_domain$0$anon34_Else_correct))))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon32_Then_correct  (=> inline$$1_VASPDomain_add_vasp_domain$0$$t16@0 (=> (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_add_vasp_domain$0$$t15@0)) (= 5 inline$$1_VASPDomain_add_vasp_domain$0$$t17@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_add_vasp_domain$0$$t15@0)) 1)) (= 3 inline$$1_VASPDomain_add_vasp_domain$0$$t17@0))) (and (not (= _$t0 186537453)) (= 2 inline$$1_VASPDomain_add_vasp_domain$0$$t17@0))) (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@0 inline$$1_VASPDomain_add_vasp_domain$0$$t17@0)) (=> (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t17@1 inline$$1_VASPDomain_add_vasp_domain$0$$t17@0) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory)) (and (= $es@1 $es) (= (ControlFlow 0 289722) 288506))) inline$$1_VASPDomain_add_vasp_domain$0$L7_correct)))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon33_Then_correct true))
(let ((inline$$1_VASPDomain_tc_domain_manager_exists$0$anon0_correct  (=> (|$IsValid'address'| 186537453) (=> (and (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1 inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1)) (and (=> (= (ControlFlow 0 288442) 289650) inline$$1_VASPDomain_add_vasp_domain$0$anon33_Then_correct) (=> (= (ControlFlow 0 288442) 288484) inline$$1_VASPDomain_add_vasp_domain$0$anon33_Else_correct))))))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon32_Else_correct  (=> (and (not inline$$1_VASPDomain_add_vasp_domain$0$$t16@0) (= (ControlFlow 0 288448) 288442)) inline$$1_VASPDomain_tc_domain_manager_exists$0$anon0_correct)))
(let ((inline$$1_VASPDomain_add_vasp_domain$0$anon0_correct  (=> (and (= (seq.len (|p#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_170538| inline$$1_VASPDomain_add_vasp_domain$0$$t24@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_117224| inline$$1_VASPDomain_add_vasp_domain$0$$t31@0)) 0) (= (seq.len (|p#$Mutation_170599| inline$$1_VASPDomain_add_vasp_domain$0$$t33@0)) 0)) (and (= (seq.len (|p#$Mutation_128109| inline$$1_VASPDomain_add_vasp_domain$0$$t34@0)) 0) (= inline$$1_VASPDomain_add_vasp_domain$0$$t11@0 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1))))) (=> (and (and (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t12@0 _$t0) (= inline$$1_VASPDomain_add_vasp_domain$0$$t13@0 (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t14@0 ($1_VASPDomain_VASPDomainEvent false ($1_VASPDomain_VASPDomain _$t2) _$t1)) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= inline$$1_VASPDomain_add_vasp_domain$0$$t15@0 _$t0) (= inline$$1_VASPDomain_add_vasp_domain$0$$t16@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_add_vasp_domain$0$$t15@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_add_vasp_domain$0$$t15@0)) 1))) (not (= _$t0 186537453))))))) (and (=> (= (ControlFlow 0 288355) 289722) inline$$1_VASPDomain_add_vasp_domain$0$anon32_Then_correct) (=> (= (ControlFlow 0 288355) 288448) inline$$1_VASPDomain_add_vasp_domain$0$anon32_Else_correct)))))))
(let ((anon0$1_correct  (=> (and (and (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_135029| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr)) 4))))
 :qid |TreasuryComplianceScriptsandybpl.20300:20|
 :skolemid |306|
)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_135599| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@0)) 3))))
 :qid |TreasuryComplianceScriptsandybpl.20304:20|
 :skolemid |307|
))) (and (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_135599| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@1)) 3))))
 :qid |TreasuryComplianceScriptsandybpl.20308:20|
 :skolemid |308|
)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_135599| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_135599| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@2)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |TreasuryComplianceScriptsandybpl.20312:20|
 :skolemid |309|
)))) (=> (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_147694| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20316:22|
 :skolemid |310|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_147781| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20316:269|
 :skolemid |311|
))) (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_147868| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20316:517|
 :skolemid |312|
))) (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142887| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20320:22|
 :skolemid |313|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142974| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20320:232|
 :skolemid |314|
))) (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143061| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@1)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20320:443|
 :skolemid |315|
)))) (=> (and (and (and (and (and (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_148450| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_148041| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |TreasuryComplianceScriptsandybpl.20324:22|
 :skolemid |316|
)) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_148549| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_148132| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@3)) 2))))
 :qid |TreasuryComplianceScriptsandybpl.20324:293|
 :skolemid |317|
))) (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_148648| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_148223| |$1_Diem_Preburn'#0'_$memory|) addr1@@4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@4)) 2))))
 :qid |TreasuryComplianceScriptsandybpl.20324:565|
 :skolemid |318|
))) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_165534| |$1_AccountLimits_Window'#0'_$memory|) addr@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@3) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@3)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@3)) 6)))))
 :qid |TreasuryComplianceScriptsandybpl.20328:20|
 :skolemid |319|
))) (and (and (and (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177061| $1_DualAttestation_Credential_$memory) addr1@@5) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@5)) 2)))))
 :qid |TreasuryComplianceScriptsandybpl.20332:20|
 :skolemid |320|
)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184567| $1_DiemAccount_DiemAccount_$memory) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@4)))
 :qid |TreasuryComplianceScriptsandybpl.20336:20|
 :skolemid |321|
))) (and (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184484| |$1_DiemAccount_Balance'#0'_$memory|) addr@@5) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@5)) 2)))))
 :qid |TreasuryComplianceScriptsandybpl.20340:20|
 :skolemid |322|
)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180752| $1_DesignatedDealer_Dealer_$memory) addr@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@6)) 2))))
 :qid |TreasuryComplianceScriptsandybpl.20344:20|
 :skolemid |323|
)))) (and (and (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177061| $1_DualAttestation_Credential_$memory) addr@@7) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@7)) 5)))))
 :qid |TreasuryComplianceScriptsandybpl.20348:20|
 :skolemid |324|
)) (|$IsValid'address'| _$t0)) (and (|$IsValid'address'| _$t1) (|$IsValid'vec'u8''| _$t2))))) (and (and (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |TreasuryComplianceScriptsandybpl.20360:20|
 :skolemid |325|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@0)))
(|$IsValid'$1_VASPDomain_VASPDomainManager'| $rsc@@0))
 :qid |TreasuryComplianceScriptsandybpl.20364:20|
 :skolemid |326|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) $a_0@@1)))
 (and (|$IsValid'$1_VASPDomain_VASPDomains'| $rsc@@1) (and (and (let (($range_1 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@59 $i_2))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1) i@@59))) 63)))
 :qid |TreasuryComplianceScriptsandybpl.20369:140|
 :skolemid |327|
))) (let (($range_3 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@60 $i_4))
(let (($range_5 ($Range (+ i@@60 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@12 $i_6))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1) i@@60) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1) j@@12)))))
 :qid |TreasuryComplianceScriptsandybpl.20371:98|
 :skolemid |328|
)))))
 :qid |TreasuryComplianceScriptsandybpl.20370:202|
 :skolemid |329|
)))) (let (($range_7 (|$domains#$1_VASPDomain_VASPDomains| $rsc@@1)))
(forall (($i_8 Int) ) (!  (=> (and (>= $i_8 0) (< $i_8 (seq.len $range_7))) (let (($elem (seq.nth $range_7 $i_8)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem)) 63)))
 :qid |TreasuryComplianceScriptsandybpl.20372:229|
 :skolemid |330|
))))))
 :qid |TreasuryComplianceScriptsandybpl.20368:20|
 :skolemid |331|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) $a_0@@1))
)) (= $t3 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1))))) (and (and (= $t4 _$t0) (= $t5 (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (and (= $t6 ($1_VASPDomain_VASPDomainEvent false ($1_VASPDomain_VASPDomain _$t2) _$t1)) (let ((addr@@8 _$t0))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_134233| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_184567| $1_DiemAccount_DiemAccount_$memory) addr@@8)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_181171| $1_AccountFreezing_FreezingBit_$memory) addr@@8) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_181171| $1_AccountFreezing_FreezingBit_$memory) addr@@8))))))))) (and (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t7 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1))))) (and (and (= $t8 _$t0) (= $t9 (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (and (= $t10 ($1_VASPDomain_VASPDomainEvent false ($1_VASPDomain_VASPDomain _$t2) _$t1)) (= (ControlFlow 0 289726) 288355)))))) inline$$1_VASPDomain_add_vasp_domain$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_99804| stream@@4) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@4) v@@46) 0)
 :qid |TreasuryComplianceScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |TreasuryComplianceScriptsandybpl.3078:13|
 :skolemid |84|
))) (= (ControlFlow 0 286178) 289726)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 373823) 286178) inline$$InitEventStore$0$anon0_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t35@1 () T@$Mutation_128109)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t37@1 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t34 () T@$Mutation_170599)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun _$t1@@0 () Int)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t34@1 () T@$Mutation_170599)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t24@3 () T@$Mutation_170538)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t24@2 () T@$Mutation_170538)
(declare-fun |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'| () T@$Mutation_117224)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0@@0 () T@$Memory_170504)
(declare-fun |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| () Int)
(declare-fun |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1| () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$e@1| () T@$1_VASPDomain_VASPDomain)
(declare-fun |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@1| () T@$Mutation_117224)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t31@1 () T@$Mutation_117224)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1| () Bool)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t30@0 () Int)
(declare-fun |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@1| () Int)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t26@1 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t4@1@@0 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0@@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun inline$$Le$0$dst@1@@0 () Bool)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@0 () T@$1_VASPDomain_VASPDomain)
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@0| () Int)
(declare-fun |inline$$1_VASPDomain_remove_vasp_domain$0$$temp_0'$1_VASPDomain_VASPDomains'@1| () T@$1_VASPDomain_VASPDomains)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t24@0 () T@$Mutation_170538)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t24@1 () T@$Mutation_170538)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t21@1 () Bool)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t23@0 () Int)
(declare-fun inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0 () Bool)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t20@0 () Int)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t16@0 () Bool)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t15@0 () Int)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t17@0 () Int)
(declare-fun _$t0@@0 () Int)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t3@0 () T@$Mutation_170538)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t31@0 () T@$Mutation_117224)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t34@0 () T@$Mutation_170599)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t35@0 () T@$Mutation_128109)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t11@0 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t12@0 () Int)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t13@0 () T@$1_Event_EventHandle)
(declare-fun inline$$1_VASPDomain_remove_vasp_domain$0$$t14@0 () T@$1_VASPDomain_VASPDomainEvent)
(declare-fun $t3@@0 () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun $t4@@0 () Int)
(declare-fun $t5@@0 () T@$1_Event_EventHandle)
(declare-fun $t6@@0 () T@$1_VASPDomain_VASPDomainEvent)
(push 1)
(set-info :boogie-vc-id $1_TreasuryComplianceScripts_remove_vasp_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 376704) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> $abort_flag@4 (=> (and (= $abort_code@5 $abort_code@5) (= (ControlFlow 0 294236) (- 0 379107))) (or (or (or (= 3 $abort_code@5) (= 2 $abort_code@5)) (= 5 $abort_code@5)) (= 7 $abort_code@5))))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon45_Else_correct  (=> (not $abort_flag@3@@0) (=> (and (= $abort_flag@4 $abort_flag@3@@0) (= $abort_code@5 $abort_code@4@@0)) (and (=> (= (ControlFlow 0 293898) 294236) anon3_Then_correct) (=> (= (ControlFlow 0 293898) 294186) anon3_Else_correct))))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct  (=> (and (= $abort_flag@4 true) (= $abort_code@5 inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1)) (and (=> (= (ControlFlow 0 292813) 294236) anon3_Then_correct) (=> (= (ControlFlow 0 292813) 294186) anon3_Else_correct)))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon45_Then_correct  (=> (and (and $abort_flag@3@@0 (= $abort_code@4@@0 $abort_code@4@@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 $abort_code@4@@0) (= (ControlFlow 0 293912) 292813))) inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct)))
(let ((|inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1@@0| (|v#$Mutation_128109| inline$$1_VASPDomain_remove_vasp_domain$0$$t35@1)) (= $es@0@@0 (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1@@0|)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_99804| stream@@5)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@5) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| inline$$1_VASPDomain_remove_vasp_domain$0$$t37@1))))
(Multiset_99804 (|Store__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@5) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| inline$$1_VASPDomain_remove_vasp_domain$0$$t37@1) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$handle@1@@0| stream_new@@3)))))) (and (=> (= (ControlFlow 0 293882) 293912) inline$$1_VASPDomain_remove_vasp_domain$0$anon45_Then_correct) (=> (= (ControlFlow 0 293882) 293898) inline$$1_VASPDomain_remove_vasp_domain$0$anon45_Else_correct)))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon44_Else_correct  (=> (and (and (not $abort_flag@3@@0) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t35@1 ($Mutation_128109 (|l#$Mutation_170599| inline$$1_VASPDomain_remove_vasp_domain$0$$t34) (seq.++ (|p#$Mutation_170599| inline$$1_VASPDomain_remove_vasp_domain$0$$t34) (seq.unit 0)) (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|v#$Mutation_170599| inline$$1_VASPDomain_remove_vasp_domain$0$$t34))))) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t37@1 ($1_VASPDomain_VASPDomainEvent true inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@0 _$t1@@0)) (= (ControlFlow 0 293888) 293882))) |inline$$1_Event_emit_event'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct@@0|)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon44_Then_correct  (=> (and (and $abort_flag@3@@0 (= $abort_code@4@@0 $abort_code@4@@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 $abort_code@4@@0) (= (ControlFlow 0 293926) 292813))) inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon43_Then$1_correct  (=> (and (= $abort_code@4@@0 $EXEC_FAILURE_CODE) (= $abort_flag@3@@0 true)) (and (=> (= (ControlFlow 0 293978) 293926) inline$$1_VASPDomain_remove_vasp_domain$0$anon44_Then_correct) (=> (= (ControlFlow 0 293978) 293888) inline$$1_VASPDomain_remove_vasp_domain$0$anon44_Else_correct)))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon43_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= (ControlFlow 0 293976) 293978)) inline$$1_VASPDomain_remove_vasp_domain$0$anon43_Then$1_correct)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon43_Else_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t34@1 ($Mutation_170599 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (and (= $abort_code@4@@0 $abort_code@3@@0) (= $abort_flag@3@@0 $abort_flag@2@@0))) (and (=> (= (ControlFlow 0 293773) 293926) inline$$1_VASPDomain_remove_vasp_domain$0$anon44_Then_correct) (=> (= (ControlFlow 0 293773) 293888) inline$$1_VASPDomain_remove_vasp_domain$0$anon44_Else_correct)))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon42_Else_correct  (=> (and (and (not $abort_flag@2@@0) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t24@3 ($Mutation_170538 (|l#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@2) (|p#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@2) ($1_VASPDomain_VASPDomains (|v#$Mutation_117224| |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'|))))) (and (= $1_VASPDomain_VASPDomains_$memory@0@@0 ($Memory_170504 (|Store__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) (|a#$Global| (|l#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@3)) true) (|Store__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) (|a#$Global| (|l#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@3)) (|v#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@3)))) (|$IsValid'address'| 186537453))) (and (=> (= (ControlFlow 0 293751) 293976) inline$$1_VASPDomain_remove_vasp_domain$0$anon43_Then_correct) (=> (= (ControlFlow 0 293751) 293773) inline$$1_VASPDomain_remove_vasp_domain$0$anon43_Else_correct)))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon42_Then_correct  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 $abort_code@3@@0) (= (ControlFlow 0 293992) 292813))) inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct)))
(let ((|inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Then$1_correct|  (=> (and (= $abort_flag@2@@0 true) (= $abort_code@3@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 293701) 293992) inline$$1_VASPDomain_remove_vasp_domain$0$anon42_Then_correct) (=> (= (ControlFlow 0 293701) 293751) inline$$1_VASPDomain_remove_vasp_domain$0$anon42_Else_correct)))))
(let ((|inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Then_correct|  (=> (and (not (and (>= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 0) (< |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| (seq.len |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1|)))) (= (ControlFlow 0 293699) 293701)) |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Else_correct|  (=> (and (>= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 0) (< |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| (seq.len |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$e@1| (seq.nth |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1| |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2|)) (= |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$m'@1| ($Mutation_117224 (|l#$Mutation_117224| inline$$1_VASPDomain_remove_vasp_domain$0$$t31@1) (|p#$Mutation_117224| inline$$1_VASPDomain_remove_vasp_domain$0$$t31@1) (seq.++ (seq.extract |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1| 0 (- |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 0)) (seq.extract |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1| (+ |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 1) (- (seq.len |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1|) (+ |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 1))))))) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= $abort_code@3@@0 $abort_code@2@@0))) (and (=> (= (ControlFlow 0 293649) 293992) inline$$1_VASPDomain_remove_vasp_domain$0$anon42_Then_correct) (=> (= (ControlFlow 0 293649) 293751) inline$$1_VASPDomain_remove_vasp_domain$0$anon42_Else_correct))))))
(let ((|inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$v@1| (|v#$Mutation_117224| inline$$1_VASPDomain_remove_vasp_domain$0$$t31@1)) (and (=> (= (ControlFlow 0 293625) 293699) |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 293625) 293649) |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon3_Else_correct|)))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon41_Then_correct  (=> |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1| (=> (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t31@1 ($Mutation_117224 (|l#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@2) (seq.++ (|p#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@2) (seq.unit 0)) (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@2)))) (= (ControlFlow 0 293709) 293625)) |inline$$1_Vector_remove'$1_VASPDomain_VASPDomain'$0$anon0_correct|))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon41_Else_correct  (=> (not |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1|) (=> (and (|$IsValid'u64'| 2) (|$IsValid'u64'| inline$$1_VASPDomain_remove_vasp_domain$0$$t30@0)) (=> (and (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t30@0 7) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t30@0 inline$$1_VASPDomain_remove_vasp_domain$0$$t30@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 inline$$1_VASPDomain_remove_vasp_domain$0$$t30@0) (= (ControlFlow 0 293514) 292813))) inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct)))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon40_Else_correct  (=> (not $abort_flag@1@@0) (=> (and (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2|) (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1| |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1|)) (and (=> (= (ControlFlow 0 293482) 293709) inline$$1_VASPDomain_remove_vasp_domain$0$anon41_Then_correct) (=> (= (ControlFlow 0 293482) 293514) inline$$1_VASPDomain_remove_vasp_domain$0$anon41_Else_correct))))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon40_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 $abort_code@2@@0) (= (ControlFlow 0 294006) 292813))) inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct)))
(let ((|inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@1|) (=> (and (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1| false) (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| 0)) (and (=> (= (ControlFlow 0 293442) 294006) inline$$1_VASPDomain_remove_vasp_domain$0$anon40_Then_correct) (=> (= (ControlFlow 0 293442) 293482) inline$$1_VASPDomain_remove_vasp_domain$0$anon40_Else_correct))))))
(let ((|inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res1@1| true) (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@2| |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@1|)) (and (=> (= (ControlFlow 0 293452) 294006) inline$$1_VASPDomain_remove_vasp_domain$0$anon40_Then_correct) (=> (= (ControlFlow 0 293452) 293482) inline$$1_VASPDomain_remove_vasp_domain$0$anon40_Else_correct))))))
(let ((|inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$res2@1| (|$IndexOfVec'$1_VASPDomain_VASPDomain'| inline$$1_VASPDomain_remove_vasp_domain$0$$t26@1 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@0)) (and (=> (= (ControlFlow 0 293430) 293452) |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 293430) 293442) |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon3_Else_correct|)))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon39_Else_correct  (=> (and (and (not $abort_flag@1@@0) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@0 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t26@1 (|$domains#$1_VASPDomain_VASPDomains| (|v#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@2))) (= (ControlFlow 0 293460) 293430))) |inline$$1_Vector_index_of'$1_VASPDomain_VASPDomain'$0$anon0_correct|)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon39_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 $abort_code@2@@0) (= (ControlFlow 0 294020) 292813))) inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$L3_correct@@0  (=> (= $abort_code@2@@0 inline$$1_VASPDomain_create_vasp_domain$0$$t4@1@@0) (=> (and (= $abort_flag@1@@0 true) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@0 inline$$1_VASPDomain_create_vasp_domain$0$$ret0@0@@0)) (and (=> (= (ControlFlow 0 293293) 294020) inline$$1_VASPDomain_remove_vasp_domain$0$anon39_Then_correct) (=> (= (ControlFlow 0 293293) 293460) inline$$1_VASPDomain_remove_vasp_domain$0$anon39_Else_correct))))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon7_Else_correct@@0  (=> (and (and (not inline$$Le$0$dst@1@@0) (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@0 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@0)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t4@1@@0 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@0) (= (ControlFlow 0 293287) 293293))) inline$$1_VASPDomain_create_vasp_domain$0$L3_correct@@0)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t4@1@@0 $abort_code@1@@0) (= (ControlFlow 0 293325) 293293))) inline$$1_VASPDomain_create_vasp_domain$0$L3_correct@@0)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon7_Then_correct@@0  (=> (and inline$$Le$0$dst@1@@0 (= inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@0 ($1_VASPDomain_VASPDomain _$t2@@0))) (=> (and (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@0 inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@0) (= $abort_code@2@@0 $abort_code@1@@0)) (and (= $abort_flag@1@@0 $abort_flag@0@@0) (= inline$$1_VASPDomain_create_vasp_domain$0$$ret0@1@@0 inline$$1_VASPDomain_create_vasp_domain$0$$t9@1@@0))) (and (=> (= (ControlFlow 0 293311) 294020) inline$$1_VASPDomain_remove_vasp_domain$0$anon39_Then_correct) (=> (= (ControlFlow 0 293311) 293460) inline$$1_VASPDomain_remove_vasp_domain$0$anon39_Else_correct))))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else$1_correct@@0  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@0) (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@0 7)) (and (= inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@0 inline$$1_VASPDomain_create_vasp_domain$0$$t8@0@@0) (= inline$$Le$0$dst@1@@0 inline$$Le$0$dst@1@@0))) (and (=> (= (ControlFlow 0 293271) 293311) inline$$1_VASPDomain_create_vasp_domain$0$anon7_Then_correct@@0) (=> (= (ControlFlow 0 293271) 293287) inline$$1_VASPDomain_create_vasp_domain$0$anon7_Else_correct@@0))))))
(let ((inline$$Le$0$anon0_correct@@0  (=> (and (= inline$$Le$0$dst@1@@0 (<= |inline$$1_Vector_length'u8'$0$l@1@@0| 63)) (= (ControlFlow 0 293235) 293271)) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else$1_correct@@0)))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else_correct@@0  (=> (not $abort_flag@0@@0) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 293241) 293235)) inline$$Le$0$anon0_correct@@0))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@0| (seq.len _$t2@@0)) (and (=> (= (ControlFlow 0 293175) 293325) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Then_correct@@0) (=> (= (ControlFlow 0 293175) 293241) inline$$1_VASPDomain_create_vasp_domain$0$anon6_Else_correct@@0)))))
(let ((inline$$1_VASPDomain_create_vasp_domain$0$anon0_correct@@0  (=> (and (= _$t2@@0 _$t2@@0) (= (ControlFlow 0 293181) 293175)) |inline$$1_Vector_length'u8'$0$anon0_correct@@0|)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon38_Else_correct  (=> (and (and (not $abort_flag@0@@0) (= |inline$$1_VASPDomain_remove_vasp_domain$0$$temp_0'$1_VASPDomain_VASPDomains'@1| (|v#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@2))) (and (= |inline$$1_VASPDomain_remove_vasp_domain$0$$temp_0'$1_VASPDomain_VASPDomains'@1| |inline$$1_VASPDomain_remove_vasp_domain$0$$temp_0'$1_VASPDomain_VASPDomains'@1|) (= (ControlFlow 0 293331) 293181))) inline$$1_VASPDomain_create_vasp_domain$0$anon0_correct@@0)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon38_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 $abort_code@1@@0) (= (ControlFlow 0 294034) 292813))) inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon37_Then$1_correct  (=> (= $abort_flag@0@@0 true) (=> (and (= $abort_code@1@@0 $EXEC_FAILURE_CODE) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t24@2 inline$$1_VASPDomain_remove_vasp_domain$0$$t24@0)) (and (=> (= (ControlFlow 0 294086) 294034) inline$$1_VASPDomain_remove_vasp_domain$0$anon38_Then_correct) (=> (= (ControlFlow 0 294086) 293331) inline$$1_VASPDomain_remove_vasp_domain$0$anon38_Else_correct))))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon37_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1@@0)) (= (ControlFlow 0 294084) 294086)) inline$$1_VASPDomain_remove_vasp_domain$0$anon37_Then$1_correct)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon37_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1@@0) (=> (and (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t24@1 ($Mutation_170538 ($Global _$t1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1@@0))) (= $abort_flag@0@@0 false)) (and (= $abort_code@1@@0 $abort_code@0@@0) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t24@2 inline$$1_VASPDomain_remove_vasp_domain$0$$t24@1))) (and (=> (= (ControlFlow 0 292897) 294034) inline$$1_VASPDomain_remove_vasp_domain$0$anon38_Then_correct) (=> (= (ControlFlow 0 292897) 293331) inline$$1_VASPDomain_remove_vasp_domain$0$anon38_Else_correct))))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon36_Then_correct  (=> inline$$1_VASPDomain_remove_vasp_domain$0$$t21@1 (and (=> (= (ControlFlow 0 292875) 294084) inline$$1_VASPDomain_remove_vasp_domain$0$anon37_Then_correct) (=> (= (ControlFlow 0 292875) 292897) inline$$1_VASPDomain_remove_vasp_domain$0$anon37_Else_correct)))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon36_Else_correct  (=> (and (and (not inline$$1_VASPDomain_remove_vasp_domain$0$$t21@1) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t23@0 inline$$1_VASPDomain_remove_vasp_domain$0$$t23@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 inline$$1_VASPDomain_remove_vasp_domain$0$$t23@0) (= (ControlFlow 0 292871) 292813))) inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon35_Then_correct  (=> inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0 (=> (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t21@1 (|Select__T@[Int]Bool_| (|domain#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1@@0)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_remove_vasp_domain$0$$t23@0) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t23@0 5)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t23@0 inline$$1_VASPDomain_remove_vasp_domain$0$$t23@0) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t21@1 inline$$1_VASPDomain_remove_vasp_domain$0$$t21@1))) (and (=> (= (ControlFlow 0 292855) 292875) inline$$1_VASPDomain_remove_vasp_domain$0$anon36_Then_correct) (=> (= (ControlFlow 0 292855) 292871) inline$$1_VASPDomain_remove_vasp_domain$0$anon36_Else_correct)))))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon35_Else_correct  (=> (and (and (not inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t20@0 inline$$1_VASPDomain_remove_vasp_domain$0$$t20@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 inline$$1_VASPDomain_remove_vasp_domain$0$$t20@0) (= (ControlFlow 0 292807) 292813))) inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon34_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_remove_vasp_domain$0$$t20@0) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t20@0 5)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t20@0 inline$$1_VASPDomain_remove_vasp_domain$0$$t20@0) (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0 inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 292791) 292855) inline$$1_VASPDomain_remove_vasp_domain$0$anon35_Then_correct) (=> (= (ControlFlow 0 292791) 292807) inline$$1_VASPDomain_remove_vasp_domain$0$anon35_Else_correct))))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon33_Then_correct  (=> inline$$1_VASPDomain_remove_vasp_domain$0$$t16@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_remove_vasp_domain$0$$t15@0)) (= 5 inline$$1_VASPDomain_remove_vasp_domain$0$$t17@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_remove_vasp_domain$0$$t15@0)) 1)) (= 3 inline$$1_VASPDomain_remove_vasp_domain$0$$t17@0))) (and (not (= _$t0@@0 186537453)) (= 2 inline$$1_VASPDomain_remove_vasp_domain$0$$t17@0))) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@0 inline$$1_VASPDomain_remove_vasp_domain$0$$t17@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t17@1 inline$$1_VASPDomain_remove_vasp_domain$0$$t17@0) (= (ControlFlow 0 294172) 292813))) inline$$1_VASPDomain_remove_vasp_domain$0$L7_correct))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon34_Then_correct true))
(let ((inline$$1_VASPDomain_tc_domain_manager_exists$0$anon0_correct@@0  (=> (|$IsValid'address'| 186537453) (=> (and (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (= inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0 inline$$1_VASPDomain_tc_domain_manager_exists$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 292749) 294100) inline$$1_VASPDomain_remove_vasp_domain$0$anon34_Then_correct) (=> (= (ControlFlow 0 292749) 292791) inline$$1_VASPDomain_remove_vasp_domain$0$anon34_Else_correct))))))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon33_Else_correct  (=> (and (not inline$$1_VASPDomain_remove_vasp_domain$0$$t16@0) (= (ControlFlow 0 292755) 292749)) inline$$1_VASPDomain_tc_domain_manager_exists$0$anon0_correct@@0)))
(let ((inline$$1_VASPDomain_remove_vasp_domain$0$anon0_correct  (=> (and (= (seq.len (|p#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_170538| inline$$1_VASPDomain_remove_vasp_domain$0$$t24@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_117224| inline$$1_VASPDomain_remove_vasp_domain$0$$t31@0)) 0) (= (seq.len (|p#$Mutation_170599| inline$$1_VASPDomain_remove_vasp_domain$0$$t34@0)) 0)) (and (= (seq.len (|p#$Mutation_128109| inline$$1_VASPDomain_remove_vasp_domain$0$$t35@0)) 0) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t11@0 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1@@0))))) (=> (and (and (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t12@0 _$t0@@0) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t13@0 (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t14@0 ($1_VASPDomain_VASPDomainEvent true ($1_VASPDomain_VASPDomain _$t2@@0) _$t1@@0)) (= _$t0@@0 _$t0@@0))) (and (and (= _$t1@@0 _$t1@@0) (= _$t2@@0 _$t2@@0)) (and (= inline$$1_VASPDomain_remove_vasp_domain$0$$t15@0 _$t0@@0) (= inline$$1_VASPDomain_remove_vasp_domain$0$$t16@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_remove_vasp_domain$0$$t15@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_remove_vasp_domain$0$$t15@0)) 1))) (not (= _$t0@@0 186537453))))))) (and (=> (= (ControlFlow 0 292662) 294172) inline$$1_VASPDomain_remove_vasp_domain$0$anon33_Then_correct) (=> (= (ControlFlow 0 292662) 292755) inline$$1_VASPDomain_remove_vasp_domain$0$anon33_Else_correct)))))))
(let ((anon0$1_correct@@0  (=> (and (and (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_135029| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@9)) 4))))
 :qid |TreasuryComplianceScriptsandybpl.20546:20|
 :skolemid |332|
)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_135599| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@10)) 3))))
 :qid |TreasuryComplianceScriptsandybpl.20550:20|
 :skolemid |333|
))) (and (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_135599| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@11)) 3))))
 :qid |TreasuryComplianceScriptsandybpl.20554:20|
 :skolemid |334|
)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_135599| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@12) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_135599| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@12)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@12)) 3))))
 :qid |TreasuryComplianceScriptsandybpl.20558:20|
 :skolemid |335|
)))) (=> (and (and (and (and (and (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_147694| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20562:22|
 :skolemid |336|
)) (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_147781| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner@@3)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20562:269|
 :skolemid |337|
))) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_147868| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) mint_cap_owner@@4)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20562:517|
 :skolemid |338|
))) (and (and (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142887| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@6)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20566:22|
 :skolemid |339|
)) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142974| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@7)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20566:232|
 :skolemid |340|
))) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143061| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@8)) 1))))
 :qid |TreasuryComplianceScriptsandybpl.20566:443|
 :skolemid |341|
)))) (and (and (and (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_148450| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_148041| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@9)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@9)) 2))))
 :qid |TreasuryComplianceScriptsandybpl.20570:22|
 :skolemid |342|
)) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_148549| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_148132| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@10)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@10)) 2))))
 :qid |TreasuryComplianceScriptsandybpl.20570:293|
 :skolemid |343|
))) (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_148648| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_148223| |$1_Diem_Preburn'#0'_$memory|) addr1@@11)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@11)) 2))))
 :qid |TreasuryComplianceScriptsandybpl.20570:565|
 :skolemid |344|
))) (and (and (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_165534| |$1_AccountLimits_Window'#0'_$memory|) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@13) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@13)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@13)) 6)))))
 :qid |TreasuryComplianceScriptsandybpl.20574:20|
 :skolemid |345|
)) (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177061| $1_DualAttestation_Credential_$memory) addr1@@12) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@12)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr1@@12)) 2)))))
 :qid |TreasuryComplianceScriptsandybpl.20578:20|
 :skolemid |346|
))) (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184567| $1_DiemAccount_DiemAccount_$memory) addr@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@14)))
 :qid |TreasuryComplianceScriptsandybpl.20582:20|
 :skolemid |347|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184484| |$1_DiemAccount_Balance'#0'_$memory|) addr@@15) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@15)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@15)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@15)) 2)))))
 :qid |TreasuryComplianceScriptsandybpl.20586:20|
 :skolemid |348|
)))))) (and (and (and (and (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180752| $1_DesignatedDealer_Dealer_$memory) addr@@16) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@16)) 2))))
 :qid |TreasuryComplianceScriptsandybpl.20590:20|
 :skolemid |349|
)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177061| $1_DualAttestation_Credential_$memory) addr@@17) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@17)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_134702| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) addr@@17)) 5)))))
 :qid |TreasuryComplianceScriptsandybpl.20594:20|
 :skolemid |350|
))) (and (|$IsValid'address'| _$t0@@0) (|$IsValid'address'| _$t1@@0))) (and (and (|$IsValid'vec'u8''| _$t2@@0) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |TreasuryComplianceScriptsandybpl.20606:20|
 :skolemid |351|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_134702| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@3)))
(|$IsValid'$1_VASPDomain_VASPDomainManager'| $rsc@@3))
 :qid |TreasuryComplianceScriptsandybpl.20610:20|
 :skolemid |352|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) $a_0@@4)))
 (and (|$IsValid'$1_VASPDomain_VASPDomains'| $rsc@@4) (and (and (let (($range_1@@0 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))))
(forall (($i_2@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_2@@0) (let ((i@@61 $i_2@@0))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4) i@@61))) 63)))
 :qid |TreasuryComplianceScriptsandybpl.20615:140|
 :skolemid |353|
))) (let (($range_3@@0 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))))
(forall (($i_4@@0 Int) ) (!  (=> ($InRange $range_3@@0 $i_4@@0) (let ((i@@62 $i_4@@0))
(let (($range_5@@0 ($Range (+ i@@62 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))))
(forall (($i_6@@0 Int) ) (!  (=> ($InRange $range_5@@0 $i_6@@0) (let ((j@@13 $i_6@@0))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4) i@@62) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4) j@@13)))))
 :qid |TreasuryComplianceScriptsandybpl.20617:98|
 :skolemid |354|
)))))
 :qid |TreasuryComplianceScriptsandybpl.20616:202|
 :skolemid |355|
)))) (let (($range_7@@0 (|$domains#$1_VASPDomain_VASPDomains| $rsc@@4)))
(forall (($i_8@@0 Int) ) (!  (=> (and (>= $i_8@@0 0) (< $i_8@@0 (seq.len $range_7@@0))) (let (($elem@@0 (seq.nth $range_7@@0 $i_8@@0)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem@@0)) 63)))
 :qid |TreasuryComplianceScriptsandybpl.20618:229|
 :skolemid |356|
))))))
 :qid |TreasuryComplianceScriptsandybpl.20614:20|
 :skolemid |357|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) $a_0@@4))
))))) (and (and (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0)) (and (= _$t2@@0 _$t2@@0) (= $t3@@0 (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_170504| $1_VASPDomain_VASPDomains_$memory) _$t1@@0))))) (and (and (= $t4@@0 _$t0@@0) (= $t5@@0 (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_170137| $1_VASPDomain_VASPDomainManager_$memory) 186537453)))) (and (= $t6@@0 ($1_VASPDomain_VASPDomainEvent true ($1_VASPDomain_VASPDomain _$t2@@0) _$t1@@0)) (= (ControlFlow 0 294176) 292662)))))) inline$$1_VASPDomain_remove_vasp_domain$0$anon0_correct))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_99804_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_99804| stream@@6) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_99804| stream@@6) v@@47) 0)
 :qid |TreasuryComplianceScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |TreasuryComplianceScriptsandybpl.3078:13|
 :skolemid |84|
))) (= (ControlFlow 0 290563) 294176)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 376704) 290563) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
