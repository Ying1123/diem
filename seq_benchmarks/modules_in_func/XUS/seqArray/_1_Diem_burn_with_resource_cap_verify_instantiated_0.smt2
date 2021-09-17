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
(declare-datatypes ((T@$Memory_156241 0)) ((($Memory_156241 (|domain#$Memory_156241| |T@[Int]Bool|) (|contents#$Memory_156241| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_165433 0)) ((($Memory_165433 (|domain#$Memory_165433| |T@[Int]Bool|) (|contents#$Memory_165433| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_165362 0)) ((($Memory_165362 (|domain#$Memory_165362| |T@[Int]Bool|) (|contents#$Memory_165362| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_165119 0)) ((($Memory_165119 (|domain#$Memory_165119| |T@[Int]Bool|) (|contents#$Memory_165119| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_165048 0)) ((($Memory_165048 (|domain#$Memory_165048| |T@[Int]Bool|) (|contents#$Memory_165048| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_164977 0)) ((($Memory_164977 (|domain#$Memory_164977| |T@[Int]Bool|) (|contents#$Memory_164977| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_233363 0)) ((($Memory_233363 (|domain#$Memory_233363| |T@[Int]Bool|) (|contents#$Memory_233363| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_164809 0)) ((($Memory_164809 (|domain#$Memory_164809| |T@[Int]Bool|) (|contents#$Memory_164809| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_232659 0)) ((($Memory_232659 (|domain#$Memory_232659| |T@[Int]Bool|) (|contents#$Memory_232659| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_233618 0)) ((($Memory_233618 (|domain#$Memory_233618| |T@[Int]Bool|) (|contents#$Memory_233618| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_233718 0)) ((($Memory_233718 (|domain#$Memory_233718| |T@[Int]Bool|) (|contents#$Memory_233718| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_233046 0)) ((($Memory_233046 (|domain#$Memory_233046| |T@[Int]Bool|) (|contents#$Memory_233046| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_233131 0)) ((($Memory_233131 (|domain#$Memory_233131| |T@[Int]Bool|) (|contents#$Memory_233131| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_269977 0)) ((($Memory_269977 (|domain#$Memory_269977| |T@[Int]Bool|) (|contents#$Memory_269977| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_269690 0)) ((($Memory_269690 (|domain#$Memory_269690| |T@[Int]Bool|) (|contents#$Memory_269690| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_269403 0)) ((($Memory_269403 (|domain#$Memory_269403| |T@[Int]Bool|) (|contents#$Memory_269403| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_269116 0)) ((($Memory_269116 (|domain#$Memory_269116| |T@[Int]Bool|) (|contents#$Memory_269116| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_164641 0)) ((($Memory_164641 (|domain#$Memory_164641| |T@[Int]Bool|) (|contents#$Memory_164641| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_164402 0)) ((($Memory_164402 (|domain#$Memory_164402| |T@[Int]Bool|) (|contents#$Memory_164402| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_165291 0)) ((($Memory_165291 (|domain#$Memory_165291| |T@[Int]Bool|) (|contents#$Memory_165291| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_174988 0)) ((($Memory_174988 (|domain#$Memory_174988| |T@[Int]Bool|) (|contents#$Memory_174988| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_174924 0)) ((($Memory_174924 (|domain#$Memory_174924| |T@[Int]Bool|) (|contents#$Memory_174924| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_174860 0)) ((($Memory_174860 (|domain#$Memory_174860| |T@[Int]Bool|) (|contents#$Memory_174860| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_175442 0)) ((($Memory_175442 (|domain#$Memory_175442| |T@[Int]Bool|) (|contents#$Memory_175442| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_175355 0)) ((($Memory_175355 (|domain#$Memory_175355| |T@[Int]Bool|) (|contents#$Memory_175355| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_175268 0)) ((($Memory_175268 (|domain#$Memory_175268| |T@[Int]Bool|) (|contents#$Memory_175268| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_180517 0)) ((($Memory_180517 (|domain#$Memory_180517| |T@[Int]Bool|) (|contents#$Memory_180517| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_180942 0)) ((($Memory_180942 (|domain#$Memory_180942| |T@[Int]Bool|) (|contents#$Memory_180942| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_233278 0)) ((($Memory_233278 (|domain#$Memory_233278| |T@[Int]Bool|) (|contents#$Memory_233278| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_180426 0)) ((($Memory_180426 (|domain#$Memory_180426| |T@[Int]Bool|) (|contents#$Memory_180426| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_164473 0)) ((($Memory_164473 (|domain#$Memory_164473| |T@[Int]Bool|) (|contents#$Memory_164473| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_180843 0)) ((($Memory_180843 (|domain#$Memory_180843| |T@[Int]Bool|) (|contents#$Memory_180843| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_233218 0)) ((($Memory_233218 (|domain#$Memory_233218| |T@[Int]Bool|) (|contents#$Memory_233218| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_180335 0)) ((($Memory_180335 (|domain#$Memory_180335| |T@[Int]Bool|) (|contents#$Memory_180335| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_164712 0)) ((($Memory_164712 (|domain#$Memory_164712| |T@[Int]Bool|) (|contents#$Memory_164712| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_180744 0)) ((($Memory_180744 (|domain#$Memory_180744| |T@[Int]Bool|) (|contents#$Memory_180744| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_174430 0)) ((($Memory_174430 (|domain#$Memory_174430| |T@[Int]Bool|) (|contents#$Memory_174430| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_164557 0)) ((($Memory_164557 (|domain#$Memory_164557| |T@[Int]Bool|) (|contents#$Memory_164557| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_164318 0)) ((($Memory_164318 (|domain#$Memory_164318| |T@[Int]Bool|) (|contents#$Memory_164318| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_170300 0)) ((($Memory_170300 (|domain#$Memory_170300| |T@[Int]Bool|) (|contents#$Memory_170300| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_170213 0)) ((($Memory_170213 (|domain#$Memory_170213| |T@[Int]Bool|) (|contents#$Memory_170213| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_170126 0)) ((($Memory_170126 (|domain#$Memory_170126| |T@[Int]Bool|) (|contents#$Memory_170126| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_170039 0)) ((($Memory_170039 (|domain#$Memory_170039| |T@[Int]Bool|) (|contents#$Memory_170039| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_169952 0)) ((($Memory_169952 (|domain#$Memory_169952| |T@[Int]Bool|) (|contents#$Memory_169952| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_169865 0)) ((($Memory_169865 (|domain#$Memory_169865| |T@[Int]Bool|) (|contents#$Memory_169865| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_164163 0)) ((($Memory_164163 (|domain#$Memory_164163| |T@[Int]Bool|) (|contents#$Memory_164163| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_169132 0)) ((($Memory_169132 (|domain#$Memory_169132| |T@[Int]Bool|) (|contents#$Memory_169132| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_164004 0)) ((($Memory_164004 (|domain#$Memory_164004| |T@[Int]Bool|) (|contents#$Memory_164004| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_163598 0)) ((($Memory_163598 (|domain#$Memory_163598| |T@[Int]Bool|) (|contents#$Memory_163598| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_165517 0)) ((($Memory_165517 (|domain#$Memory_165517| |T@[Int]Bool|) (|contents#$Memory_165517| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_168999 0)) ((($Memory_168999 (|domain#$Memory_168999| |T@[Int]Bool|) (|contents#$Memory_168999| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_164893 0)) ((($Memory_164893 (|domain#$Memory_164893| |T@[Int]Bool|) (|contents#$Memory_164893| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_164234 0)) ((($Memory_164234 (|domain#$Memory_164234| |T@[Int]Bool|) (|contents#$Memory_164234| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_163911 0)) ((($Memory_163911 (|domain#$Memory_163911| |T@[Int]Bool|) (|contents#$Memory_163911| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_232946 0)) ((($Memory_232946 (|domain#$Memory_232946| |T@[Int]Bool|) (|contents#$Memory_232946| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_164090 0)) ((($Memory_164090 (|domain#$Memory_164090| |T@[Int]Bool|) (|contents#$Memory_164090| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_168328 0)) ((($Memory_168328 (|domain#$Memory_168328| |T@[Int]Bool|) (|contents#$Memory_168328| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_167770 0)) ((($Memory_167770 (|domain#$Memory_167770| |T@[Int]Bool|) (|contents#$Memory_167770| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_163724 0)) ((($Memory_163724 (|domain#$Memory_163724| |T@[Int]Bool|) (|contents#$Memory_163724| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_163046 0)) ((($Memory_163046 (|domain#$Memory_163046| |T@[Int]Bool|) (|contents#$Memory_163046| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_130017 0)) (((Multiset_130017 (|v#Multiset_130017| |T@[$EventRep]Int|) (|l#Multiset_130017| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_130017| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_130017|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_294950 0)) ((($Mutation_294950 (|l#$Mutation_294950| T@$Location) (|p#$Mutation_294950| (Seq Int)) (|v#$Mutation_294950| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_294906 0)) ((($Mutation_294906 (|l#$Mutation_294906| T@$Location) (|p#$Mutation_294906| (Seq Int)) (|v#$Mutation_294906| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_276975 0)) ((($Mutation_276975 (|l#$Mutation_276975| T@$Location) (|p#$Mutation_276975| (Seq Int)) (|v#$Mutation_276975| |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_273803 0)) ((($Mutation_273803 (|l#$Mutation_273803| T@$Location) (|p#$Mutation_273803| (Seq Int)) (|v#$Mutation_273803| |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_270727 0)) ((($Mutation_270727 (|l#$Mutation_270727| T@$Location) (|p#$Mutation_270727| (Seq Int)) (|v#$Mutation_270727| |T@$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_257500 0)) ((($Mutation_257500 (|l#$Mutation_257500| T@$Location) (|p#$Mutation_257500| (Seq Int)) (|v#$Mutation_257500| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_72882 0)) ((($Mutation_72882 (|l#$Mutation_72882| T@$Location) (|p#$Mutation_72882| (Seq Int)) (|v#$Mutation_72882| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_190824 0)) ((($Mutation_190824 (|l#$Mutation_190824| T@$Location) (|p#$Mutation_190824| (Seq Int)) (|v#$Mutation_190824| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_190777 0)) ((($Mutation_190777 (|l#$Mutation_190777| T@$Location) (|p#$Mutation_190777| (Seq Int)) (|v#$Mutation_190777| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_190731 0)) ((($Mutation_190731 (|l#$Mutation_190731| T@$Location) (|p#$Mutation_190731| (Seq Int)) (|v#$Mutation_190731| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_186265 0)) ((($Mutation_186265 (|l#$Mutation_186265| T@$Location) (|p#$Mutation_186265| (Seq Int)) (|v#$Mutation_186265| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_186218 0)) ((($Mutation_186218 (|l#$Mutation_186218| T@$Location) (|p#$Mutation_186218| (Seq Int)) (|v#$Mutation_186218| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_186172 0)) ((($Mutation_186172 (|l#$Mutation_186172| T@$Location) (|p#$Mutation_186172| (Seq Int)) (|v#$Mutation_186172| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_181792 0)) ((($Mutation_181792 (|l#$Mutation_181792| T@$Location) (|p#$Mutation_181792| (Seq Int)) (|v#$Mutation_181792| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_181745 0)) ((($Mutation_181745 (|l#$Mutation_181745| T@$Location) (|p#$Mutation_181745| (Seq Int)) (|v#$Mutation_181745| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_181699 0)) ((($Mutation_181699 (|l#$Mutation_181699| T@$Location) (|p#$Mutation_181699| (Seq Int)) (|v#$Mutation_181699| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_173041 0)) ((($Mutation_173041 (|l#$Mutation_173041| T@$Location) (|p#$Mutation_173041| (Seq Int)) (|v#$Mutation_173041| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_163541 0)) ((($Mutation_163541 (|l#$Mutation_163541| T@$Location) (|p#$Mutation_163541| (Seq Int)) (|v#$Mutation_163541| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_156872 0)) ((($Mutation_156872 (|l#$Mutation_156872| T@$Location) (|p#$Mutation_156872| (Seq Int)) (|v#$Mutation_156872| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_14548 0)) ((($Mutation_14548 (|l#$Mutation_14548| T@$Location) (|p#$Mutation_14548| (Seq Int)) (|v#$Mutation_14548| Int) ) ) ))
(declare-datatypes ((T@$Mutation_152248 0)) ((($Mutation_152248 (|l#$Mutation_152248| T@$Location) (|p#$Mutation_152248| (Seq Int)) (|v#$Mutation_152248| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_151502 0)) ((($Mutation_151502 (|l#$Mutation_151502| T@$Location) (|p#$Mutation_151502| (Seq Int)) (|v#$Mutation_151502| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_150098 0)) ((($Mutation_150098 (|l#$Mutation_150098| T@$Location) (|p#$Mutation_150098| (Seq Int)) (|v#$Mutation_150098| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_149352 0)) ((($Mutation_149352 (|l#$Mutation_149352| T@$Location) (|p#$Mutation_149352| (Seq Int)) (|v#$Mutation_149352| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_147948 0)) ((($Mutation_147948 (|l#$Mutation_147948| T@$Location) (|p#$Mutation_147948| (Seq Int)) (|v#$Mutation_147948| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_147202 0)) ((($Mutation_147202 (|l#$Mutation_147202| T@$Location) (|p#$Mutation_147202| (Seq Int)) (|v#$Mutation_147202| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_145798 0)) ((($Mutation_145798 (|l#$Mutation_145798| T@$Location) (|p#$Mutation_145798| (Seq Int)) (|v#$Mutation_145798| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_145052 0)) ((($Mutation_145052 (|l#$Mutation_145052| T@$Location) (|p#$Mutation_145052| (Seq Int)) (|v#$Mutation_145052| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_143648 0)) ((($Mutation_143648 (|l#$Mutation_143648| T@$Location) (|p#$Mutation_143648| (Seq Int)) (|v#$Mutation_143648| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_142902 0)) ((($Mutation_142902 (|l#$Mutation_142902| T@$Location) (|p#$Mutation_142902| (Seq Int)) (|v#$Mutation_142902| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_141498 0)) ((($Mutation_141498 (|l#$Mutation_141498| T@$Location) (|p#$Mutation_141498| (Seq Int)) (|v#$Mutation_141498| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_140752 0)) ((($Mutation_140752 (|l#$Mutation_140752| T@$Location) (|p#$Mutation_140752| (Seq Int)) (|v#$Mutation_140752| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_139348 0)) ((($Mutation_139348 (|l#$Mutation_139348| T@$Location) (|p#$Mutation_139348| (Seq Int)) (|v#$Mutation_139348| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_138602 0)) ((($Mutation_138602 (|l#$Mutation_138602| T@$Location) (|p#$Mutation_138602| (Seq Int)) (|v#$Mutation_138602| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_137198 0)) ((($Mutation_137198 (|l#$Mutation_137198| T@$Location) (|p#$Mutation_137198| (Seq Int)) (|v#$Mutation_137198| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_136452 0)) ((($Mutation_136452 (|l#$Mutation_136452| T@$Location) (|p#$Mutation_136452| (Seq Int)) (|v#$Mutation_136452| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_135048 0)) ((($Mutation_135048 (|l#$Mutation_135048| T@$Location) (|p#$Mutation_135048| (Seq Int)) (|v#$Mutation_135048| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_134302 0)) ((($Mutation_134302 (|l#$Mutation_134302| T@$Location) (|p#$Mutation_134302| (Seq Int)) (|v#$Mutation_134302| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_132860 0)) ((($Mutation_132860 (|l#$Mutation_132860| T@$Location) (|p#$Mutation_132860| (Seq Int)) (|v#$Mutation_132860| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_132114 0)) ((($Mutation_132114 (|l#$Mutation_132114| T@$Location) (|p#$Mutation_132114| (Seq Int)) (|v#$Mutation_132114| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_130017_| (|T@[$1_Event_EventHandle]Multiset_130017| T@$1_Event_EventHandle) T@Multiset_130017)
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
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
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
(declare-fun ReverseVec_14401 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_117711 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_116332 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_116529 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_116726 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_117908 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_117317 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_117120 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_116923 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_117514 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_116135 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_130017| |T@[$1_Event_EventHandle]Multiset_130017|) |T@[$1_Event_EventHandle]Multiset_130017|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XUSbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XUSbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XUSbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XUSbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XUSbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XUSbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XUSbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XUSbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |XUSbpl.595:13|
 :skolemid |15|
))))
 :qid |XUSbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |XUSbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |XUSbpl.608:17|
 :skolemid |18|
)))))
 :qid |XUSbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |XUSbpl.775:13|
 :skolemid |20|
))))
 :qid |XUSbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |XUSbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |XUSbpl.788:17|
 :skolemid |23|
)))))
 :qid |XUSbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |XUSbpl.955:13|
 :skolemid |25|
))))
 :qid |XUSbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |XUSbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |XUSbpl.968:17|
 :skolemid |28|
)))))
 :qid |XUSbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |XUSbpl.1135:13|
 :skolemid |30|
))))
 :qid |XUSbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |XUSbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |XUSbpl.1148:17|
 :skolemid |33|
)))))
 :qid |XUSbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |XUSbpl.1315:13|
 :skolemid |35|
))))
 :qid |XUSbpl.1313:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |XUSbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |XUSbpl.1328:17|
 :skolemid |38|
)))))
 :qid |XUSbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |XUSbpl.1495:13|
 :skolemid |40|
))))
 :qid |XUSbpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |XUSbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |XUSbpl.1508:17|
 :skolemid |43|
)))))
 :qid |XUSbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |XUSbpl.1675:13|
 :skolemid |45|
))))
 :qid |XUSbpl.1673:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |XUSbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |XUSbpl.1688:17|
 :skolemid |48|
)))))
 :qid |XUSbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |XUSbpl.1855:13|
 :skolemid |50|
))))
 :qid |XUSbpl.1853:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |XUSbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |XUSbpl.1868:17|
 :skolemid |53|
)))))
 :qid |XUSbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |XUSbpl.2035:13|
 :skolemid |55|
))))
 :qid |XUSbpl.2033:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |XUSbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |XUSbpl.2048:17|
 :skolemid |58|
)))))
 :qid |XUSbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'vec'u8''| (seq.nth v@@22 i@@27)))
 :qid |XUSbpl.2215:13|
 :skolemid |60|
))))
 :qid |XUSbpl.2213:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@22))
)))
(assert (forall ((v@@23 (Seq (Seq Int))) (e@@8 (Seq Int)) ) (! (let ((i@@28 (|$IndexOfVec'vec'u8''| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |XUSbpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |XUSbpl.2228:17|
 :skolemid |63|
)))))
 :qid |XUSbpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'address'| (seq.nth v@@24 i@@30)))
 :qid |XUSbpl.2395:13|
 :skolemid |65|
))))
 :qid |XUSbpl.2393:33|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |XUSbpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |XUSbpl.2408:17|
 :skolemid |68|
)))))
 :qid |XUSbpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'u8'| (seq.nth v@@26 i@@33)))
 :qid |XUSbpl.2575:13|
 :skolemid |70|
))))
 :qid |XUSbpl.2573:28|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 (Seq Int)) (e@@10 Int) ) (! (let ((i@@34 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |XUSbpl.2580:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |XUSbpl.2588:17|
 :skolemid |73|
)))))
 :qid |XUSbpl.2584:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |XUSbpl.2761:15|
 :skolemid |75|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |XUSbpl.2777:15|
 :skolemid |76|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XUSbpl.2848:15|
 :skolemid |77|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XUSbpl.2851:15|
 :skolemid |78|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_130017| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| stream) v@@28) 0)
 :qid |XUSbpl.134:13|
 :skolemid |2|
))))
 :qid |XUSbpl.2912:13|
 :skolemid |79|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XUSbpl.2953:80|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |XUSbpl.2959:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XUSbpl.3009:82|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |XUSbpl.3015:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XUSbpl.3065:80|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |XUSbpl.3071:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XUSbpl.3121:79|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |XUSbpl.3127:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XUSbpl.3177:76|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |XUSbpl.3183:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XUSbpl.3233:78|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |XUSbpl.3239:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XUSbpl.3289:74|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |XUSbpl.3295:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XUSbpl.3345:69|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |XUSbpl.3351:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XUSbpl.3401:70|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |XUSbpl.3407:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XUSbpl.3457:60|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |XUSbpl.3463:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XUSbpl.3513:66|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |XUSbpl.3519:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XUSbpl.3569:60|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |XUSbpl.3575:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XUSbpl.3625:63|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |XUSbpl.3631:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XUSbpl.3681:79|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |XUSbpl.3687:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XUSbpl.3737:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |XUSbpl.3743:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XUSbpl.3793:88|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |XUSbpl.3799:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XUSbpl.3849:72|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |XUSbpl.3855:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XUSbpl.3934:61|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |XUSbpl.4749:36|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |XUSbpl.4768:71|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |XUSbpl.4832:46|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |XUSbpl.4845:64|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |XUSbpl.4858:75|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |XUSbpl.4871:72|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |XUSbpl.4900:55|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |XUSbpl.4922:46|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |XUSbpl.4940:49|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |XUSbpl.5025:71|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |XUSbpl.5039:91|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |XUSbpl.5053:113|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |XUSbpl.5067:89|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |XUSbpl.5081:75|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |XUSbpl.5095:73|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |XUSbpl.5115:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |XUSbpl.5131:57|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |XUSbpl.5145:83|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |XUSbpl.5159:103|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |XUSbpl.5173:125|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |XUSbpl.5187:101|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |XUSbpl.5201:87|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |XUSbpl.5215:85|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |XUSbpl.5229:48|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |XUSbpl.5250:45|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |XUSbpl.5264:51|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |XUSbpl.5287:48|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |XUSbpl.5584:49|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |XUSbpl.5629:65|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |XUSbpl.6216:45|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |XUSbpl.6229:45|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |XUSbpl.6242:37|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |XUSbpl.6255:55|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |XUSbpl.6269:55|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |XUSbpl.6283:47|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |XUSbpl.6303:38|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |XUSbpl.6324:44|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |XUSbpl.6375:53|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |XUSbpl.6437:53|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |XUSbpl.6499:45|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |XUSbpl.6525:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |XUSbpl.6539:55|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |XUSbpl.6553:47|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |XUSbpl.6570:38|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |XUSbpl.6584:48|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |XUSbpl.6598:48|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |XUSbpl.6612:40|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |XUSbpl.6632:41|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@48)))
 :qid |XUSbpl.6647:53|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@49)))
 :qid |XUSbpl.6661:53|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@50)))
 :qid |XUSbpl.6675:45|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51))))
 :qid |XUSbpl.6692:60|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52))))
 :qid |XUSbpl.6709:60|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@53))))
 :qid |XUSbpl.6726:52|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53))
)))
(assert (forall ((s@@54 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54))))
 :qid |XUSbpl.6743:57|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55) true)
 :qid |XUSbpl.23856:68|
 :skolemid |819|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))))
 :qid |XUSbpl.23878:66|
 :skolemid |820|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))))
 :qid |XUSbpl.23904:66|
 :skolemid |821|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@58))))
 :qid |XUSbpl.23930:58|
 :skolemid |822|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |XUSbpl.23959:56|
 :skolemid |823|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |XUSbpl.23989:56|
 :skolemid |824|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@61))))
 :qid |XUSbpl.24019:48|
 :skolemid |825|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |XUSbpl.26080:31|
 :skolemid |931|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |XUSbpl.27199:31|
 :skolemid |976|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |XUSbpl.27218:35|
 :skolemid |977|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |XUSbpl.27627:45|
 :skolemid |978|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |XUSbpl.27646:50|
 :skolemid |979|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |XUSbpl.27661:52|
 :skolemid |980|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |XUSbpl.27675:46|
 :skolemid |981|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |XUSbpl.27699:38|
 :skolemid |982|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |XUSbpl.27713:39|
 :skolemid |983|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |XUSbpl.27740:65|
 :skolemid |984|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@72))))
 :qid |XUSbpl.28108:60|
 :skolemid |985|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73))))
 :qid |XUSbpl.28125:66|
 :skolemid |986|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@74)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@74))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@74))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@74))))
 :qid |XUSbpl.28154:50|
 :skolemid |987|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@75) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@75)))
 :qid |XUSbpl.28173:45|
 :skolemid |988|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@76)) true))
 :qid |XUSbpl.28480:87|
 :skolemid |989|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@77)))
 :qid |XUSbpl.28681:47|
 :skolemid |990|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@78)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@78))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@78))))
 :qid |XUSbpl.28701:58|
 :skolemid |991|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@79) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@79)))
 :qid |XUSbpl.28716:39|
 :skolemid |992|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@80))))
 :qid |XUSbpl.28738:58|
 :skolemid |993|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81))))
 :qid |XUSbpl.28755:58|
 :skolemid |994|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82) true)
 :qid |XUSbpl.28770:51|
 :skolemid |995|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82))
)))
(assert (forall ((s@@83 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83))))
 :qid |XUSbpl.28787:60|
 :skolemid |996|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@84)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@84))))
 :qid |XUSbpl.29073:47|
 :skolemid |997|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@85))))
 :qid |XUSbpl.29095:63|
 :skolemid |998|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@86)))
 :qid |XUSbpl.29110:57|
 :skolemid |999|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@87)))
 :qid |XUSbpl.29123:55|
 :skolemid |1000|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@88)))
 :qid |XUSbpl.29137:55|
 :skolemid |1001|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@89)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@89))))
 :qid |XUSbpl.29154:54|
 :skolemid |1002|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@90)))
 :qid |XUSbpl.29168:55|
 :skolemid |1003|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@91)))
 :qid |XUSbpl.29182:57|
 :skolemid |1004|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@92))))
 :qid |XUSbpl.29204:56|
 :skolemid |1005|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@93))))
 :qid |XUSbpl.29229:52|
 :skolemid |1006|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@94)))
 :qid |XUSbpl.29245:54|
 :skolemid |1007|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@95)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@95))))
 :qid |XUSbpl.30087:47|
 :skolemid |1008|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@96)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@96))))
 :qid |XUSbpl.30111:47|
 :skolemid |1009|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@97)))
 :qid |XUSbpl.30343:63|
 :skolemid |1010|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@98)))
 :qid |XUSbpl.30679:49|
 :skolemid |1011|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@99)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@99))))
 :qid |XUSbpl.30722:49|
 :skolemid |1012|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@100)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@100))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@100))))
 :qid |XUSbpl.30751:48|
 :skolemid |1013|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@101)))
 :qid |XUSbpl.31035:47|
 :skolemid |1014|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101))
)))
(assert (forall ((v@@29 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_14401 v@@29)))
 (and (= (seq.len r@@0) (seq.len v@@29)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@0))) (= (seq.nth r@@0 i@@36) (seq.nth v@@29 (- (- (seq.len v@@29) i@@36) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@36))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_14401 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_117711 v@@30)))
 (and (= (seq.len r@@1) (seq.len v@@30)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@1))) (= (seq.nth r@@1 i@@37) (seq.nth v@@30 (- (- (seq.len v@@30) i@@37) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@37))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_117711 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_116332 v@@31)))
 (and (= (seq.len r@@2) (seq.len v@@31)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@2))) (= (seq.nth r@@2 i@@38) (seq.nth v@@31 (- (- (seq.len v@@31) i@@38) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@38))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_116332 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_116529 v@@32)))
 (and (= (seq.len r@@3) (seq.len v@@32)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@3))) (= (seq.nth r@@3 i@@39) (seq.nth v@@32 (- (- (seq.len v@@32) i@@39) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@39))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_116529 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_116726 v@@33)))
 (and (= (seq.len r@@4) (seq.len v@@33)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@4))) (= (seq.nth r@@4 i@@40) (seq.nth v@@33 (- (- (seq.len v@@33) i@@40) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@40))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_116726 v@@33))
)))
(assert (forall ((v@@34 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_117908 v@@34)))
 (and (= (seq.len r@@5) (seq.len v@@34)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@5))) (= (seq.nth r@@5 i@@41) (seq.nth v@@34 (- (- (seq.len v@@34) i@@41) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@41))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_117908 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_117317 v@@35)))
 (and (= (seq.len r@@6) (seq.len v@@35)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@6))) (= (seq.nth r@@6 i@@42) (seq.nth v@@35 (- (- (seq.len v@@35) i@@42) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@42))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_117317 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_117120 v@@36)))
 (and (= (seq.len r@@7) (seq.len v@@36)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@7))) (= (seq.nth r@@7 i@@43) (seq.nth v@@36 (- (- (seq.len v@@36) i@@43) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@43))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_117120 v@@36))
)))
(assert (forall ((v@@37 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_116923 v@@37)))
 (and (= (seq.len r@@8) (seq.len v@@37)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@8))) (= (seq.nth r@@8 i@@44) (seq.nth v@@37 (- (- (seq.len v@@37) i@@44) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@44))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_116923 v@@37))
)))
(assert (forall ((v@@38 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@9 (ReverseVec_117514 v@@38)))
 (and (= (seq.len r@@9) (seq.len v@@38)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@9))) (= (seq.nth r@@9 i@@45) (seq.nth v@@38 (- (- (seq.len v@@38) i@@45) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@45))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_117514 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@#0|)) ) (! (let ((r@@10 (ReverseVec_116135 v@@39)))
 (and (= (seq.len r@@10) (seq.len v@@39)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@10))) (= (seq.nth r@@10 i@@46) (seq.nth v@@39 (- (- (seq.len v@@39) i@@46) 1))))
 :qid |XUSbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@46))
))))
 :qid |XUSbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_116135 v@@39))
)))
(assert (forall ((|l#0| Bool) (i@@47 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@47) |l#0|)
 :qid |XUSbpl.250:54|
 :skolemid |1105|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@47))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_130017|) (|l#1| |T@[$1_Event_EventHandle]Multiset_130017|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| |l#1| handle@@0))))
(Multiset_130017 (|lambda#3| (|v#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| |l#0@@0| handle@@0)) (|v#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XUSbpl.2922:13|
 :skolemid |1106|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@40) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@40) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@40)))
 :qid |XUSbpl.129:29|
 :skolemid |1107|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@40))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_14548)
(declare-fun $t14@1 () T@$Mutation_163541)
(declare-fun $t24@1 () T@$Mutation_14548)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_163541)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_163046)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_163046)
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_163724)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_163911)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_164004)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_164090)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_164163)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_164234)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_164318)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_164402)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_164473)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_164557)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_164641)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_164712)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_164809)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_164893)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_164977)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_165048)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_165119)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_165291)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_165362)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_165433)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_165517)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_163598)
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
(declare-fun $t14 () T@$Mutation_163541)
(declare-fun $t14@0 () T@$Mutation_163541)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_163541)
(declare-fun $t24 () T@$Mutation_14548)
; Valid
(declare-fun |$temp_0'$1_Diem_Preburn'#0''@1| () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t0@0 () T@$Mutation_181699)
(declare-fun $t13 () Int)
(declare-fun $t14@@0 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_174430)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@3| () T@$Memory_174430)
(declare-fun $t12@@0 () |T@$1_Diem_Preburn'#0'|)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_174988)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_175442)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_180942)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_180517)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $t15 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t17 () T@$1_Event_EventHandle)
(declare-fun $t16 () (Seq Int))
(declare-fun _$t1@@0 () Int)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_130017_| (|T@[$1_Event_EventHandle]Multiset_130017| T@$1_Event_EventHandle T@Multiset_130017) |T@[$1_Event_EventHandle]Multiset_130017|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_130017|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_130017)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|Store__T@[$1_Event_EventHandle]Multiset_130017_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_130017|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_130017)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|Store__T@[$1_Event_EventHandle]Multiset_130017_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_130017_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@4 () Bool)
(declare-fun $t33@3 () T@$Mutation_181745)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_174430)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int |T@$1_Diem_CurrencyInfo'#0'|) |T@[Int]$1_Diem_CurrencyInfo'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $es@0 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_174430)
(declare-fun $t20@0 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t52@0 () T@$Mutation_156872)
(declare-fun $t53@0 () T@$1_Diem_BurnEvent)
(declare-fun $t30@0 () Int)
(declare-fun $t18 () (Seq Int))
(declare-fun $t50@0 () Bool)
(declare-fun $t49@0 () T@$Mutation_14548)
(declare-fun $t33@2 () T@$Mutation_181745)
(declare-fun $t49@1 () T@$Mutation_14548)
(declare-fun inline$$Sub$1$dst@2 () Int)
(declare-fun inline$$Sub$1$dst@0 () Int)
(declare-fun $t47@0 () Int)
(declare-fun inline$$Sub$1$dst@1 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun inline$$Ge$1$dst@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_174430)
(declare-fun $t46 () Int)
(declare-fun $t43@0 () Int)
(declare-fun $t42@0 () T@$Mutation_14548)
(declare-fun $t33@1 () T@$Mutation_181745)
(declare-fun $t42@1 () T@$Mutation_14548)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun $t39@0 () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun $t38 () Int)
(declare-fun $t34@0 () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'#0''@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t33 () T@$Mutation_181745)
(declare-fun $t33@0 () T@$Mutation_181745)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t31 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t27@0 () T@$Mutation_181792)
(declare-fun _$t0@@0 () T@$Mutation_181699)
(declare-fun $t29@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t27@1 () T@$Mutation_181792)
(declare-fun |$temp_0'$1_Diem_Diem'#0''@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t28 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t26 () Int)
(declare-fun $t22@0 () Int)
(declare-fun $t19 () Bool)
(declare-fun $t21@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun _$t2@@0 () |T@$1_Diem_BurnCapability'#0'|)
(declare-fun |$temp_0'$1_Diem_Preburn'#0''@0| () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t10@@0 () T@$Mutation_181745)
(declare-fun $t27 () T@$Mutation_181792)
(declare-fun $t42 () T@$Mutation_14548)
(declare-fun $t49 () T@$Mutation_14548)
(declare-fun $t52 () T@$Mutation_156872)
; Valid
(declare-fun |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@1| () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $t0@0@@0 () T@$Mutation_186172)
(declare-fun $t13@@0 () Int)
(declare-fun $t14@@1 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| () T@$Memory_164318)
(declare-fun $t12@@1 () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_174860)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_175268)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_180744)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_180335)
(declare-fun $es@1@@0 () T@$EventStore)
(declare-fun $t15@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t17@@0 () T@$1_Event_EventHandle)
(declare-fun $t16@@0 () (Seq Int))
(declare-fun _$t1@@1 () Int)
(declare-fun $abort_flag@4@@0 () Bool)
(declare-fun $t33@3@@0 () T@$Mutation_186218)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| () T@$Memory_164318)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| () T@$Memory_164318)
(declare-fun $t20@0@@0 () Int)
(declare-fun $abort_code@5@@0 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t52@0@@0 () T@$Mutation_156872)
(declare-fun $t53@0@@0 () T@$1_Diem_BurnEvent)
(declare-fun $t30@0@@0 () Int)
(declare-fun $t18@@0 () (Seq Int))
(declare-fun $t50@0@@0 () Bool)
(declare-fun $t49@0@@0 () T@$Mutation_14548)
(declare-fun $t33@2@@0 () T@$Mutation_186218)
(declare-fun $t49@1@@0 () T@$Mutation_14548)
(declare-fun inline$$Sub$1$dst@2@@0 () Int)
(declare-fun inline$$Sub$1$dst@0@@0 () Int)
(declare-fun $t47@0@@0 () Int)
(declare-fun inline$$Sub$1$dst@1@@0 () Int)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun inline$$Ge$1$dst@1@@0 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| () T@$Memory_164318)
(declare-fun $t46@@0 () Int)
(declare-fun $t43@0@@0 () Int)
(declare-fun $t42@0@@0 () T@$Mutation_14548)
(declare-fun $t33@1@@0 () T@$Mutation_186218)
(declare-fun $t42@1@@0 () T@$Mutation_14548)
(declare-fun inline$$Sub$0$dst@2@@0 () Int)
(declare-fun inline$$Sub$0$dst@0@@0 () Int)
(declare-fun $t39@0@@0 () Int)
(declare-fun inline$$CastU128$1$dst@1@@0 () Int)
(declare-fun inline$$Sub$0$dst@1@@0 () Int)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun inline$$CastU128$1$dst@0@@0 () Int)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$Ge$0$dst@1@@0 () Bool)
(declare-fun $t38@@0 () Int)
(declare-fun $t34@0@@0 () Int)
(declare-fun inline$$CastU128$0$dst@1@@0 () Int)
(declare-fun inline$$CastU128$0$dst@0@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0| () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t33@@0 () T@$Mutation_186218)
(declare-fun $t33@0@@0 () T@$Mutation_186218)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t31@@0 () Bool)
(declare-fun $t20@@1 () Int)
(declare-fun inline$$Gt$0$dst@1@@0 () Bool)
(declare-fun $t27@0@@0 () T@$Mutation_186265)
(declare-fun _$t0@@1 () T@$Mutation_186172)
(declare-fun $t29@0@@0 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t27@1@@0 () T@$Mutation_186265)
(declare-fun |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t28@@0 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $t26@@0 () Int)
(declare-fun $t22@0@@0 () Int)
(declare-fun $t19@@0 () Bool)
(declare-fun $t21@0@@0 () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun _$t2@@1 () |T@$1_Diem_BurnCapability'$1_XUS_XUS'|)
(declare-fun |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@0| () |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $t10@@1 () T@$Mutation_186218)
(declare-fun $t27@@0 () T@$Mutation_186265)
(declare-fun $t42@@0 () T@$Mutation_14548)
(declare-fun $t49@@0 () T@$Mutation_14548)
(declare-fun $t52@@0 () T@$Mutation_156872)
(push 1)
(set-info :boogie-vc-id $1_Diem_burn_with_resource_cap$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 460133) (let ((L9_correct@@0  (=> (and (= |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@1| (|v#$Mutation_186172| $t0@0@@0)) (= |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@1| |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@1|)) (and (=> (= (ControlFlow 0 323037) (- 0 462749)) (not (= $t13@@0 0))) (=> (not (= $t13@@0 0)) (and (=> (= (ControlFlow 0 323037) (- 0 462760)) (not (< (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t14@@1) $t13@@0))) (=> (not (< (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t14@@1) $t13@@0)) (and (=> (= (ControlFlow 0 323037) (- 0 462773)) (not (< (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t14@@1) $t13@@0))) (=> (not (< (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t14@@1) $t13@@0)) (and (=> (= (ControlFlow 0 323037) (- 0 462786)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 323037) (- 0 462796)) (= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (- (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1))))) (=> (= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (- (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1)))) (and (=> (= (ControlFlow 0 323037) (- 0 462819)) (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (- (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1))))) (=> (= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (- (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1)))) (and (=> (= (ControlFlow 0 323037) (- 0 462842)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 323037) (- 0 462862)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@22)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@22))))
 :qid |XUSbpl.8669:15|
 :skolemid |212|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@23)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@23))))
 :qid |XUSbpl.8669:15|
 :skolemid |212|
)) (and (=> (= (ControlFlow 0 323037) (- 0 462891)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@24)))
 :qid |XUSbpl.8674:15|
 :skolemid |213|
))) (=> (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@25) (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@25)))
 :qid |XUSbpl.8674:15|
 :skolemid |213|
)) (and (=> (= (ControlFlow 0 323037) (- 0 462916)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_175268| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@26)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_175268| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@26))))
 :qid |XUSbpl.8679:15|
 :skolemid |214|
))) (=> (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_175268| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@27)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_175268| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@27))))
 :qid |XUSbpl.8679:15|
 :skolemid |214|
)) (and (=> (= (ControlFlow 0 323037) (- 0 462945)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_175268| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_175268| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@28)))
 :qid |XUSbpl.8684:15|
 :skolemid |215|
))) (=> (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_175268| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_175268| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@29)))
 :qid |XUSbpl.8684:15|
 :skolemid |215|
)) (and (=> (= (ControlFlow 0 323037) (- 0 462970)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 323037) (- 0 462990)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_180744| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@30) (|Select__T@[Int]Bool_| (|domain#$Memory_180335| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@30))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_180744| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@30))))
 :qid |XUSbpl.8694:15|
 :skolemid |216|
))) (=> (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_180744| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_180335| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@31))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_180744| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@31))))
 :qid |XUSbpl.8694:15|
 :skolemid |216|
)) (and (=> (= (ControlFlow 0 323037) (- 0 463026)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180744| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_180744| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@32)))
 :qid |XUSbpl.8699:15|
 :skolemid |217|
))) (=> (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180744| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_180744| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@33)))
 :qid |XUSbpl.8699:15|
 :skolemid |217|
)) (and (=> (= (ControlFlow 0 323037) (- 0 463051)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@1@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t15@@0)) (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| $EmptyEventStore) $t17@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_130017| stream@@6)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| stream@@6) (|$ToEventRep'$1_Diem_BurnEvent'| ($1_Diem_BurnEvent (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1)) $t16@@0 _$t1@@1)))))
(Multiset_130017 (|Store__T@[$EventRep]Int_| (|v#Multiset_130017| stream@@6) (|$ToEventRep'$1_Diem_BurnEvent'| ($1_Diem_BurnEvent (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1)) $t16@@0 _$t1@@1)) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| $EmptyEventStore) $t17@@0 stream_new@@3)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@6 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| expected@@2) handle@@6)) (|l#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| actual@@2) handle@@6))) (forall ((v@@46 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| expected@@2) handle@@6)) v@@46) (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| actual@@2) handle@@6)) v@@46))
 :qid |XUSbpl.139:13|
 :skolemid |3|
)))
 :qid |XUSbpl.2928:13|
 :skolemid |80|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@1@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t15@@0)) (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| $EmptyEventStore) $t17@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_130017| stream@@7)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| stream@@7) (|$ToEventRep'$1_Diem_BurnEvent'| ($1_Diem_BurnEvent (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1)) $t16@@0 _$t1@@1)))))
(Multiset_130017 (|Store__T@[$EventRep]Int_| (|v#Multiset_130017| stream@@7) (|$ToEventRep'$1_Diem_BurnEvent'| ($1_Diem_BurnEvent (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1)) $t16@@0 _$t1@@1)) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| $EmptyEventStore) $t17@@0 stream_new@@4)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@7 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| expected@@3) handle@@7)) (|l#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| actual@@3) handle@@7))) (forall ((v@@47 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| expected@@3) handle@@7)) v@@47) (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| actual@@3) handle@@7)) v@@47))
 :qid |XUSbpl.139:13|
 :skolemid |3|
)))
 :qid |XUSbpl.2928:13|
 :skolemid |80|
))))) (=> (= (ControlFlow 0 323037) (- 0 463091)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@1@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t15@@0)) (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| $EmptyEventStore) $t17@@0)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_130017| stream@@8)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| stream@@8) (|$ToEventRep'$1_Diem_BurnEvent'| ($1_Diem_BurnEvent (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1)) $t16@@0 _$t1@@1)))))
(Multiset_130017 (|Store__T@[$EventRep]Int_| (|v#Multiset_130017| stream@@8) (|$ToEventRep'$1_Diem_BurnEvent'| ($1_Diem_BurnEvent (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1)) $t16@@0 _$t1@@1)) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| $EmptyEventStore) $t17@@0 stream_new@@5)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@8 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| actual@@4) handle@@8)) (|l#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| expected@@4) handle@@8))) (forall ((v@@48 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| actual@@4) handle@@8)) v@@48) (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| expected@@4) handle@@8)) v@@48))
 :qid |XUSbpl.139:13|
 :skolemid |3|
)))
 :qid |XUSbpl.2928:13|
 :skolemid |80|
)))))))))))))))))))))))))))))))))))))))
(let ((anon49_Else_correct@@0  (=> (not $abort_flag@4@@0) (and (=> (= (ControlFlow 0 323392) (- 0 462471)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@3@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@3@@0)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@3@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@3@@0)) 10000000000)) (=> (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2| ($Memory_164318 (|Store__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_186218| $t33@3@@0)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_186218| $t33@3@@0)) (|v#$Mutation_186218| $t33@3@@0)))) (and (=> (= (ControlFlow 0 323392) (- 0 462519)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)))) (forall ((mint_cap_owner1@@6 Int) (mint_cap_owner2@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@6) (=> (|$IsValid'address'| mint_cap_owner2@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@6)) (= mint_cap_owner1@@6 mint_cap_owner2@@6))))
 :qid |XUSbpl.8480:99|
 :skolemid |204|
)))) (=> (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)))) (forall ((mint_cap_owner1@@7 Int) (mint_cap_owner2@@7 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@7) (=> (|$IsValid'address'| mint_cap_owner2@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@7)) (= mint_cap_owner1@@7 mint_cap_owner2@@7))))
 :qid |XUSbpl.8480:99|
 :skolemid |204|
))) (and (=> (= (ControlFlow 0 323392) (- 0 462564)) (forall ((addr3@@6 Int) ) (!  (=> (|$IsValid'address'| addr3@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816))))))
 :qid |XUSbpl.8486:15|
 :skolemid |205|
))) (=> (forall ((addr3@@7 Int) ) (!  (=> (|$IsValid'address'| addr3@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816))))))
 :qid |XUSbpl.8486:15|
 :skolemid |205|
)) (and (=> (= (ControlFlow 0 323392) (- 0 462587)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180335| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@34) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)))
 :qid |XUSbpl.8492:15|
 :skolemid |206|
))) (=> (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180335| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@35) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)))
 :qid |XUSbpl.8492:15|
 :skolemid |206|
)) (and (=> (= (ControlFlow 0 323392) (- 0 462610)) (forall ((dr_addr@@5 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) dr_addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) dr_addr@@5)))
 :qid |XUSbpl.8498:15|
 :skolemid |207|
))) (=> (forall ((dr_addr@@6 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) dr_addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) dr_addr@@6)))
 :qid |XUSbpl.8498:15|
 :skolemid |207|
)) (and (=> (= (ControlFlow 0 323392) (- 0 462634)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@17 Int) ) (!  (and (|$IsValid'address'| a@@17) (and ($1_Signer_is_txn_signer_addr a@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@17)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@18 Int) ) (!  (and (|$IsValid'address'| a@@18) (and ($1_Signer_is_txn_signer_addr a@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@18)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
)))) (and (=> (= (ControlFlow 0 323392) (- 0 462658)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@19 Int) ) (!  (and (|$IsValid'address'| a@@19) (and ($1_Signer_is_txn_signer_addr a@@19) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@19)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@20 Int) ) (!  (and (|$IsValid'address'| a@@20) (and ($1_Signer_is_txn_signer_addr a@@20) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@20)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
)))) (and (=> (= (ControlFlow 0 323392) (- 0 462682)) (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)) (exists ((a@@21 Int) ) (!  (and (|$IsValid'address'| a@@21) (and ($1_Signer_is_txn_signer_addr a@@21) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@21)) 0))))
 :qid |XUSbpl.4740:13|
 :skolemid |118|
)))) (=> (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)) (exists ((a@@22 Int) ) (!  (and (|$IsValid'address'| a@@22) (and ($1_Signer_is_txn_signer_addr a@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@22)) 0))))
 :qid |XUSbpl.4740:13|
 :skolemid |118|
))) (and (=> (= (ControlFlow 0 323392) (- 0 462701)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_163046| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_163046| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) 173345816)) (=> (= $es@1@@0 $es@0@@0) (=> (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@2|) (= (ControlFlow 0 323392) 323037)) L9_correct@@0))))))))))))))))))))))))
(let ((anon48_Else_correct@@0  (=> (not inline$$Not$0$dst@1@@0) (and (=> (= (ControlFlow 0 322629) (- 0 462031)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@3@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@3@@0)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@3@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@3@@0)) 10000000000)) (=> (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1| ($Memory_164318 (|Store__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_186218| $t33@3@@0)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_186218| $t33@3@@0)) (|v#$Mutation_186218| $t33@3@@0)))) (and (=> (= (ControlFlow 0 322629) (- 0 462079)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)))) (forall ((mint_cap_owner1@@8 Int) (mint_cap_owner2@@8 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@8) (=> (|$IsValid'address'| mint_cap_owner2@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@8)) (= mint_cap_owner1@@8 mint_cap_owner2@@8))))
 :qid |XUSbpl.8552:99|
 :skolemid |208|
)))) (=> (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)))) (forall ((mint_cap_owner1@@9 Int) (mint_cap_owner2@@9 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@9) (=> (|$IsValid'address'| mint_cap_owner2@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@9)) (= mint_cap_owner1@@9 mint_cap_owner2@@9))))
 :qid |XUSbpl.8552:99|
 :skolemid |208|
))) (and (=> (= (ControlFlow 0 322629) (- 0 462124)) (forall ((addr3@@8 Int) ) (!  (=> (|$IsValid'address'| addr3@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816))))))
 :qid |XUSbpl.8558:15|
 :skolemid |209|
))) (=> (forall ((addr3@@9 Int) ) (!  (=> (|$IsValid'address'| addr3@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816))))))
 :qid |XUSbpl.8558:15|
 :skolemid |209|
)) (and (=> (= (ControlFlow 0 322629) (- 0 462147)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180335| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)))
 :qid |XUSbpl.8564:15|
 :skolemid |210|
))) (=> (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180335| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@37) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)))
 :qid |XUSbpl.8564:15|
 :skolemid |210|
)) (and (=> (= (ControlFlow 0 322629) (- 0 462170)) (forall ((dr_addr@@7 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) dr_addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) dr_addr@@7)))
 :qid |XUSbpl.8570:15|
 :skolemid |211|
))) (=> (forall ((dr_addr@@8 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) dr_addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) dr_addr@@8)))
 :qid |XUSbpl.8570:15|
 :skolemid |211|
)) (and (=> (= (ControlFlow 0 322629) (- 0 462194)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@23 Int) ) (!  (and (|$IsValid'address'| a@@23) (and ($1_Signer_is_txn_signer_addr a@@23) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@23)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@24 Int) ) (!  (and (|$IsValid'address'| a@@24) (and ($1_Signer_is_txn_signer_addr a@@24) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@24)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
)))) (and (=> (= (ControlFlow 0 322629) (- 0 462218)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@25 Int) ) (!  (and (|$IsValid'address'| a@@25) (and ($1_Signer_is_txn_signer_addr a@@25) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@25)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@26 Int) ) (!  (and (|$IsValid'address'| a@@26) (and ($1_Signer_is_txn_signer_addr a@@26) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@26)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
)))) (and (=> (= (ControlFlow 0 322629) (- 0 462242)) (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)) (exists ((a@@27 Int) ) (!  (and (|$IsValid'address'| a@@27) (and ($1_Signer_is_txn_signer_addr a@@27) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@27)) 0))))
 :qid |XUSbpl.4740:13|
 :skolemid |118|
)))) (=> (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)) (exists ((a@@28 Int) ) (!  (and (|$IsValid'address'| a@@28) (and ($1_Signer_is_txn_signer_addr a@@28) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@28)) 0))))
 :qid |XUSbpl.4740:13|
 :skolemid |118|
))) (and (=> (= (ControlFlow 0 322629) (- 0 462261)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_163046| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_163046| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) 173345816)) (=> (= $es@1@@0 $es) (=> (and (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@3| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 322629) 323037)) L9_correct@@0))))))))))))))))))))))))
(let ((L13_correct@@0  (and (=> (= (ControlFlow 0 321069) (- 0 462366)) (or (or (or (= $t13@@0 0) (< (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t14@@1) $t13@@0)) (< (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t14@@1) $t13@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (or (or (or (= $t13@@0 0) (< (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t14@@1) $t13@@0)) (< (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t14@@1) $t13@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (= (ControlFlow 0 321069) (- 0 462399)) (or (or (or (and (= $t13@@0 0) (= 1 $t20@0@@0)) (and (< (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t14@@1) $t13@@0) (= 8 $t20@0@@0))) (and (< (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t14@@1) $t13@@0) (= 8 $t20@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t20@0@@0))))))))
(let ((anon49_Then_correct@@0  (=> (and (and $abort_flag@4@@0 (= $abort_code@5@@0 $abort_code@5@@0)) (and (= $t20@0@@0 $abort_code@5@@0) (= (ControlFlow 0 323406) 321069))) L13_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1@@0| (|v#$Mutation_156872| $t52@0@@0)) (= $es@0@@0 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1@@0|)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_130017| stream@@9)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| stream@@9) (|$ToEventRep'$1_Diem_BurnEvent'| $t53@0@@0))))
(Multiset_130017 (|Store__T@[$EventRep]Int_| (|v#Multiset_130017| stream@@9) (|$ToEventRep'$1_Diem_BurnEvent'| $t53@0@@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$handle@1@@0| stream_new@@6)))))) (and (=> (= (ControlFlow 0 323134) 323406) anon49_Then_correct@@0) (=> (= (ControlFlow 0 323134) 323392) anon49_Else_correct@@0)))))
(let ((anon48_Then_correct@@0  (=> (and (and inline$$Not$0$dst@1@@0 (= $t52@0@@0 ($Mutation_156872 (|l#$Mutation_186218| $t33@3@@0) (seq.++ (|p#$Mutation_186218| $t33@3@@0) (seq.unit 9)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@3@@0))))) (and (= $t53@0@@0 ($1_Diem_BurnEvent $t30@0@@0 $t18@@0 _$t1@@1)) (= (ControlFlow 0 323140) 323134))) |inline$$1_Event_emit_event'$1_Diem_BurnEvent'$0$anon0_correct@@0|)))
(let ((inline$$Not$0$anon0_correct@@0  (=> (= inline$$Not$0$dst@1@@0  (not $t50@0@@0)) (and (=> (= (ControlFlow 0 322369) 323140) anon48_Then_correct@@0) (=> (= (ControlFlow 0 322369) 322629) anon48_Else_correct@@0)))))
(let ((anon47_Else_correct@@0  (=> (and (not $abort_flag@4@@0) (= $t49@0@@0 ($Mutation_14548 (|l#$Mutation_186218| $t33@2@@0) (seq.++ (|p#$Mutation_186218| $t33@2@@0) (seq.unit 1)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0))))) (=> (and (and (= $t49@1@@0 ($Mutation_14548 (|l#$Mutation_14548| $t49@0@@0) (|p#$Mutation_14548| $t49@0@@0) inline$$Sub$1$dst@2@@0)) (= $t33@3@@0 ($Mutation_186218 (|l#$Mutation_186218| $t33@2@@0) (|p#$Mutation_186218| $t33@2@@0) (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|v#$Mutation_14548| $t49@1@@0) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)))))) (and (= $t50@0@@0 (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@3@@0))) (= (ControlFlow 0 322375) 322369))) inline$$Not$0$anon0_correct@@0))))
(let ((anon47_Then_correct@@0  (=> (and (and $abort_flag@4@@0 (= $abort_code@5@@0 $abort_code@5@@0)) (and (= $t20@0@@0 $abort_code@5@@0) (= (ControlFlow 0 323420) 321069))) L13_correct@@0)))
(let ((inline$$Sub$1$anon3_Then$1_correct@@0  (=> (= $abort_code@5@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@4@@0 true) (= inline$$Sub$1$dst@2@@0 inline$$Sub$1$dst@0@@0)) (and (=> (= (ControlFlow 0 322285) 323420) anon47_Then_correct@@0) (=> (= (ControlFlow 0 322285) 322375) anon47_Else_correct@@0))))))
(let ((inline$$Sub$1$anon3_Then_correct@@0  (=> (and (< $t47@0@@0 $t30@0@@0) (= (ControlFlow 0 322283) 322285)) inline$$Sub$1$anon3_Then$1_correct@@0)))
(let ((inline$$Sub$1$anon3_Else_correct@@0  (=> (<= $t30@0@@0 $t47@0@@0) (=> (and (and (= inline$$Sub$1$dst@1@@0 (- $t47@0@@0 $t30@0@@0)) (= $abort_code@5@@0 $abort_code@4@@0)) (and (= $abort_flag@4@@0 $abort_flag@3@@0) (= inline$$Sub$1$dst@2@@0 inline$$Sub$1$dst@1@@0))) (and (=> (= (ControlFlow 0 322235) 323420) anon47_Then_correct@@0) (=> (= (ControlFlow 0 322235) 322375) anon47_Else_correct@@0))))))
(let ((anon46_Then_correct@@0  (=> (and inline$$Ge$1$dst@1@@0 (= $t47@0@@0 (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)))) (and (=> (= (ControlFlow 0 322291) 322283) inline$$Sub$1$anon3_Then_correct@@0) (=> (= (ControlFlow 0 322291) 322235) inline$$Sub$1$anon3_Else_correct@@0)))))
(let ((anon46_Else_correct@@0  (=> (not inline$$Ge$1$dst@1@@0) (and (=> (= (ControlFlow 0 322144) (- 0 461580)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0)) 10000000000)) (=> (= |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0| ($Memory_164318 (|Store__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_186218| $t33@2@@0)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) (|a#$Global| (|l#$Mutation_186218| $t33@2@@0)) (|v#$Mutation_186218| $t33@2@@0)))) (and (=> (= (ControlFlow 0 322144) (- 0 461628)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)))) (forall ((mint_cap_owner1@@10 Int) (mint_cap_owner2@@10 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@10) (=> (|$IsValid'address'| mint_cap_owner2@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@10)) (= mint_cap_owner1@@10 mint_cap_owner2@@10))))
 :qid |XUSbpl.8341:99|
 :skolemid |200|
)))) (=> (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)))) (forall ((mint_cap_owner1@@11 Int) (mint_cap_owner2@@11 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@11) (=> (|$IsValid'address'| mint_cap_owner2@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@11)) (= mint_cap_owner1@@11 mint_cap_owner2@@11))))
 :qid |XUSbpl.8341:99|
 :skolemid |200|
))) (and (=> (= (ControlFlow 0 322144) (- 0 461673)) (forall ((addr3@@10 Int) ) (!  (=> (|$IsValid'address'| addr3@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816))))))
 :qid |XUSbpl.8347:15|
 :skolemid |201|
))) (=> (forall ((addr3@@11 Int) ) (!  (=> (|$IsValid'address'| addr3@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816))))))
 :qid |XUSbpl.8347:15|
 :skolemid |201|
)) (and (=> (= (ControlFlow 0 322144) (- 0 461696)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180335| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@38) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)))
 :qid |XUSbpl.8353:15|
 :skolemid |202|
))) (=> (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180335| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@39) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)))
 :qid |XUSbpl.8353:15|
 :skolemid |202|
)) (and (=> (= (ControlFlow 0 322144) (- 0 461719)) (forall ((dr_addr@@9 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) dr_addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) dr_addr@@9)))
 :qid |XUSbpl.8359:15|
 :skolemid |203|
))) (=> (forall ((dr_addr@@10 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) dr_addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) dr_addr@@10)))
 :qid |XUSbpl.8359:15|
 :skolemid |203|
)) (and (=> (= (ControlFlow 0 322144) (- 0 461743)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@29 Int) ) (!  (and (|$IsValid'address'| a@@29) (and ($1_Signer_is_txn_signer_addr a@@29) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@29)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@30 Int) ) (!  (and (|$IsValid'address'| a@@30) (and ($1_Signer_is_txn_signer_addr a@@30) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@30)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
)))) (and (=> (= (ControlFlow 0 322144) (- 0 461767)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@31 Int) ) (!  (and (|$IsValid'address'| a@@31) (and ($1_Signer_is_txn_signer_addr a@@31) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@31)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (exists ((a@@32 Int) ) (!  (and (|$IsValid'address'| a@@32) (and ($1_Signer_is_txn_signer_addr a@@32) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@32)) 1))))
 :qid |XUSbpl.4735:13|
 :skolemid |117|
)))) (and (=> (= (ControlFlow 0 322144) (- 0 461791)) (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)) (exists ((a@@33 Int) ) (!  (and (|$IsValid'address'| a@@33) (and ($1_Signer_is_txn_signer_addr a@@33) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@33)) 0))))
 :qid |XUSbpl.4740:13|
 :skolemid |118|
)))) (=> (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)) (exists ((a@@34 Int) ) (!  (and (|$IsValid'address'| a@@34) (and ($1_Signer_is_txn_signer_addr a@@34) (and (|Select__T@[Int]Bool_| (|domain#$Memory_163724| $1_Roles_RoleId_$memory) a@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_163724| $1_Roles_RoleId_$memory) a@@34)) 0))))
 :qid |XUSbpl.4740:13|
 :skolemid |118|
))) (and (=> (= (ControlFlow 0 322144) (- 0 461810)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_163046| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_163046| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory@0|) 173345816)) (=> (= $t46@@0 $t46@@0) (=> (and (= $t20@0@@0 $t46@@0) (= (ControlFlow 0 322144) 321069)) L13_correct@@0))))))))))))))))))))))))
(let ((anon45_Else$1_correct@@0  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t46@@0) (= $t46@@0 8)) (and (= $t46@@0 $t46@@0) (= inline$$Ge$1$dst@1@@0 inline$$Ge$1$dst@1@@0))) (and (=> (= (ControlFlow 0 321884) 322291) anon46_Then_correct@@0) (=> (= (ControlFlow 0 321884) 322144) anon46_Else_correct@@0))))))
(let ((inline$$Ge$1$anon0_correct@@0  (=> (and (= inline$$Ge$1$dst@1@@0 (>= $t43@0@@0 $t30@0@@0)) (= (ControlFlow 0 321848) 321884)) anon45_Else$1_correct@@0)))
(let ((anon45_Else_correct@@0  (=> (and (not $abort_flag@3@@0) (= $t42@0@@0 ($Mutation_14548 (|l#$Mutation_186218| $t33@1@@0) (seq.++ (|p#$Mutation_186218| $t33@1@@0) (seq.unit 0)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0))))) (=> (and (and (= $t42@1@@0 ($Mutation_14548 (|l#$Mutation_14548| $t42@0@@0) (|p#$Mutation_14548| $t42@0@@0) inline$$Sub$0$dst@2@@0)) (= $t33@2@@0 ($Mutation_186218 (|l#$Mutation_186218| $t33@1@@0) (|p#$Mutation_186218| $t33@1@@0) (|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_14548| $t42@1@@0) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)))))) (and (= $t43@0@@0 (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@2@@0))) (= (ControlFlow 0 321854) 321848))) inline$$Ge$1$anon0_correct@@0))))
(let ((anon45_Then_correct@@0  (=> (and (and $abort_flag@3@@0 (= $abort_code@4@@0 $abort_code@4@@0)) (and (= $t20@0@@0 $abort_code@4@@0) (= (ControlFlow 0 323434) 321069))) L13_correct@@0)))
(let ((inline$$Sub$0$anon3_Then$1_correct@@0  (=> (= $abort_flag@3@@0 true) (=> (and (= $abort_code@4@@0 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2@@0 inline$$Sub$0$dst@0@@0)) (and (=> (= (ControlFlow 0 321754) 323434) anon45_Then_correct@@0) (=> (= (ControlFlow 0 321754) 321854) anon45_Else_correct@@0))))))
(let ((inline$$Sub$0$anon3_Then_correct@@0  (=> (and (< $t39@0@@0 inline$$CastU128$1$dst@1@@0) (= (ControlFlow 0 321752) 321754)) inline$$Sub$0$anon3_Then$1_correct@@0)))
(let ((inline$$Sub$0$anon3_Else_correct@@0  (=> (<= inline$$CastU128$1$dst@1@@0 $t39@0@@0) (=> (and (and (= inline$$Sub$0$dst@1@@0 (- $t39@0@@0 inline$$CastU128$1$dst@1@@0)) (= $abort_flag@3@@0 $abort_flag@2@@0)) (and (= $abort_code@4@@0 $abort_code@3@@0) (= inline$$Sub$0$dst@2@@0 inline$$Sub$0$dst@1@@0))) (and (=> (= (ControlFlow 0 321704) 323434) anon45_Then_correct@@0) (=> (= (ControlFlow 0 321704) 321854) anon45_Else_correct@@0))))))
(let ((anon44_Else_correct@@0  (=> (not $abort_flag@2@@0) (and (=> (= (ControlFlow 0 321760) 321752) inline$$Sub$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 321760) 321704) inline$$Sub$0$anon3_Else_correct@@0)))))
(let ((anon44_Then_correct@@0  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t20@0@@0 $abort_code@3@@0) (= (ControlFlow 0 323448) 321069))) L13_correct@@0)))
(let ((inline$$CastU128$1$anon3_Then$1_correct@@0  (=> (= $abort_code@3@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2@@0 true) (= inline$$CastU128$1$dst@1@@0 inline$$CastU128$1$dst@0@@0)) (and (=> (= (ControlFlow 0 321609) 323448) anon44_Then_correct@@0) (=> (= (ControlFlow 0 321609) 321760) anon44_Else_correct@@0))))))
(let ((inline$$CastU128$1$anon3_Then_correct@@0  (=> (and (> $t30@0@@0 $MAX_U128) (= (ControlFlow 0 321607) 321609)) inline$$CastU128$1$anon3_Then$1_correct@@0)))
(let ((inline$$CastU128$1$anon3_Else_correct@@0  (=> (and (and (>= $MAX_U128 $t30@0@@0) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= inline$$CastU128$1$dst@1@@0 $t30@0@@0))) (and (=> (= (ControlFlow 0 321559) 323448) anon44_Then_correct@@0) (=> (= (ControlFlow 0 321559) 321760) anon44_Else_correct@@0)))))
(let ((anon43_Then_correct@@0  (=> (and inline$$Ge$0$dst@1@@0 (= $t39@0@@0 (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)))) (and (=> (= (ControlFlow 0 321615) 321607) inline$$CastU128$1$anon3_Then_correct@@0) (=> (= (ControlFlow 0 321615) 321559) inline$$CastU128$1$anon3_Else_correct@@0)))))
(let ((anon43_Else_correct@@0  (=> (not inline$$Ge$0$dst@1@@0) (and (=> (= (ControlFlow 0 321480) (- 0 461266)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0)) 10000000000)) (=> (= $t38@@0 $t38@@0) (=> (and (= $t20@0@@0 $t38@@0) (= (ControlFlow 0 321480) 321069)) L13_correct@@0)))))))
(let ((anon42_Else$1_correct@@0  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t38@@0) (= $t38@@0 8)) (and (= $t38@@0 $t38@@0) (= inline$$Ge$0$dst@1@@0 inline$$Ge$0$dst@1@@0))) (and (=> (= (ControlFlow 0 321438) 321615) anon43_Then_correct@@0) (=> (= (ControlFlow 0 321438) 321480) anon43_Else_correct@@0))))))
(let ((inline$$Ge$0$anon0_correct@@0  (=> (and (= inline$$Ge$0$dst@1@@0 (>= $t34@0@@0 inline$$CastU128$0$dst@1@@0)) (= (ControlFlow 0 321402) 321438)) anon42_Else$1_correct@@0)))
(let ((anon42_Else_correct@@0  (=> (and (not $abort_flag@1@@0) (= (ControlFlow 0 321408) 321402)) inline$$Ge$0$anon0_correct@@0)))
(let ((anon42_Then_correct@@0  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t20@0@@0 $abort_code@2@@0) (= (ControlFlow 0 323462) 321069))) L13_correct@@0)))
(let ((inline$$CastU128$0$anon3_Then$1_correct@@0  (=> (= $abort_flag@1@@0 true) (=> (and (= $abort_code@2@@0 $EXEC_FAILURE_CODE) (= inline$$CastU128$0$dst@1@@0 inline$$CastU128$0$dst@0@@0)) (and (=> (= (ControlFlow 0 321348) 323462) anon42_Then_correct@@0) (=> (= (ControlFlow 0 321348) 321408) anon42_Else_correct@@0))))))
(let ((inline$$CastU128$0$anon3_Then_correct@@0  (=> (and (> $t30@0@@0 $MAX_U128) (= (ControlFlow 0 321346) 321348)) inline$$CastU128$0$anon3_Then$1_correct@@0)))
(let ((inline$$CastU128$0$anon3_Else_correct@@0  (=> (and (and (>= $MAX_U128 $t30@0@@0) (= $abort_flag@1@@0 $abort_flag@0@@1)) (and (= $abort_code@2@@0 $abort_code@1@@1) (= inline$$CastU128$0$dst@1@@0 $t30@0@@0))) (and (=> (= (ControlFlow 0 321298) 323462) anon42_Then_correct@@0) (=> (= (ControlFlow 0 321298) 321408) anon42_Else_correct@@0)))))
(let ((anon41_Else_correct@@0  (=> (and (and (not $abort_flag@0@@1) (= |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0| (|v#$Mutation_186218| $t33@1@@0))) (and (= |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0| |$temp_0'$1_Diem_CurrencyInfo'$1_XUS_XUS''@0|) (= $t34@0@@0 (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|v#$Mutation_186218| $t33@1@@0))))) (and (=> (= (ControlFlow 0 321354) 321346) inline$$CastU128$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 321354) 321298) inline$$CastU128$0$anon3_Else_correct@@0)))))
(let ((anon41_Then_correct@@0  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t20@0@@0 $abort_code@1@@1) (= (ControlFlow 0 323476) 321069))) L13_correct@@0)))
(let ((anon40_Then$1_correct@@0  (=> (= $t33@1@@0 $t33@@0) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 323528) 323476) anon41_Then_correct@@0) (=> (= (ControlFlow 0 323528) 321354) anon41_Else_correct@@0))))))
(let ((anon40_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= (ControlFlow 0 323526) 323528)) anon40_Then$1_correct@@0)))
(let ((anon40_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (and (and (= $t33@0@@0 ($Mutation_186218 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= $t33@1@@0 $t33@0@@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 321203) 323476) anon41_Then_correct@@0) (=> (= (ControlFlow 0 321203) 321354) anon41_Else_correct@@0))))))
(let ((anon39_Else_correct@@0  (=> (and (not $t31@@0) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 321181) 323526) anon40_Then_correct@@0) (=> (= (ControlFlow 0 321181) 321203) anon40_Else_correct@@0)))))
(let ((anon39_Then_correct@@0  (=> $t31@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t20@@1)) (= $t20@@1 $t20@@1)) (and (= $t20@0@@0 $t20@@1) (= (ControlFlow 0 323554) 321069))) L13_correct@@0))))
(let ((anon38_Then_correct@@0  (=> inline$$Gt$0$dst@1@@0 (=> (and (and (= $t27@0@@0 ($Mutation_186265 (|l#$Mutation_186172| _$t0@@1) (seq.++ (|p#$Mutation_186172| _$t0@@1) (seq.unit 0)) (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|v#$Mutation_186172| _$t0@@1)))) (= $t29@0@@0 (|v#$Mutation_186265| $t27@0@@0))) (and (= $t27@1@@0 ($Mutation_186265 (|l#$Mutation_186265| $t27@0@@0) (|p#$Mutation_186265| $t27@0@@0) |$temp_0'$1_Diem_Diem'$1_XUS_XUS''@0|)) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_186265| $t27@1@@0)))) (=> (and (and (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|v#$Mutation_186265| $t27@1@@0)) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| $t28@@0)) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t28@@0) (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t29@0@@0)) (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|v#$Mutation_186265| $t27@1@@0)) 0))) (and (and (= $t0@0@@0 ($Mutation_186172 (|l#$Mutation_186172| _$t0@@1) (|p#$Mutation_186172| _$t0@@1) (|$1_Diem_Preburn'$1_XUS_XUS'| (|v#$Mutation_186265| $t27@1@@0)))) (= $t30@0@@0 (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t28@@0))) (and (= $t30@0@@0 $t30@0@@0) (= $t31@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 321167) 323554) anon39_Then_correct@@0) (=> (= (ControlFlow 0 321167) 321181) anon39_Else_correct@@0)))))))
(let ((anon38_Else_correct@@0  (=> (and (and (not inline$$Gt$0$dst@1@@0) (= $t26@@0 $t26@@0)) (and (= $t20@0@@0 $t26@@0) (= (ControlFlow 0 320961) 321069))) L13_correct@@0)))
(let ((anon37_Else$1_correct@@0  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t26@@0) (= $t26@@0 1)) (and (= $t26@@0 $t26@@0) (= inline$$Gt$0$dst@1@@0 inline$$Gt$0$dst@1@@0))) (and (=> (= (ControlFlow 0 320945) 321167) anon38_Then_correct@@0) (=> (= (ControlFlow 0 320945) 320961) anon38_Else_correct@@0))))))
(let ((inline$$Gt$0$anon0_correct@@0  (=> (and (= inline$$Gt$0$dst@1@@0 (> $t22@0@@0 0)) (= (ControlFlow 0 320909) 320945)) anon37_Else$1_correct@@0)))
(let ((anon37_Else_correct@@0  (=> (and (and (and (not $t19@@0) (|$IsValid'vec'u8''| $t18@@0)) (and (= $t18@@0 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= $t18@@0 $t18@@0))) (and (and (= $t21@0@@0 (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|v#$Mutation_186172| _$t0@@1))) (= $t22@0@@0 (|$value#$1_Diem_Diem'$1_XUS_XUS'| $t21@0@@0))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 320915) 320909)))) inline$$Gt$0$anon0_correct@@0)))
(let ((anon37_Then_correct@@0  (=> $t19@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t20@@1)) (= $t20@@1 $t20@@1)) (and (= $t20@0@@0 $t20@@1) (= (ControlFlow 0 323580) 321069))) L13_correct@@0))))
(let ((anon0$1_correct@@1  (=> (and (and (= (|l#$Mutation_186172| _$t0@@1) ($Param 0)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@12 Int) (mint_cap_owner2@@12 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@12) (=> (|$IsValid'address'| mint_cap_owner2@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner2@@12)) (= mint_cap_owner1@@12 mint_cap_owner2@@12))))
 :qid |XUSbpl.7939:104|
 :skolemid |196|
)))) (and (forall ((addr3@@12 Int) ) (!  (=> (|$IsValid'address'| addr3@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_174860| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |XUSbpl.7943:20|
 :skolemid |197|
)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180335| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@40) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |XUSbpl.7947:20|
 :skolemid |198|
)))) (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_163046| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|v#$Mutation_186172| _$t0@@1))) (and (|$IsValid'address'| _$t1@@1) (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| _$t2@@1))) (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@1) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@1)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@1) 10000000000))))
 :qid |XUSbpl.7963:20|
 :skolemid |199|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@1))
)) (= $t12@@1 (|v#$Mutation_186172| _$t0@@1))) (and (= $t13@@0 (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| $t12@@1))) (= $t14@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (and (and (= $t15@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= $t16@@0 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (= $t17@@0 (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t15@@0)) (= |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@0| (|v#$Mutation_186172| _$t0@@1)))) (and (and (= |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@0| |$temp_0'$1_Diem_Preburn'$1_XUS_XUS''@0|) (= _$t1@@1 _$t1@@1)) (and (= _$t2@@1 _$t2@@1) (= $t19@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_164318| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))) (and (=> (= (ControlFlow 0 320827) 323580) anon37_Then_correct@@0) (=> (= (ControlFlow 0 320827) 320915) anon37_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_130017_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_130017| stream@@10) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_130017| stream@@10) v@@49) 0)
 :qid |XUSbpl.134:13|
 :skolemid |2|
))))
 :qid |XUSbpl.2912:13|
 :skolemid |79|
))) (= (ControlFlow 0 320544) 320827)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (seq.len (|p#$Mutation_186218| $t10@@1)) 0) (=> (and (= (seq.len (|p#$Mutation_186265| $t27@@0)) 0) (= (seq.len (|p#$Mutation_186218| $t33@@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_14548| $t42@@0)) 0) (= (seq.len (|p#$Mutation_14548| $t49@@0)) 0)) (and (= (seq.len (|p#$Mutation_156872| $t52@@0)) 0) (= (ControlFlow 0 320554) 320544))) inline$$InitEventStore$0$anon0_correct@@1)))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 460133) 320554) anon0_correct@@1)))
PreconditionGeneratedEntry_correct@@1))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
