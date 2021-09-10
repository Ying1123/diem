(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update eager)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_92986 0)) ((($Memory_92986 (|domain#$Memory_92986| |T@[Int]Bool|) (|contents#$Memory_92986| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_142657 0)) ((($Memory_142657 (|domain#$Memory_142657| |T@[Int]Bool|) (|contents#$Memory_142657| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_139546 0)) ((($Memory_139546 (|domain#$Memory_139546| |T@[Int]Bool|) (|contents#$Memory_139546| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_137340 0)) ((($Memory_137340 (|domain#$Memory_137340| |T@[Int]Bool|) (|contents#$Memory_137340| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_137620 0)) ((($Memory_137620 (|domain#$Memory_137620| |T@[Int]Bool|) (|contents#$Memory_137620| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_137307 0)) ((($Memory_137307 (|domain#$Memory_137307| |T@[Int]Bool|) (|contents#$Memory_137307| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_137092 0)) ((($Memory_137092 (|domain#$Memory_137092| |T@[Int]Bool|) (|contents#$Memory_137092| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_134553 0)) ((($Memory_134553 (|domain#$Memory_134553| |T@[Int]Bool|) (|contents#$Memory_134553| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_134489 0)) ((($Memory_134489 (|domain#$Memory_134489| |T@[Int]Bool|) (|contents#$Memory_134489| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_133199 0)) ((($Memory_133199 (|domain#$Memory_133199| |T@[Int]Bool|) (|contents#$Memory_133199| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_133135 0)) ((($Memory_133135 (|domain#$Memory_133135| |T@[Int]Bool|) (|contents#$Memory_133135| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_132823 0)) ((($Memory_132823 (|domain#$Memory_132823| |T@[Int]Bool|) (|contents#$Memory_132823| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_122720 0)) ((($Memory_122720 (|domain#$Memory_122720| |T@[Int]Bool|) (|contents#$Memory_122720| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_122433 0)) ((($Memory_122433 (|domain#$Memory_122433| |T@[Int]Bool|) (|contents#$Memory_122433| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101445 0)) ((($Memory_101445 (|domain#$Memory_101445| |T@[Int]Bool|) (|contents#$Memory_101445| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_121956 0)) ((($Memory_121956 (|domain#$Memory_121956| |T@[Int]Bool|) (|contents#$Memory_121956| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_139153 0)) ((($Memory_139153 (|domain#$Memory_139153| |T@[Int]Bool|) (|contents#$Memory_139153| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114296 0)) ((($Memory_114296 (|domain#$Memory_114296| |T@[Int]Bool|) (|contents#$Memory_114296| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114209 0)) ((($Memory_114209 (|domain#$Memory_114209| |T@[Int]Bool|) (|contents#$Memory_114209| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109576 0)) ((($Memory_109576 (|domain#$Memory_109576| |T@[Int]Bool|) (|contents#$Memory_109576| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109489 0)) ((($Memory_109489 (|domain#$Memory_109489| |T@[Int]Bool|) (|contents#$Memory_109489| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_114651 0)) ((($Memory_114651 (|domain#$Memory_114651| |T@[Int]Bool|) (|contents#$Memory_114651| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_115076 0)) ((($Memory_115076 (|domain#$Memory_115076| |T@[Int]Bool|) (|contents#$Memory_115076| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_139379 0)) ((($Memory_139379 (|domain#$Memory_139379| |T@[Int]Bool|) (|contents#$Memory_139379| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114560 0)) ((($Memory_114560 (|domain#$Memory_114560| |T@[Int]Bool|) (|contents#$Memory_114560| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_101277 0)) ((($Memory_101277 (|domain#$Memory_101277| |T@[Int]Bool|) (|contents#$Memory_101277| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114977 0)) ((($Memory_114977 (|domain#$Memory_114977| |T@[Int]Bool|) (|contents#$Memory_114977| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_139288 0)) ((($Memory_139288 (|domain#$Memory_139288| |T@[Int]Bool|) (|contents#$Memory_139288| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114469 0)) ((($Memory_114469 (|domain#$Memory_114469| |T@[Int]Bool|) (|contents#$Memory_114469| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_133379 0)) ((($Memory_133379 (|domain#$Memory_133379| |T@[Int]Bool|) (|contents#$Memory_133379| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114878 0)) ((($Memory_114878 (|domain#$Memory_114878| |T@[Int]Bool|) (|contents#$Memory_114878| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_109118 0)) ((($Memory_109118 (|domain#$Memory_109118| |T@[Int]Bool|) (|contents#$Memory_109118| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101361 0)) ((($Memory_101361 (|domain#$Memory_101361| |T@[Int]Bool|) (|contents#$Memory_101361| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_108912 0)) ((($Memory_108912 (|domain#$Memory_108912| |T@[Int]Bool|) (|contents#$Memory_108912| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_104915 0)) ((($Memory_104915 (|domain#$Memory_104915| |T@[Int]Bool|) (|contents#$Memory_104915| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_104828 0)) ((($Memory_104828 (|domain#$Memory_104828| |T@[Int]Bool|) (|contents#$Memory_104828| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_104741 0)) ((($Memory_104741 (|domain#$Memory_104741| |T@[Int]Bool|) (|contents#$Memory_104741| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_104654 0)) ((($Memory_104654 (|domain#$Memory_104654| |T@[Int]Bool|) (|contents#$Memory_104654| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_104567 0)) ((($Memory_104567 (|domain#$Memory_104567| |T@[Int]Bool|) (|contents#$Memory_104567| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_105180 0)) ((($Memory_105180 (|domain#$Memory_105180| |T@[Int]Bool|) (|contents#$Memory_105180| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_103693 0)) ((($Memory_103693 (|domain#$Memory_103693| |T@[Int]Bool|) (|contents#$Memory_103693| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_103759 0)) ((($Memory_103759 (|domain#$Memory_103759| |T@[Int]Bool|) (|contents#$Memory_103759| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_103612 0)) ((($Memory_103612 (|domain#$Memory_103612| |T@[Int]Bool|) (|contents#$Memory_103612| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_103531 0)) ((($Memory_103531 (|domain#$Memory_103531| |T@[Int]Bool|) (|contents#$Memory_103531| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_103450 0)) ((($Memory_103450 (|domain#$Memory_103450| |T@[Int]Bool|) (|contents#$Memory_103450| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_103369 0)) ((($Memory_103369 (|domain#$Memory_103369| |T@[Int]Bool|) (|contents#$Memory_103369| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_103255 0)) ((($Memory_103255 (|domain#$Memory_103255| |T@[Int]Bool|) (|contents#$Memory_103255| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_138290 0)) ((($Memory_138290 (|domain#$Memory_138290| |T@[Int]Bool|) (|contents#$Memory_138290| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_103288 0)) ((($Memory_103288 (|domain#$Memory_103288| |T@[Int]Bool|) (|contents#$Memory_103288| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_102744 0)) ((($Memory_102744 (|domain#$Memory_102744| |T@[Int]Bool|) (|contents#$Memory_102744| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_102186 0)) ((($Memory_102186 (|domain#$Memory_102186| |T@[Int]Bool|) (|contents#$Memory_102186| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_101859 0)) ((($Memory_101859 (|domain#$Memory_101859| |T@[Int]Bool|) (|contents#$Memory_101859| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_99833 0)) ((($Memory_99833 (|domain#$Memory_99833| |T@[Int]Bool|) (|contents#$Memory_99833| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_68954 0)) (((Multiset_68954 (|v#Multiset_68954| |T@[$EventRep]Int|) (|l#Multiset_68954| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_68954| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_68954|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_140374 0)) ((($Mutation_140374 (|l#$Mutation_140374| T@$Location) (|p#$Mutation_140374| (Seq Int)) (|v#$Mutation_140374| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_140330 0)) ((($Mutation_140330 (|l#$Mutation_140330| T@$Location) (|p#$Mutation_140330| (Seq Int)) (|v#$Mutation_140330| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_34947 0)) ((($Mutation_34947 (|l#$Mutation_34947| T@$Location) (|p#$Mutation_34947| (Seq Int)) (|v#$Mutation_34947| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_120676 0)) ((($Mutation_120676 (|l#$Mutation_120676| T@$Location) (|p#$Mutation_120676| (Seq Int)) (|v#$Mutation_120676| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_107653 0)) ((($Mutation_107653 (|l#$Mutation_107653| T@$Location) (|p#$Mutation_107653| (Seq Int)) (|v#$Mutation_107653| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_100328 0)) ((($Mutation_100328 (|l#$Mutation_100328| T@$Location) (|p#$Mutation_100328| (Seq Int)) (|v#$Mutation_100328| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_93617 0)) ((($Mutation_93617 (|l#$Mutation_93617| T@$Location) (|p#$Mutation_93617| (Seq Int)) (|v#$Mutation_93617| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13443 0)) ((($Mutation_13443 (|l#$Mutation_13443| T@$Location) (|p#$Mutation_13443| (Seq Int)) (|v#$Mutation_13443| Int) ) ) ))
(declare-datatypes ((T@$Mutation_88994 0)) ((($Mutation_88994 (|l#$Mutation_88994| T@$Location) (|p#$Mutation_88994| (Seq Int)) (|v#$Mutation_88994| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_88248 0)) ((($Mutation_88248 (|l#$Mutation_88248| T@$Location) (|p#$Mutation_88248| (Seq Int)) (|v#$Mutation_88248| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_86844 0)) ((($Mutation_86844 (|l#$Mutation_86844| T@$Location) (|p#$Mutation_86844| (Seq Int)) (|v#$Mutation_86844| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_86098 0)) ((($Mutation_86098 (|l#$Mutation_86098| T@$Location) (|p#$Mutation_86098| (Seq Int)) (|v#$Mutation_86098| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_84694 0)) ((($Mutation_84694 (|l#$Mutation_84694| T@$Location) (|p#$Mutation_84694| (Seq Int)) (|v#$Mutation_84694| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_83948 0)) ((($Mutation_83948 (|l#$Mutation_83948| T@$Location) (|p#$Mutation_83948| (Seq Int)) (|v#$Mutation_83948| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_82544 0)) ((($Mutation_82544 (|l#$Mutation_82544| T@$Location) (|p#$Mutation_82544| (Seq Int)) (|v#$Mutation_82544| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_81798 0)) ((($Mutation_81798 (|l#$Mutation_81798| T@$Location) (|p#$Mutation_81798| (Seq Int)) (|v#$Mutation_81798| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_80394 0)) ((($Mutation_80394 (|l#$Mutation_80394| T@$Location) (|p#$Mutation_80394| (Seq Int)) (|v#$Mutation_80394| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_79648 0)) ((($Mutation_79648 (|l#$Mutation_79648| T@$Location) (|p#$Mutation_79648| (Seq Int)) (|v#$Mutation_79648| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_78244 0)) ((($Mutation_78244 (|l#$Mutation_78244| T@$Location) (|p#$Mutation_78244| (Seq Int)) (|v#$Mutation_78244| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_77498 0)) ((($Mutation_77498 (|l#$Mutation_77498| T@$Location) (|p#$Mutation_77498| (Seq Int)) (|v#$Mutation_77498| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_76094 0)) ((($Mutation_76094 (|l#$Mutation_76094| T@$Location) (|p#$Mutation_76094| (Seq Int)) (|v#$Mutation_76094| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_75348 0)) ((($Mutation_75348 (|l#$Mutation_75348| T@$Location) (|p#$Mutation_75348| (Seq Int)) (|v#$Mutation_75348| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_73944 0)) ((($Mutation_73944 (|l#$Mutation_73944| T@$Location) (|p#$Mutation_73944| (Seq Int)) (|v#$Mutation_73944| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_73198 0)) ((($Mutation_73198 (|l#$Mutation_73198| T@$Location) (|p#$Mutation_73198| (Seq Int)) (|v#$Mutation_73198| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_71756 0)) ((($Mutation_71756 (|l#$Mutation_71756| T@$Location) (|p#$Mutation_71756| (Seq Int)) (|v#$Mutation_71756| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_71010 0)) ((($Mutation_71010 (|l#$Mutation_71010| T@$Location) (|p#$Mutation_71010| (Seq Int)) (|v#$Mutation_71010| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_68954_| (|T@[$1_Event_EventHandle]Multiset_68954| T@$1_Event_EventHandle) T@Multiset_68954)
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
(declare-fun ReverseVec_13296 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_62482 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_61300 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_61497 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_61694 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_62679 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_62285 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_62088 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_61891 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_61103 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_68954| |T@[$1_Event_EventHandle]Multiset_68954|) |T@[$1_Event_EventHandle]Multiset_68954|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XDXseqArraybpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XDXseqArraybpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XDXseqArraybpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XDXseqArraybpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XDXseqArraybpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XDXseqArraybpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XDXseqArraybpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XDXseqArraybpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |XDXseqArraybpl.595:13|
 :skolemid |15|
))))
 :qid |XDXseqArraybpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |XDXseqArraybpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |XDXseqArraybpl.608:17|
 :skolemid |18|
)))))
 :qid |XDXseqArraybpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |XDXseqArraybpl.775:13|
 :skolemid |20|
))))
 :qid |XDXseqArraybpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |XDXseqArraybpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |XDXseqArraybpl.788:17|
 :skolemid |23|
)))))
 :qid |XDXseqArraybpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |XDXseqArraybpl.955:13|
 :skolemid |25|
))))
 :qid |XDXseqArraybpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |XDXseqArraybpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |XDXseqArraybpl.968:17|
 :skolemid |28|
)))))
 :qid |XDXseqArraybpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |XDXseqArraybpl.1135:13|
 :skolemid |30|
))))
 :qid |XDXseqArraybpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |XDXseqArraybpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |XDXseqArraybpl.1148:17|
 :skolemid |33|
)))))
 :qid |XDXseqArraybpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |XDXseqArraybpl.1315:13|
 :skolemid |35|
))))
 :qid |XDXseqArraybpl.1313:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |XDXseqArraybpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |XDXseqArraybpl.1328:17|
 :skolemid |38|
)))))
 :qid |XDXseqArraybpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |XDXseqArraybpl.1495:13|
 :skolemid |40|
))))
 :qid |XDXseqArraybpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |XDXseqArraybpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |XDXseqArraybpl.1508:17|
 :skolemid |43|
)))))
 :qid |XDXseqArraybpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |XDXseqArraybpl.1675:13|
 :skolemid |45|
))))
 :qid |XDXseqArraybpl.1673:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |XDXseqArraybpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |XDXseqArraybpl.1688:17|
 :skolemid |48|
)))))
 :qid |XDXseqArraybpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |XDXseqArraybpl.1855:13|
 :skolemid |50|
))))
 :qid |XDXseqArraybpl.1853:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |XDXseqArraybpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |XDXseqArraybpl.1868:17|
 :skolemid |53|
)))))
 :qid |XDXseqArraybpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |XDXseqArraybpl.2035:13|
 :skolemid |55|
))))
 :qid |XDXseqArraybpl.2033:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |XDXseqArraybpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |XDXseqArraybpl.2048:17|
 :skolemid |58|
)))))
 :qid |XDXseqArraybpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |XDXseqArraybpl.2215:13|
 :skolemid |60|
))))
 :qid |XDXseqArraybpl.2213:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |XDXseqArraybpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |XDXseqArraybpl.2228:17|
 :skolemid |63|
)))))
 :qid |XDXseqArraybpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |XDXseqArraybpl.2395:13|
 :skolemid |65|
))))
 :qid |XDXseqArraybpl.2393:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |XDXseqArraybpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |XDXseqArraybpl.2408:17|
 :skolemid |68|
)))))
 :qid |XDXseqArraybpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |XDXseqArraybpl.2581:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |XDXseqArraybpl.2597:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XDXseqArraybpl.2664:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XDXseqArraybpl.2667:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_68954_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_68954| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_68954| stream) v@@26) 0)
 :qid |XDXseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |XDXseqArraybpl.2728:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XDXseqArraybpl.2769:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |XDXseqArraybpl.2775:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XDXseqArraybpl.2825:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |XDXseqArraybpl.2831:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XDXseqArraybpl.2881:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |XDXseqArraybpl.2887:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XDXseqArraybpl.2937:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |XDXseqArraybpl.2943:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XDXseqArraybpl.2993:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |XDXseqArraybpl.2999:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XDXseqArraybpl.3049:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |XDXseqArraybpl.3055:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XDXseqArraybpl.3105:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |XDXseqArraybpl.3111:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XDXseqArraybpl.3161:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |XDXseqArraybpl.3167:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XDXseqArraybpl.3217:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |XDXseqArraybpl.3223:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XDXseqArraybpl.3273:60|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |XDXseqArraybpl.3279:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XDXseqArraybpl.3329:66|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |XDXseqArraybpl.3335:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XDXseqArraybpl.3385:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |XDXseqArraybpl.3391:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XDXseqArraybpl.3441:63|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |XDXseqArraybpl.3447:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XDXseqArraybpl.3497:79|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |XDXseqArraybpl.3503:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XDXseqArraybpl.3553:82|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |XDXseqArraybpl.3559:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XDXseqArraybpl.3609:88|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |XDXseqArraybpl.3615:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XDXseqArraybpl.3665:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |XDXseqArraybpl.3671:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |XDXseqArraybpl.3725:15|
 :skolemid |110|
)))
(assert (forall ((addr Int) ) (! true
 :qid |XDXseqArraybpl.3734:15|
 :skolemid |111|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |XDXseqArraybpl.3759:61|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |XDXseqArraybpl.4335:36|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |XDXseqArraybpl.4354:71|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |XDXseqArraybpl.4418:46|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |XDXseqArraybpl.4431:64|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |XDXseqArraybpl.4444:75|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |XDXseqArraybpl.4457:72|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |XDXseqArraybpl.4486:55|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |XDXseqArraybpl.4508:46|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |XDXseqArraybpl.4526:49|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |XDXseqArraybpl.4601:71|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |XDXseqArraybpl.4615:91|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |XDXseqArraybpl.4629:113|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |XDXseqArraybpl.4643:75|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |XDXseqArraybpl.4657:73|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |XDXseqArraybpl.4677:48|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |XDXseqArraybpl.4693:57|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |XDXseqArraybpl.4707:83|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |XDXseqArraybpl.4721:103|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |XDXseqArraybpl.4735:125|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |XDXseqArraybpl.4749:87|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |XDXseqArraybpl.4763:85|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |XDXseqArraybpl.4777:48|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |XDXseqArraybpl.4798:45|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |XDXseqArraybpl.4812:51|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |XDXseqArraybpl.4835:48|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |XDXseqArraybpl.5141:49|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |XDXseqArraybpl.5154:65|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |XDXseqArraybpl.5693:45|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |XDXseqArraybpl.5706:45|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |XDXseqArraybpl.5719:37|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |XDXseqArraybpl.5732:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |XDXseqArraybpl.5746:55|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |XDXseqArraybpl.5766:38|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |XDXseqArraybpl.5787:44|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |XDXseqArraybpl.5838:53|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |XDXseqArraybpl.5900:53|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |XDXseqArraybpl.5962:45|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |XDXseqArraybpl.5988:55|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |XDXseqArraybpl.6002:55|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@40)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@40))))
 :qid |XDXseqArraybpl.6019:38|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@41)))
 :qid |XDXseqArraybpl.6033:48|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@42)))
 :qid |XDXseqArraybpl.6047:48|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@43) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@43)))
 :qid |XDXseqArraybpl.6061:40|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@43))
)))
(assert (forall ((s@@44 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@44)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@44)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@44))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@44))))
 :qid |XDXseqArraybpl.6081:41|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@45)))
 :qid |XDXseqArraybpl.6096:53|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@46)))
 :qid |XDXseqArraybpl.6110:53|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@47)))
 :qid |XDXseqArraybpl.6124:45|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48))))
 :qid |XDXseqArraybpl.6141:60|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49))))
 :qid |XDXseqArraybpl.6158:60|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@50))))
 :qid |XDXseqArraybpl.6175:52|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50))
)))
(assert (forall ((s@@51 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51))))
 :qid |XDXseqArraybpl.6192:57|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52) true)
 :qid |XDXseqArraybpl.8483:68|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))))
 :qid |XDXseqArraybpl.8505:66|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))))
 :qid |XDXseqArraybpl.8531:66|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))))
 :qid |XDXseqArraybpl.8560:56|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))))
 :qid |XDXseqArraybpl.8590:56|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@57) true)
 :qid |XDXseqArraybpl.8924:31|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@57))
)))
(assert (forall ((s@@58 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@58) true)
 :qid |XDXseqArraybpl.9288:31|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@58))
)))
(assert (forall ((s@@59 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@59)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@59)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@59))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@59))))
 :qid |XDXseqArraybpl.9307:35|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@60)))
 :qid |XDXseqArraybpl.11110:45|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@61))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@61))))
 :qid |XDXseqArraybpl.11129:50|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@62)))
 :qid |XDXseqArraybpl.11144:52|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@63) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@63)))
 :qid |XDXseqArraybpl.11168:38|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@64) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@64)))
 :qid |XDXseqArraybpl.11182:39|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@64))
)))
(assert (forall ((s@@65 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@65)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@65)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@65))))
 :qid |XDXseqArraybpl.11209:65|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@65))
)))
(assert (forall ((s@@66 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@66)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@66))))
 :qid |XDXseqArraybpl.11594:60|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@67))))
 :qid |XDXseqArraybpl.11611:66|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@68)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@68))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@68))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@68))))
 :qid |XDXseqArraybpl.11640:50|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@69) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@69)))
 :qid |XDXseqArraybpl.11659:45|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@70)) true))
 :qid |XDXseqArraybpl.11978:87|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@71)))
 :qid |XDXseqArraybpl.12190:47|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@72)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@72))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@72))))
 :qid |XDXseqArraybpl.12210:58|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@73) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@73)))
 :qid |XDXseqArraybpl.12225:39|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@74))))
 :qid |XDXseqArraybpl.12247:58|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@75))))
 :qid |XDXseqArraybpl.12264:58|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76) true)
 :qid |XDXseqArraybpl.12279:51|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@77))))
 :qid |XDXseqArraybpl.12296:60|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@78)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@78))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@78))))
 :qid |XDXseqArraybpl.12594:47|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@79)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@79))))
 :qid |XDXseqArraybpl.12616:63|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@80)))
 :qid |XDXseqArraybpl.12631:57|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@81)))
 :qid |XDXseqArraybpl.12644:55|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@82)))
 :qid |XDXseqArraybpl.12658:55|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@83)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@83))))
 :qid |XDXseqArraybpl.12675:54|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@84) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@84)))
 :qid |XDXseqArraybpl.12689:55|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@85) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@85)))
 :qid |XDXseqArraybpl.12703:57|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@86)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@86))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@86))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@86))))
 :qid |XDXseqArraybpl.12725:56|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@87)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@87)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@87))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@87))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@87))))
 :qid |XDXseqArraybpl.12750:52|
 :skolemid |253|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@88) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@88)))
 :qid |XDXseqArraybpl.12766:54|
 :skolemid |254|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@89)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@89)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@89))))
 :qid |XDXseqArraybpl.13638:47|
 :skolemid |255|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@90)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@90)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@90))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@90))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@90))))
 :qid |XDXseqArraybpl.13662:47|
 :skolemid |256|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@91) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@91)))
 :qid |XDXseqArraybpl.13903:49|
 :skolemid |257|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@92)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@92)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@92))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@92))))
 :qid |XDXseqArraybpl.13946:49|
 :skolemid |258|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@93)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@93)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@93))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@93))))
 :qid |XDXseqArraybpl.13975:48|
 :skolemid |259|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@94) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@94)))
 :qid |XDXseqArraybpl.14270:47|
 :skolemid |260|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@94))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13296 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |XDXseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |XDXseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13296 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_62482 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |XDXseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |XDXseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62482 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_61300 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |XDXseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |XDXseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61300 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_61497 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |XDXseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |XDXseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61497 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_61694 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |XDXseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |XDXseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61694 v@@31))
)))
(assert (forall ((v@@32 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_62679 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |XDXseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |XDXseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62679 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_62285 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |XDXseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |XDXseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62285 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_62088 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |XDXseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |XDXseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62088 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_61891 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |XDXseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |XDXseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61891 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@#0|)) ) (! (let ((r@@9 (ReverseVec_61103 v@@36)))
 (and (= (seq.len r@@9) (seq.len v@@36)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@9))) (= (seq.nth r@@9 i@@42) (seq.nth v@@36 (- (- (seq.len v@@36) i@@42) 1))))
 :qid |XDXseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@42))
))))
 :qid |XDXseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61103 v@@36))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |XDXseqArraybpl.250:54|
 :skolemid |338|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_68954|) (|l#1| |T@[$1_Event_EventHandle]Multiset_68954|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_68954_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_68954| (|Select__T@[$1_Event_EventHandle]Multiset_68954_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_68954| (|Select__T@[$1_Event_EventHandle]Multiset_68954_| |l#1| handle@@0))))
(Multiset_68954 (|lambda#3| (|v#Multiset_68954| (|Select__T@[$1_Event_EventHandle]Multiset_68954_| |l#0@@0| handle@@0)) (|v#Multiset_68954| (|Select__T@[$1_Event_EventHandle]Multiset_68954_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XDXseqArraybpl.2738:13|
 :skolemid |339|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_68954_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@37) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@37)))
 :qid |XDXseqArraybpl.129:29|
 :skolemid |340|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_13443)
(declare-fun $t14@1 () T@$Mutation_100328)
(declare-fun $t24@1 () T@$Mutation_13443)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_100328)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_99833)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_101277)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_101361)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_101445)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_99833)
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
(declare-fun $t14 () T@$Mutation_100328)
(declare-fun $t14@0 () T@$Mutation_100328)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_100328)
(declare-fun $t24 () T@$Mutation_13443)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 222236) (let ((L5_correct  (=> (= $t24@0 ($Mutation_13443 (|l#$Mutation_100328| $t14@1) (seq.++ (|p#$Mutation_100328| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_100328| $t14@1)))) (=> (and (= $t24@1 ($Mutation_13443 (|l#$Mutation_13443| $t24@0) (|p#$Mutation_13443| $t24@0) _$t2)) (= $t14@2 ($Mutation_100328 (|l#$Mutation_100328| $t14@1) (|p#$Mutation_100328| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_13443| $t24@1))))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_99833 (|Store__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_100328| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_100328| $t14@2)) (|v#$Mutation_100328| $t14@2)))))) (and (=> (= (ControlFlow 0 158540) (- 0 222880)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816)) (and (=> (= (ControlFlow 0 158540) (- 0 222892)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 158540) (- 0 222904)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 158540) (- 0 222931)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 158540) (- 0 222941)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 158540) (- 0 222955)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 158540) (- 0 222979)) (= $t25 _$t2))))))))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 158598) 158540)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 158350) 158540)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 158346) (- 0 223023)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 158346) (- 0 223060)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 158594) 158346))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 158578) 158598) anon25_Then_correct) (=> (= (ControlFlow 0 158578) 158594) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 158230) 158346))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 158214) 158350) anon26_Then_correct) (=> (= (ControlFlow 0 158214) 158230) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 158178) 158214)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 158184) 158178)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_100328| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_100328| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 158132) 158578) anon24_Then_correct) (=> (= (ControlFlow 0 158132) 158184) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 158612) 158346))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 158664) 158612) anon23_Then_correct) (=> (= (ControlFlow 0 158664) 158132) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 158662) 158664)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_100328 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 158086) 158612) anon23_Then_correct) (=> (= (ControlFlow 0 158086) 158132) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 158064) (- 0 222534)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 158064) 158662) anon22_Then_correct) (=> (= (ControlFlow 0 158064) 158086) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 158694) 158346))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 158044) 158694) anon21_Then_correct) (=> (= (ControlFlow 0 158044) 158064) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 158720) 158346))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |XDXseqArraybpl.3948:20|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 158022) 158720) anon20_Then_correct) (=> (= (ControlFlow 0 158022) 158044) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_68954_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_68954| stream@@0) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_68954| stream@@0) v@@38) 0)
 :qid |XDXseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |XDXseqArraybpl.2728:13|
 :skolemid |74|
))) (= (ControlFlow 0 157910) 158022)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_100328| $t7)) 0) (= (seq.len (|p#$Mutation_100328| $t14)) 0)) (and (= (seq.len (|p#$Mutation_13443| $t24)) 0) (= (ControlFlow 0 157920) 157910))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 222236) 157920) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@9 () Bool)
(declare-fun $1_XDX_Reserve_$memory@1 () T@$Memory_101277)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_101859)
(declare-fun $t7@@0 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_103369)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_104654)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_103693)
(declare-fun $t8 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@0 () Int)
(declare-fun $t10@@0 () Int)
(declare-fun $t11@@0 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| () T@$Memory_101361)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3| () T@$Memory_101445)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@10 () Int)
(declare-fun $1_XDX_Reserve_$memory@0 () T@$Memory_101277)
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
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1| () T@$Memory_101445)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1| () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2| () T@$Memory_101445)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@0| () T@$Memory_101445)
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
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| () T@$Memory_101361)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0| () Bool)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0| () Bool)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0| () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2| () T@$Mutation_120676)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1| () T@$Mutation_34947)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@2| () T@$Mutation_34947)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3| () T@$Mutation_120676)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4| () T@$Memory_101361)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@0| () T@$Mutation_120676)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@1| () T@$Mutation_120676)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t2@0| () T@$Mutation_120676)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@0| () T@$Mutation_34947)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t3@0| () Int)
(declare-fun $t40 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1| () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| () T@$Memory_101361)
(declare-fun $abort_code@2 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| () T@$Memory_101361)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@0| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_103369)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t4@1 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_103759)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_103759)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_103369)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_103369)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_103759)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_103759)
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
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2 () T@$Mutation_107653)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1 () T@$Mutation_107653)
(declare-fun |inline$$1_Vector_push_back'vec'u8''$0$m'@1| () T@$Mutation_88248)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1 () T@$Mutation_88248)
(declare-fun $t33@0 () (Seq Int))
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t4@0 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 () Int)
(declare-fun |inline$$1_Vector_contains'vec'u8''$0$res@1| () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 () (Seq (Seq Int)))
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@0 () T@$Mutation_107653)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@0 () T@$Mutation_88248)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t5@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t6@0 () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t39@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t40@0| () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| () T@$Memory_101361)
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
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_103288)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_103450)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_103531)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_103612)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_114209)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_114296)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_109489)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_109576)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_114878)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_114469)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_114977)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_114560)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_108912)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_114651)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_109118)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_115076)
(declare-fun |$1_AccountLimits_Window'$1_XUS_XUS'_$memory| () T@$Memory_122433)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_121956)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'_| (|T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| Int) |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun |$1_AccountLimits_Window'$1_XDX_XDX'_$memory| () T@$Memory_122720)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| Int) |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(push 1)
(set-info :boogie-vc-id $1_XDX_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 223320) (let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Then_correct| true))
(let ((anon33_Else_correct  (=> (not $abort_flag@9) (and (=> (= (ControlFlow 0 167737) (- 0 229204)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 167737) (- 0 229216)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 167737) (- 0 229234)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 167737) (- 0 229248)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816)) (and (=> (= (ControlFlow 0 167737) (- 0 229258)) (not (or (= 1000000 0) (> 1000000 10000000000)))) (=> (not (or (= 1000000 0) (> 1000000 10000000000))) (and (=> (= (ControlFlow 0 167737) (- 0 229277)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 167737) (- 0 229288)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t7@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t7@@0))) (and (=> (= (ControlFlow 0 167737) (- 0 229300)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t7@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t7@@0)) 0))) (and (=> (= (ControlFlow 0 167737) (- 0 229318)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 167737) (- 0 229332)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 167737) (- 0 229346)) (not (exists ((i@@44 Int) ) (!  (and (and (|$IsValid'u64'| i@@44) (and (>= i@@44 0) (< i@@44 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))) i@@44) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXseqArraybpl.2040:13|
 :skolemid |57|
)))) (=> (not (exists ((i@@45 Int) ) (!  (and (and (|$IsValid'u64'| i@@45) (and (>= i@@45 0) (< i@@45 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))) i@@45) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXseqArraybpl.2040:13|
 :skolemid |57|
))) (and (=> (= (ControlFlow 0 167737) (- 0 229366)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104654| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@0))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_104654| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@0)))) (and (=> (= (ControlFlow 0 167737) (- 0 229379)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 167737) (- 0 229391)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103693| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103693| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8)))) (and (=> (= (ControlFlow 0 167737) (- 0 229433)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 167737) (- 0 229444)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 167737) (- 0 229454)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t10@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t10@@0))) (and (=> (= (ControlFlow 0 167737) (- 0 229466)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t10@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t10@@0)) 0))) (and (=> (= (ControlFlow 0 167737) (- 0 229484)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 167737) (- 0 229498)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t11@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t11@@0))) (and (=> (= (ControlFlow 0 167737) (- 0 229510)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t11@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t11@@0)) 1))) (and (=> (= (ControlFlow 0 167737) (- 0 229528)) (not (not (= (|$addr#$signer| _$t1@@0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@0) 186537453))) (and (=> (= (ControlFlow 0 167737) (- 0 229542)) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816) (and (=> (= (ControlFlow 0 167737) (- 0 229548)) (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) 0)) (=> (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) 0) (and (=> (= (ControlFlow 0 167737) (- 0 229560)) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) false)) (=> (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) false) (and (=> (= (ControlFlow 0 167737) (- 0 229572)) (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0@@0)) (=> (= (ControlFlow 0 167737) (- 0 229581)) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory@1) 173345816)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 160624) (- 0 228561)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (= (|$addr#$signer| _$t0@@0) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816)) (or (= 1000000 0) (> 1000000 10000000000))) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t7@@0)) 0))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (exists ((i@@46 Int) ) (!  (and (and (|$IsValid'u64'| i@@46) (and (>= i@@46 0) (< i@@46 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))) i@@46) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXseqArraybpl.2040:13|
 :skolemid |57|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104654| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103693| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8)))) (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t10@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t10@@0)) 0))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t11@@0)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (= (|$addr#$signer| _$t0@@0) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816)) (or (= 1000000 0) (> 1000000 10000000000))) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t7@@0)) 0))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (and (>= i@@47 0) (< i@@47 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@3)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@3)))) i@@47) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXseqArraybpl.2040:13|
 :skolemid |57|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_104654| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103693| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8)))) (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t10@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t10@@0)) 0))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t11@@0)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (=> (= (ControlFlow 0 160624) (- 0 228807)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t13@0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816) (= 6 $t13@0))) (and (or (= 1000000 0) (> 1000000 10000000000)) (= 7 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0)) (= 6 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t7@@0)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t7@@0)) 0)) (= 3 $t13@0))) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t13@0))) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t13@0))) (and (exists ((i@@48 Int) ) (!  (and (and (|$IsValid'u64'| i@@48) (and (>= i@@48 0) (< i@@48 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@4)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@4)))) i@@48) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXseqArraybpl.2040:13|
 :skolemid |57|
)) (= 7 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104654| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@0))) (= 4 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 $t13@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103693| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8))) (= 1 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0)) (= 6 $t13@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t10@@0)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t10@@0)) 0)) (= 3 $t13@0))) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) $t11@@0)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $t11@@0)) 1)) (= 3 $t13@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t13@0))))))))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@9 (= $abort_code@10 $abort_code@10)) (and (= $t13@0 $abort_code@10) (= (ControlFlow 0 167751) 160624))) L3_correct)))
(let ((anon32_Then$1_correct  (=> (= $1_XDX_Reserve_$memory@1 $1_XDX_Reserve_$memory) (=> (and (= $abort_flag@9 true) (= $abort_code@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 167803) 167751) anon33_Then_correct) (=> (= (ControlFlow 0 167803) 167737) anon33_Else_correct))))))
(let ((anon32_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 167801) 167803)) anon32_Then$1_correct)))
(let ((anon32_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) (|$addr#$signer| _$t0@@0))) (=> (and (and (= $1_XDX_Reserve_$memory@0 ($Memory_101277 (|Store__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_XDX_Reserve_| (|contents#$Memory_101277| $1_XDX_Reserve_$memory) (|$addr#$signer| _$t0@@0) $t43@0))) (= $1_XDX_Reserve_$memory@1 $1_XDX_Reserve_$memory@0)) (and (= $abort_flag@9 $abort_flag@8) (= $abort_code@10 $abort_code@9))) (and (=> (= (ControlFlow 0 167339) 167751) anon33_Then_correct) (=> (= (ControlFlow 0 167339) 167737) anon33_Else_correct))))))
(let ((anon31_Else_correct  (=> (not $abort_flag@8) (=> (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1|) (= $t43@0 ($1_XDX_Reserve |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 167317) 167801) anon32_Then_correct) (=> (= (ControlFlow 0 167317) 167339) anon32_Else_correct))))))
(let ((anon31_Then_correct  (=> (and (and $abort_flag@8 (= $abort_code@9 $abort_code@9)) (and (= $t13@0 $abort_code@9) (= (ControlFlow 0 167817) 160624))) L3_correct)))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|  (=> (= $abort_code@9 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1|) (=> (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@0|) (= $abort_flag@8 true)) (and (=> (= (ControlFlow 0 167183) 167817) anon31_Then_correct) (=> (= (ControlFlow 0 167183) 167317) anon31_Else_correct))))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Then_correct|  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| $abort_code@8) (= (ControlFlow 0 167177) 167183))) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Then_correct|  (=> |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) (= 5 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|) (= (ControlFlow 0 167209) 167183))) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Then_correct|  (=> |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0| (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) (= 5 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) 1)) (= 3 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|))) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|) (= (ControlFlow 0 167281) 167183))) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Else_correct|  (=> (and (not $abort_flag@7) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1| (|$1_Diem_Preburn'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (=> (and (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1|) (= $abort_code@9 $abort_code@8)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1|) (= $abort_flag@8 $abort_flag@7))) (and (=> (= (ControlFlow 0 167163) 167817) anon31_Then_correct) (=> (= (ControlFlow 0 167163) 167317) anon31_Else_correct))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@8 $abort_code@7) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 167105) 167177) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 167105) 167163) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@7 true)) (and (= $abort_code@8 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 167135) 167177) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 167135) 167163) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816))) (and (=> (= (ControlFlow 0 167077) 167135) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 167077) 167105) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Else_correct|  (=> (and (not |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0|) (= (ControlFlow 0 167141) 167077)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Else_correct|  (=> (and (not |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0|) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)))) (and (=> (= (ControlFlow 0 166920) 167209) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Then_correct|) (=> (= (ControlFlow 0 166920) 167141) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Else_correct|)))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t1@0| (|$addr#$signer| _$t1@@0)) (= _$t1@@0 _$t1@@0)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0| (|$addr#$signer| _$t1@@0)) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453)))))) (and (=> (= (ControlFlow 0 166902) 167281) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Then_correct|) (=> (= (ControlFlow 0 166902) 166920) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Else_correct|)))))
(let ((anon30_Else_correct  (=> (not $abort_flag@6) (=> (and (= $t41 (|$addr#$signer| _$t1@@0)) (= (ControlFlow 0 167287) 166902)) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon0_correct|))))
(let ((anon30_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t13@0 $abort_code@7) (= (ControlFlow 0 167831) 160624))) L3_correct)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Else_correct|  (=> (and (and (not $abort_flag@5) (= $abort_code@7 $abort_code@6)) (and (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1|) (= $abort_flag@6 $abort_flag@5))) (and (=> (= (ControlFlow 0 166388) 167831) anon30_Then_correct) (=> (= (ControlFlow 0 166388) 167287) anon30_Else_correct)))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$L3_correct|  (=> (= $abort_code@7 |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1|) (=> (and (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2|) (= $abort_flag@6 true)) (and (=> (= (ControlFlow 0 166300) 167831) anon30_Then_correct) (=> (= (ControlFlow 0 166300) 167287) anon30_Else_correct))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Then_correct|  (=> $abort_flag@5 (=> (and (and (= $abort_code@6 $abort_code@6) (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1|)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1| $abort_code@6) (= (ControlFlow 0 166402) 166300))) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then$1_correct|  (=> (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@6 $EXEC_FAILURE_CODE) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 166454) 166402) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 166454) 166388) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Else_correct|))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 166452) 166454)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then$1_correct|)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0))) (=> (and (and (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@0| ($Memory_101445 (|Store__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t18@1|))) (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4))) (and (=> (= (ControlFlow 0 166378) 166402) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 166378) 166388) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Else_correct|))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Then_correct|  (=> inline$$Not$3$dst@1 (=> (and (= _$t0@@0 _$t0@@0) (|$IsValid'u64'| 18446744073709551615)) (=> (and (and (|$IsValid'u64'| 18446744073709551615) (|$IsValid'u64'| 86400000000)) (and (|$IsValid'u64'| 18446744073709551615) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t18@1| (|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 18446744073709551615 18446744073709551615 86400000000 18446744073709551615)))) (and (=> (= (ControlFlow 0 166356) 166452) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 166356) 166378) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Else_correct|)))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Else_correct|  (=> (not inline$$Not$3$dst@1) (=> (and (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= (ControlFlow 0 166294) 166300))) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0$1_correct|  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| 6)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= inline$$Not$3$dst@1 inline$$Not$3$dst@1))) (and (=> (= (ControlFlow 0 166278) 166356) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 166278) 166294) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Else_correct|))))))
(let ((inline$$Not$3$anon0_correct  (=> (and (= inline$$Not$3$dst@1  (not |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t9@1|)) (= (ControlFlow 0 166238) 166278)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0$1_correct|)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0_correct|  (=> (= _$t0@@0 _$t0@@0) (=> (and (and (|$IsValid'address'| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0| (|$addr#$signer| _$t0@@0))) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t9@1| (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0|)) (= (ControlFlow 0 166244) 166238))) inline$$Not$3$anon0_correct))))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@4) (= (ControlFlow 0 166458) 166244)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0_correct|)))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t13@0 $abort_code@5) (= (ControlFlow 0 167845) 160624))) L3_correct)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (=> (and (= $abort_flag@4 true) (= $abort_code@5 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1|)) (and (=> (= (ControlFlow 0 165665) 167845) anon29_Then_correct) (=> (= (ControlFlow 0 165665) 166458) anon29_Else_correct))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| $abort_code@4) (= (ControlFlow 0 165659) 165665))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon11_Then_correct|  (=> |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= 5 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|) (= (ControlFlow 0 165743) 165665))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon10_Then_correct|  (=> |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0| (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) (= 5 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) 1)) (= 3 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|))) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|) (= (ControlFlow 0 165815) 165665))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|))) (=> (and (and (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1|) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1| ($Mutation_34947 (|l#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (seq.++ (|p#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (seq.unit 7)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|))))) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@2| ($Mutation_34947 (|l#$Mutation_34947| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1|) (|p#$Mutation_34947| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1|) false)) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3| ($Mutation_120676 (|l#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (|p#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|v#$Mutation_34947| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@2|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|))))))) (and (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4| ($Memory_101361 (|Store__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3|)) (|v#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3|)))) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4|)) (and (= $abort_flag@4 $abort_flag@3) (= $abort_code@5 $abort_code@4)))) (and (=> (= (ControlFlow 0 165645) 167845) anon29_Then_correct) (=> (= (ControlFlow 0 165645) 166458) anon29_Else_correct))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Then$1_correct|  (=> (= $abort_flag@3 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@0|)) (and (=> (= (ControlFlow 0 165717) 165659) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 165717) 165645) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Else_correct|))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= (ControlFlow 0 165715) 165717)) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Then$1_correct|)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816) (=> (and (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@1| ($Mutation_120676 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816))) (= $abort_flag@3 $abort_flag@2)) (and (= $abort_code@4 $abort_code@3) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@1|))) (and (=> (= (ControlFlow 0 165579) 165659) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 165579) 165645) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Else_correct|))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon11_Else_correct|  (=> (and (not |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0|) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 165557) 165715) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Then_correct|) (=> (= (ControlFlow 0 165557) 165579) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Else_correct|)))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon10_Else_correct|  (=> (and (not |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0|) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)))) (and (=> (= (ControlFlow 0 165543) 165743) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 165543) 165557) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon11_Else_correct|)))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon0_correct|  (=> (and (and (and (= (seq.len (|p#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t2@0|)) 0) (= (seq.len (|p#$Mutation_120676| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@0|)) 0)) (and (= (seq.len (|p#$Mutation_34947| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@0|)) 0) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t3@0| (|$addr#$signer| _$t1@@0)))) (and (and (= _$t1@@0 _$t1@@0) (= false false)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0| (|$addr#$signer| _$t1@@0)) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))))))) (and (=> (= (ControlFlow 0 165525) 165815) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 165525) 165543) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon10_Else_correct|)))))
(let ((anon28_Else_correct  (=> (not $abort_flag@2) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1|)) (and (= $t40 (|$addr#$signer| _$t1@@0)) (= (ControlFlow 0 165819) 165525))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon0_correct|))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t13@0 $abort_code@3) (= (ControlFlow 0 167859) 160624))) L3_correct)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Else_correct|  (=> (and (not $abort_flag@1) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1| (|$1_Diem_MintCapability'$1_XDX_XDX'| false))) (=> (and (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1| (|$1_Diem_BurnCapability'$1_XDX_XDX'| false)) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1|)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|))) (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1|)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1)))) (and (=> (= (ControlFlow 0 164548) 167859) anon28_Then_correct) (=> (= (ControlFlow 0 164548) 165819) anon28_Else_correct))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@0|)) (and (= $abort_code@3 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1|) (= $abort_flag@2 true))) (and (=> (= (ControlFlow 0 162379) 167859) anon28_Then_correct) (=> (= (ControlFlow 0 162379) 165819) anon28_Else_correct))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Then_correct|  (=> $abort_flag@1 (=> (and (and (= $abort_code@2 $abort_code@2) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| $abort_code@2)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 164562) 162379))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816) (=> (and (and (= (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@5))) inline$$1_RegisteredCurrencies_add_currency_code$0$$t4@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_103759| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (= $abort_flag@1 $abort_flag@0@@0) (= $abort_code@2 $abort_code@1@@0))) (and (=> (= (ControlFlow 0 164318) 164562) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 164318) 164548) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Else_correct|))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct  (=> (and (and (not |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2|) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_103369 (|Store__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (= (ControlFlow 0 164292) 164318))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct  (=> (and (and |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2| (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_103369 (|Store__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|) (= (ControlFlow 0 164330) 164318))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Else_correct  (=> (not |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1|) (=> (and (= $1_DiemConfig_Configuration_$memory@1 ($Memory_103759 (|Store__T@[Int]Bool_| (|domain#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_103759| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1)) (and (=> (= (ControlFlow 0 164278) 164330) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct) (=> (= (ControlFlow 0 164278) 164292) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Then_correct  (=> |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1| (=> (and (= $1_DiemConfig_Configuration_$memory@0 ($Memory_103759 (|Store__T@[Int]Bool_| (|domain#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816 |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_Configuration'@1|))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0)) (and (=> (= (ControlFlow 0 164342) 164330) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct) (=> (= (ControlFlow 0 164342) 164292) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Else_correct  (=> (not inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0) (and (=> (= (ControlFlow 0 164266) 164342) inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Then_correct) (=> (= (ControlFlow 0 164266) 164278) inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct  (=> (and (= $abort_flag@1 true) (= $abort_code@2 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1)) (and (=> (= (ControlFlow 0 164055) 164562) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 164055) 164548) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Else_correct|)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Then_correct  (=> inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_104654| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@0))) (= 4 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103693| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0) 18446744073709551615)) (< inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0))) (= 1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0) (= (ControlFlow 0 164440) 164055))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Else_correct  (=> (and (not $abort_flag@0@@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2 ($Mutation_107653 (|l#$Mutation_107653| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (|p#$Mutation_107653| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) ($1_RegisteredCurrencies_RegisteredCurrencies (|v#$Mutation_88248| |inline$$1_Vector_push_back'vec'u8''$0$m'@1|))))) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t4@1 (|v#$Mutation_107653| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2)) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_104654| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_103693| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0) 18446744073709551615)) (< inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0))))))) (and (=> (= (ControlFlow 0 164258) 164440) inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Then_correct) (=> (= (ControlFlow 0 164258) 164266) inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 $abort_code@1@@0) (= (ControlFlow 0 164454) 164055))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((|inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'vec'u8''$0$m'@1| ($Mutation_88248 (|l#$Mutation_88248| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (|p#$Mutation_88248| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (seq.++ (|v#$Mutation_88248| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (seq.unit $t33@0)))) (and (=> (= (ControlFlow 0 164132) 164454) inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Then_correct) (=> (= (ControlFlow 0 164132) 164258) inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Then_correct  (=> (and (and inline$$Not$2$dst@1 (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1 ($Mutation_107653 ($Local 4) (as seq.empty (Seq Int)) inline$$1_RegisteredCurrencies_add_currency_code$0$$t4@0))) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1 ($Mutation_88248 (|l#$Mutation_107653| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (seq.++ (|p#$Mutation_107653| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (seq.unit 0)) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (|v#$Mutation_107653| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1)))) (= (ControlFlow 0 164138) 164132))) |inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Else_correct  (=> (and (and (not inline$$Not$2$dst@1) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= (ControlFlow 0 164049) 164055))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 7)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= inline$$Not$2$dst@1 inline$$Not$2$dst@1))) (and (=> (= (ControlFlow 0 164033) 164138) inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Then_correct) (=> (= (ControlFlow 0 164033) 164049) inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Else_correct))))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not |inline$$1_Vector_contains'vec'u8''$0$res@1|)) (= (ControlFlow 0 163993) 164033)) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else$1_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else_correct  (=> (and (not $abort_flag@0@@0) (= (ControlFlow 0 163999) 163993)) inline$$Not$2$anon0_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 $abort_code@1@@0) (= (ControlFlow 0 164468) 164055))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((|inline$$1_Vector_contains'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'vec'u8''$0$res@1| (exists ((i@@49 Int) ) (!  (and (and (|$IsValid'u64'| i@@49) (and (>= i@@49 0) (< i@@49 (seq.len inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1)))) (= (seq.nth inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 i@@49) $t33@0))
 :qid |XDXseqArraybpl.2040:13|
 :skolemid |57|
))) (and (=> (= (ControlFlow 0 163949) 164468) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Then_correct) (=> (= (ControlFlow 0 163949) 163999) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Else_correct  (=> (and (not inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| inline$$1_RegisteredCurrencies_add_currency_code$0$$t4@0)) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t4@0 (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@6)))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t4@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t4@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| inline$$1_RegisteredCurrencies_add_currency_code$0$$t4@0)) (= (ControlFlow 0 163955) 163949))) |inline$$1_Vector_contains'vec'u8''$0$anon0_correct|))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Then_correct  (=> inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0) (= (ControlFlow 0 164496) 164055))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_107653| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@0)) 0) (=> (and (= (seq.len (|p#$Mutation_88248| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@0)) 0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t5@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t6@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= _$t0@@0 _$t0@@0)) (and (= $t33@0 $t33@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 163877) 164496) inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Then_correct) (=> (= (ControlFlow 0 163877) 163955) inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Else_correct)))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Else_correct|  (=> (and (and (not $abort_flag@0@@0) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t39@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t40@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= (ControlFlow 0 164500) 163877))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon0_correct)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Then_correct|  (=> $abort_flag@0@@0 (=> (and (and (= $abort_code@1@@0 $abort_code@1@@0) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| $abort_code@1@@0)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 164576) 162379))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then$1_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 164628) 164576) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 164628) 164500) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 164626) 164628)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0))) (=> (and (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| ($Memory_101361 (|Store__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@0) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t38@1|))) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0|)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 162993) 164576) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 162993) 164500) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Else_correct|  (=> (and (not false) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t38@1| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0 0 $t28 true 1000000 1000 $t33@0 true |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 162971) 164626) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 162971) 162993) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Else_correct|)))))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@3 |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0|) false) (= $1_Event_EventHandles@4 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@3 |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 162927) 164642) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Then_correct|) (=> (= (ControlFlow 0 162927) 162971) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Else_correct|  (=> (and (not false) (= (ControlFlow 0 162933) 162927)) |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@2 |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0|) false) (= $1_Event_EventHandles@3 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@2 |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 162845) 164656) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Then_correct|) (=> (= (ControlFlow 0 162845) 162933) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Else_correct|  (=> (and (not false) (= (ControlFlow 0 162851) 162845)) |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@1 |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0|) false) (= $1_Event_EventHandles@2 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@1 |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 162763) 164670) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Then_correct|) (=> (= (ControlFlow 0 162763) 162851) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Else_correct|  (=> (and (not false) (= (ControlFlow 0 162769) 162763)) |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 162681) 164684) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Then_correct|) (=> (= (ControlFlow 0 162681) 162769) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Else_correct|  (=> (and (not false) (= (ControlFlow 0 162687) 162681)) |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 162599) 164698) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Then_correct|) (=> (= (ControlFlow 0 162599) 162687) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Then_correct|  (=> (and (and |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| (|$IsValid'u128'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 162605) 162599))) |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$anon0_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Else_correct|  (=> (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1|) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 162503) 162379))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L5_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| 7)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1|))) (and (=> (= (ControlFlow 0 162487) 162605) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Then_correct|) (=> (= (ControlFlow 0 162487) 162503) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then$1_correct|  (=> (= inline$$Le$0$dst@1 inline$$Le$0$dst@1) (=> (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| inline$$Le$0$dst@1) (= (ControlFlow 0 164764) 162487)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L5_correct|))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= 1000000 10000000000)) (= (ControlFlow 0 164748) 164764)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then_correct|  (=> inline$$Lt$0$dst@1@@0 (=> (and (|$IsValid'u64'| 10000000000) (= (ControlFlow 0 164754) 164748)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Else_correct|  (=> (and (and (not inline$$Lt$0$dst@1@@0) (= false false)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| false) (= (ControlFlow 0 162457) 162487))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L5_correct|)))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (= inline$$Lt$0$dst@1@@0 (< 0 1000000)) (and (=> (= (ControlFlow 0 162429) 164754) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then_correct|) (=> (= (ControlFlow 0 162429) 162457) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Then_correct|  (=> inline$$Not$1$dst@1 (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 162435) 162429)) inline$$Lt$0$anon0_correct@@0))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Else_correct|  (=> (not inline$$Not$1$dst@1) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 162373) 162379))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else$1_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| 6)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 162357) 162435) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Then_correct|) (=> (= (ControlFlow 0 162357) 162373) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Else_correct|))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t19@1|)) (= (ControlFlow 0 162317) 162357)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0|) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0| (|$addr#$signer| _$t0@@0))) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t19@1| (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0|)) (= (ControlFlow 0 162323) 162317))) inline$$Not$1$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0| (=> (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 164794) 162379))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (and (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0|  (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (and (=> (= (ControlFlow 0 162261) 164794) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 162261) 162323) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0| (or (or (or (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|)) (= 5 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|)) 0)) (= 3 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|))) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)))) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 164886) 162379))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t11@0| (|$addr#$signer| _$t0@@0)) (=> (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t12@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816)) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t13@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (and (= _$t0@@0 _$t0@@0) (= $t28 $t28)) (and (= true true) (= 1000000 1000000))) (and (and (= 1000 1000) (= $t33@0 $t33@0)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0| (|$addr#$signer| _$t0@@0)) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0|  (or (or (or (not (= (|$addr#$signer| _$t0@@0) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|)) 0))) (not (= (|$addr#$signer| _$t0@@0) 173345816))))))) (and (=> (= (ControlFlow 0 162239) 164886) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 162239) 162261) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))))
(let ((anon27_Else_correct  (=> (not $t29) (=> (and (|$IsValid'$1_FixedPoint32_FixedPoint32'| $t28) (= $t28 (ite (= 1 1) ($1_FixedPoint32_FixedPoint32 1) ($1_FixedPoint32_FixedPoint32 2)))) (=> (and (and (and (|$IsValid'u64'| 1000000) (|$IsValid'u64'| 1000)) (and (= $t33@0 (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))) (|$IsValid'vec'u8''| $t33@0))) (and (and (= $t34 (|$addr#$signer| _$t0@@0)) (= $t35 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t36 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= (ControlFlow 0 164894) 162239)))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon0_correct|)))))
(let ((anon27_Then_correct  (=> $t29 (=> (and (and (or (or (and (= $t26 0) (= 7 $t13)) (and (and (= $t27 0) (not (= $t25@@0 0))) (= 7 $t13))) (and (> $t27 18446744073709551615) (= 8 $t13))) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 167927) 160624))) L3_correct))))
(let ((anon26_Then_correct@@0  (=> (and inline$$Not$0$dst@1 (|$IsValid'u64'| 1)) (=> (and (and (and (|$IsValid'u64'| 1) (= $t22 ($shl 1 64))) (and (= $t23@@0 ($shl 1 32)) (= $t24@@0 (div $t22 $t23@@0)))) (and (and (= $t25@@0 ($shl 1 64)) (= $t26 ($shl 1 32))) (and (= $t27 (div $t25@@0 $t26)) (= $t29  (or (or (= $t26 0) (and (= $t27 0) (not (= $t25@@0 0)))) (> $t27 18446744073709551615)))))) (and (=> (= (ControlFlow 0 160752) 167927) anon27_Then_correct) (=> (= (ControlFlow 0 160752) 164894) anon27_Else_correct))))))
(let ((anon26_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1) (= $t19 $t19)) (and (= $t13@0 $t19) (= (ControlFlow 0 159916) 160624))) L3_correct)))
(let ((anon25_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t19) (= $t19 6)) (and (= $t19 $t19) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 159900) 160752) anon26_Then_correct@@0) (=> (= (ControlFlow 0 159900) 159916) anon26_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t16@0)) (= (ControlFlow 0 159864) 159900)) anon25_Else$1_correct)))
(let ((anon25_Else_correct@@0  (=> (and (and (not $t14@@0) (|$IsValid'address'| 173345816)) (and (= $t16@0 (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816)) (= (ControlFlow 0 159870) 159864))) inline$$Not$0$anon0_correct)))
(let ((anon25_Then_correct@@0  (=> $t14@@0 (=> (and (and (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 167957) 160624))) L3_correct))))
(let ((anon24_Else_correct@@0  (=> (and (not $t12@@0) (= $t14@@0  (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (and (=> (= (ControlFlow 0 159814) 167957) anon25_Then_correct@@0) (=> (= (ControlFlow 0 159814) 159870) anon25_Else_correct@@0)))))
(let ((anon24_Then_correct@@0  (=> $t12@@0 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 167983) 160624))) L3_correct))))
(let ((anon0$1_correct@@0  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (and (and (and (and (and (and (and (forall ((config_address Int) ) (!  (=> (|$IsValid'address'| config_address) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103288| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address) (= config_address 173345816)))
 :qid |XDXseqArraybpl.9798:24|
 :skolemid |173|
)) (forall ((config_address@@0 Int) ) (!  (=> (|$IsValid'address'| config_address@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@0) (= config_address@@0 173345816)))
 :qid |XDXseqArraybpl.9798:243|
 :skolemid |174|
))) (forall ((config_address@@1 Int) ) (!  (=> (|$IsValid'address'| config_address@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103450| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@1) (= config_address@@1 173345816)))
 :qid |XDXseqArraybpl.9798:483|
 :skolemid |175|
))) (forall ((config_address@@2 Int) ) (!  (=> (|$IsValid'address'| config_address@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103531| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@2) (= config_address@@2 173345816)))
 :qid |XDXseqArraybpl.9798:745|
 :skolemid |176|
))) (forall ((config_address@@3 Int) ) (!  (=> (|$IsValid'address'| config_address@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_103612| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@3) (= config_address@@3 173345816)))
 :qid |XDXseqArraybpl.9798:969|
 :skolemid |177|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114209| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |XDXseqArraybpl.9806:21|
 :skolemid |178|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114296| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |XDXseqArraybpl.9806:268|
 :skolemid |179|
)))) (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109489| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |XDXseqArraybpl.9814:21|
 :skolemid |180|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109576| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |XDXseqArraybpl.9814:231|
 :skolemid |181|
))) (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_114878| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_114469| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |XDXseqArraybpl.9818:21|
 :skolemid |182|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_114977| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_114560| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101859| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |XDXseqArraybpl.9818:292|
 :skolemid |183|
))))) (and (and (and (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114469| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.9822:22|
 :skolemid |184|
)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114560| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.9822:222|
 :skolemid |185|
))) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114651| |$1_Diem_Preburn'#0'_$memory|) addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.9822:423|
 :skolemid |186|
))) (and (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114878| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.9826:22|
 :skolemid |187|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114977| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.9826:227|
 :skolemid |188|
))) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115076| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.9826:433|
 :skolemid |189|
))))) (and (and (and (and (and (forall ((window_addr Int) ) (!  (=> (|$IsValid'address'| window_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122433| |$1_AccountLimits_Window'$1_XUS_XUS'_$memory|) window_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_121956| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'_| (|contents#$Memory_122433| |$1_AccountLimits_Window'$1_XUS_XUS'_$memory|) window_addr)))))
 :qid |XDXseqArraybpl.9830:21|
 :skolemid |190|
)) (forall ((window_addr@@0 Int) ) (!  (=> (|$IsValid'address'| window_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_122720| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) window_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_122720| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) window_addr@@0)))))
 :qid |XDXseqArraybpl.9830:368|
 :skolemid |191|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101277| $1_XDX_Reserve_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) addr@@13) (= addr@@13 173345816)))
 :qid |XDXseqArraybpl.9850:20|
 :skolemid |192|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@0))) (and (|$IsValid'address'| (|$addr#$signer| _$t1@@0)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |XDXseqArraybpl.9859:20|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))))) (and (and (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |XDXseqArraybpl.9863:20|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101859| $1_Roles_RoleId_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_103759| $1_DiemConfig_Configuration_$memory) $a_0@@2)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@2))
 :qid |XDXseqArraybpl.9867:20|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_103759| $1_DiemConfig_Configuration_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_103693| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@3)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@3))
 :qid |XDXseqArraybpl.9871:20|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_103693| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@4)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@4))
 :qid |XDXseqArraybpl.9875:20|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_103369| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@4))
)))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_104654| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@5)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@5))
 :qid |XDXseqArraybpl.9879:20|
 :skolemid |198|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_104654| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@6)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@6) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@6)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@6) 10000000000))))
 :qid |XDXseqArraybpl.9883:20|
 :skolemid |199|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) $a_0@@7)))
 (and (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| $rsc@@7) (and (and (and (> (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@7) 0) (> (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@7) 0)) (> (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@7) 0)) (> (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@7) 0))))
 :qid |XDXseqArraybpl.9887:20|
 :skolemid |200|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_101445| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_XDX_Reserve_| (|contents#$Memory_101277| $1_XDX_Reserve_$memory) $a_0@@8)))
(|$IsValid'$1_XDX_Reserve'| $rsc@@8))
 :qid |XDXseqArraybpl.9891:20|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]$1_XDX_Reserve_| (|contents#$Memory_101277| $1_XDX_Reserve_$memory) $a_0@@8))
))))) (and (and (and (= $t7@@0 (|$addr#$signer| _$t0@@0)) (= $t8 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_103759| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t9@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t10@@0 (|$addr#$signer| _$t0@@0)))) (and (and (= $t11@@0 (|$addr#$signer| _$t1@@0)) (= _$t0@@0 _$t0@@0)) (and (= _$t1@@0 _$t1@@0) (= $t12@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))))) (and (=> (= (ControlFlow 0 159792) 167983) anon24_Then_correct@@0) (=> (= (ControlFlow 0 159792) 159814) anon24_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_68954_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_68954| stream@@1) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_68954| stream@@1) v@@39) 0)
 :qid |XDXseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |XDXseqArraybpl.2728:13|
 :skolemid |74|
))) (= (ControlFlow 0 158850) 159792)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 223320) 158850) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@0 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t2 () Int)
(declare-fun $t4 () Bool)
(declare-fun $t0@0 () Bool)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t5 () (Seq Int))
(declare-fun $t7@0 () Bool)
(declare-fun $t3 () (Seq Int))
(declare-fun |inline$$1_Diem_is_currency'#0'$0$$t1@1| () Bool)
(push 1)
(set-info :boogie-vc-id $1_XDX_is_xdx$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 229599) (let ((L5_correct@@0  (and (=> (= (ControlFlow 0 169362) (- 0 230159)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 169362) (- 0 230169)) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t2@0)))))))
(let ((anon14_Then_correct  (=> $t6 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t2)) (= $t2 $t2)) (and (= $t2@0 $t2) (= (ControlFlow 0 169322) 169362))) L5_correct@@0))))
(let ((anon13_Then_correct  (=> $t4 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t2)) (= $t2 $t2)) (and (= $t2@0 $t2) (= (ControlFlow 0 169388) 169362))) L5_correct@@0))))
(let ((L3_correct@@0  (=> (= $t0@0 $t0@0) (and (=> (= (ControlFlow 0 169220) (- 0 230116)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (= (ControlFlow 0 169220) (- 0 230131)) (= $t0@0  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))))))))
(let ((anon14_Else_correct  (=> (not $t6) (=> (and (|$IsValid'vec'u8''| $t5) (= $t5 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (and (= $t7@0 (= $t3 $t5)) (= $t7@0 $t7@0)) (and (= $t0@0 $t7@0) (= (ControlFlow 0 169296) 169220))) L3_correct@@0)))))
(let ((anon13_Else_correct  (=> (and (and (not $t4) (|$IsValid'vec'u8''| $t3)) (and (= $t3 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 169262) 169322) anon14_Then_correct) (=> (= (ControlFlow 0 169262) 169296) anon14_Else_correct)))))
(let ((anon12_Then_correct  (=> (and |inline$$1_Diem_is_currency'#0'$0$$t1@1| (= $t4  (not (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 169234) 169388) anon13_Then_correct) (=> (= (ControlFlow 0 169234) 169262) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not |inline$$1_Diem_is_currency'#0'$0$$t1@1|) (= false false)) (and (= $t0@0 false) (= (ControlFlow 0 169180) 169220))) L3_correct@@0)))
(let ((anon11_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 169160) 169234) anon12_Then_correct) (=> (= (ControlFlow 0 169160) 169180) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Diem_is_currency'#0'$0$anon0_correct|  (=> (|$IsValid'address'| 173345816) (=> (and (= |inline$$1_Diem_is_currency'#0'$0$$t1@1| (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_is_currency'#0'$0$$t1@1| |inline$$1_Diem_is_currency'#0'$0$$t1@1|)) (and (=> (= (ControlFlow 0 169146) 169402) anon11_Then_correct) (=> (= (ControlFlow 0 169146) 169160) anon11_Else_correct))))))
(let ((anon0$1_correct@@1  (=> (and (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114469| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10441:22|
 :skolemid |202|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114560| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10441:222|
 :skolemid |203|
))) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114651| |$1_Diem_Preburn'#0'_$memory|) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10441:423|
 :skolemid |204|
))) (=> (and (and (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114878| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10445:22|
 :skolemid |205|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114977| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10445:227|
 :skolemid |206|
))) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115076| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10445:433|
 :skolemid |207|
))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@9)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@9) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@9)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@9) 10000000000))))
 :qid |XDXseqArraybpl.10453:20|
 :skolemid |208|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@9))
))) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@10)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@10) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@10)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@10) 10000000000))))
 :qid |XDXseqArraybpl.10457:20|
 :skolemid |209|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@10))
)) (= (ControlFlow 0 169152) 169146)))) |inline$$1_Diem_is_currency'#0'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_68954_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_68954| stream@@2) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_68954| stream@@2) v@@40) 0)
 :qid |XDXseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |XDXseqArraybpl.2728:13|
 :skolemid |74|
))) (= (ControlFlow 0 168813) 169152)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 229599) 168813) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@0@@0 () Int)
(declare-fun $t6@@0 () Bool)
(declare-fun $t2@@0 () Int)
(declare-fun $t4@@0 () Bool)
(declare-fun $t0@0@@0 () Bool)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t5@@0 () (Seq Int))
(declare-fun $t7@0@@0 () Bool)
(declare-fun $t3@@0 () (Seq Int))
(declare-fun |inline$$1_Diem_is_currency'$1_XUS_XUS'$0$$t1@1| () Bool)
(push 1)
(set-info :boogie-vc-id $1_XDX_is_xdx$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 230200) (let ((L5_correct@@1  (and (=> (= (ControlFlow 0 170058) (- 0 230760)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 170058) (- 0 230770)) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t2@0@@0)))))))
(let ((anon14_Then_correct@@0  (=> $t6@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t2@@0)) (= $t2@@0 $t2@@0)) (and (= $t2@0@@0 $t2@@0) (= (ControlFlow 0 170018) 170058))) L5_correct@@1))))
(let ((anon13_Then_correct@@0  (=> $t4@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t2@@0)) (= $t2@@0 $t2@@0)) (and (= $t2@0@@0 $t2@@0) (= (ControlFlow 0 170084) 170058))) L5_correct@@1))))
(let ((L3_correct@@1  (=> (= $t0@0@@0 $t0@0@@0) (and (=> (= (ControlFlow 0 169916) (- 0 230717)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (= (ControlFlow 0 169916) (- 0 230732)) (= $t0@0@@0  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))))))))
(let ((anon14_Else_correct@@0  (=> (not $t6@@0) (=> (and (|$IsValid'vec'u8''| $t5@@0) (= $t5@@0 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (and (= $t7@0@@0 (= $t3@@0 $t5@@0)) (= $t7@0@@0 $t7@0@@0)) (and (= $t0@0@@0 $t7@0@@0) (= (ControlFlow 0 169992) 169916))) L3_correct@@1)))))
(let ((anon13_Else_correct@@0  (=> (and (and (not $t4@@0) (|$IsValid'vec'u8''| $t3@@0)) (and (= $t3@@0 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= $t6@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 169958) 170018) anon14_Then_correct@@0) (=> (= (ControlFlow 0 169958) 169992) anon14_Else_correct@@0)))))
(let ((anon12_Then_correct@@0  (=> (and |inline$$1_Diem_is_currency'$1_XUS_XUS'$0$$t1@1| (= $t4@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 169930) 170084) anon13_Then_correct@@0) (=> (= (ControlFlow 0 169930) 169958) anon13_Else_correct@@0)))))
(let ((anon12_Else_correct@@0  (=> (and (and (not |inline$$1_Diem_is_currency'$1_XUS_XUS'$0$$t1@1|) (= false false)) (and (= $t0@0@@0 false) (= (ControlFlow 0 169876) 169916))) L3_correct@@1)))
(let ((anon11_Else_correct@@0  (=> (not false) (and (=> (= (ControlFlow 0 169856) 169930) anon12_Then_correct@@0) (=> (= (ControlFlow 0 169856) 169876) anon12_Else_correct@@0)))))
(let ((anon11_Then_correct@@0 true))
(let ((|inline$$1_Diem_is_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (|$IsValid'address'| 173345816) (=> (and (= |inline$$1_Diem_is_currency'$1_XUS_XUS'$0$$t1@1| (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= |inline$$1_Diem_is_currency'$1_XUS_XUS'$0$$t1@1| |inline$$1_Diem_is_currency'$1_XUS_XUS'$0$$t1@1|)) (and (=> (= (ControlFlow 0 169842) 170098) anon11_Then_correct@@0) (=> (= (ControlFlow 0 169842) 169856) anon11_Else_correct@@0))))))
(let ((anon0$1_correct@@2  (=> (and (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114469| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10661:22|
 :skolemid |210|
)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114560| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10661:222|
 :skolemid |211|
))) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114651| |$1_Diem_Preburn'#0'_$memory|) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10661:423|
 :skolemid |212|
))) (=> (and (and (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114878| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10665:22|
 :skolemid |213|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114977| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10665:227|
 :skolemid |214|
))) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115076| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@25) (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10665:433|
 :skolemid |215|
))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@11)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@11) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@11)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@11) 10000000000))))
 :qid |XDXseqArraybpl.10673:20|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@11))
))) (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@12)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@12) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@12)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@12) 10000000000))))
 :qid |XDXseqArraybpl.10677:20|
 :skolemid |217|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@12))
)) (= (ControlFlow 0 169848) 169842)))) |inline$$1_Diem_is_currency'$1_XUS_XUS'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_68954_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_68954| stream@@3) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_68954| stream@@3) v@@41) 0)
 :qid |XDXseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |XDXseqArraybpl.2728:13|
 :skolemid |74|
))) (= (ControlFlow 0 169509) 169848)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 230200) 169509) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@0@@1 () Int)
(declare-fun $t6@@1 () Bool)
(declare-fun $t2@@1 () Int)
(declare-fun $t4@@1 () Bool)
(declare-fun $t0@0@@1 () Bool)
(declare-fun $t5@@1 () (Seq Int))
(declare-fun $t7@0@@1 () Bool)
(declare-fun $t3@@1 () (Seq Int))
(declare-fun |inline$$1_Diem_is_currency'$1_XDX_XDX'$0$$t1@1| () Bool)
(push 1)
(set-info :boogie-vc-id $1_XDX_is_xdx$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 230801) (let ((L5_correct@@2  (and (=> (= (ControlFlow 0 170754) (- 0 231361)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 170754) (- 0 231371)) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t2@0@@1)))))))
(let ((anon14_Then_correct@@1  (=> $t6@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t2@@1)) (= $t2@@1 $t2@@1)) (and (= $t2@0@@1 $t2@@1) (= (ControlFlow 0 170714) 170754))) L5_correct@@2))))
(let ((anon13_Then_correct@@1  (=> $t4@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t2@@1)) (= $t2@@1 $t2@@1)) (and (= $t2@0@@1 $t2@@1) (= (ControlFlow 0 170780) 170754))) L5_correct@@2))))
(let ((L3_correct@@2  (=> (= $t0@0@@1 $t0@0@@1) (and (=> (= (ControlFlow 0 170612) (- 0 231318)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (= (ControlFlow 0 170612) (- 0 231333)) (= $t0@0@@1  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))))))))
(let ((anon14_Else_correct@@1  (=> (not $t6@@1) (=> (and (|$IsValid'vec'u8''| $t5@@1) (= $t5@@1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (and (= $t7@0@@1 (= $t3@@1 $t5@@1)) (= $t7@0@@1 $t7@0@@1)) (and (= $t0@0@@1 $t7@0@@1) (= (ControlFlow 0 170688) 170612))) L3_correct@@2)))))
(let ((anon13_Else_correct@@1  (=> (and (and (not $t4@@1) (|$IsValid'vec'u8''| $t3@@1)) (and (= $t3@@1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= $t6@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 170654) 170714) anon14_Then_correct@@1) (=> (= (ControlFlow 0 170654) 170688) anon14_Else_correct@@1)))))
(let ((anon12_Then_correct@@1  (=> (and |inline$$1_Diem_is_currency'$1_XDX_XDX'$0$$t1@1| (= $t4@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 170626) 170780) anon13_Then_correct@@1) (=> (= (ControlFlow 0 170626) 170654) anon13_Else_correct@@1)))))
(let ((anon12_Else_correct@@1  (=> (and (and (not |inline$$1_Diem_is_currency'$1_XDX_XDX'$0$$t1@1|) (= false false)) (and (= $t0@0@@1 false) (= (ControlFlow 0 170572) 170612))) L3_correct@@2)))
(let ((anon11_Else_correct@@1  (=> (not false) (and (=> (= (ControlFlow 0 170552) 170626) anon12_Then_correct@@1) (=> (= (ControlFlow 0 170552) 170572) anon12_Else_correct@@1)))))
(let ((anon11_Then_correct@@1 true))
(let ((|inline$$1_Diem_is_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (|$IsValid'address'| 173345816) (=> (and (= |inline$$1_Diem_is_currency'$1_XDX_XDX'$0$$t1@1| (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= |inline$$1_Diem_is_currency'$1_XDX_XDX'$0$$t1@1| |inline$$1_Diem_is_currency'$1_XDX_XDX'$0$$t1@1|)) (and (=> (= (ControlFlow 0 170538) 170794) anon11_Then_correct@@1) (=> (= (ControlFlow 0 170538) 170552) anon11_Else_correct@@1))))))
(let ((anon0$1_correct@@3  (=> (and (and (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114469| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@26) (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10881:22|
 :skolemid |218|
)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114560| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10881:222|
 :skolemid |219|
))) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114651| |$1_Diem_Preburn'#0'_$memory|) addr@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10881:423|
 :skolemid |220|
))) (=> (and (and (and (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114878| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_108912| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10885:22|
 :skolemid |221|
)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114977| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@30) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10885:227|
 :skolemid |222|
))) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115076| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_109118| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |XDXseqArraybpl.10885:433|
 :skolemid |223|
))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99833| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@13)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@13) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@13)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@13) 10000000000))))
 :qid |XDXseqArraybpl.10893:20|
 :skolemid |224|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@13))
))) (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@14)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@14) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@14)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@14) 10000000000))))
 :qid |XDXseqArraybpl.10897:20|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_101361| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@14))
)) (= (ControlFlow 0 170544) 170538)))) |inline$$1_Diem_is_currency'$1_XDX_XDX'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_68954_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_68954| stream@@4) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_68954| stream@@4) v@@42) 0)
 :qid |XDXseqArraybpl.134:13|
 :skolemid |2|
))))
 :qid |XDXseqArraybpl.2728:13|
 :skolemid |74|
))) (= (ControlFlow 0 170205) 170544)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 230801) 170205) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_XDX_reserve_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 231398) true)
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 231461) true)
))
(check-sat)
(pop 1)
; Valid
