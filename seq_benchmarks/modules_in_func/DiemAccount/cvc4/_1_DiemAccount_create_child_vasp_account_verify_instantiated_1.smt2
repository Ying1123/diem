(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_452997 0)) ((($Memory_452997 (|domain#$Memory_452997| |T@[Int]Bool|) (|contents#$Memory_452997| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_462213 0)) ((($Memory_462213 (|domain#$Memory_462213| |T@[Int]Bool|) (|contents#$Memory_462213| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_462142 0)) ((($Memory_462142 (|domain#$Memory_462142| |T@[Int]Bool|) (|contents#$Memory_462142| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_461899 0)) ((($Memory_461899 (|domain#$Memory_461899| |T@[Int]Bool|) (|contents#$Memory_461899| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_461828 0)) ((($Memory_461828 (|domain#$Memory_461828| |T@[Int]Bool|) (|contents#$Memory_461828| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_BitVector_BitVector 0)) ((($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| Int) (|$bit_field#$1_BitVector_BitVector| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$1_CRSN_CRSN 0)) ((($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| Int) (|$size#$1_CRSN_CRSN| Int) (|$slots#$1_CRSN_CRSN| T@$1_BitVector_BitVector) ) ) ))
(declare-sort |T@[Int]$1_CRSN_CRSN| 0)
(declare-datatypes ((T@$Memory_562054 0)) ((($Memory_562054 (|domain#$Memory_562054| |T@[Int]Bool|) (|contents#$Memory_562054| |T@[Int]$1_CRSN_CRSN|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_461757 0)) ((($Memory_461757 (|domain#$Memory_461757| |T@[Int]Bool|) (|contents#$Memory_461757| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_546564 0)) ((($Memory_546564 (|domain#$Memory_546564| |T@[Int]Bool|) (|contents#$Memory_546564| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_546393 0)) ((($Memory_546393 (|domain#$Memory_546393| |T@[Int]Bool|) (|contents#$Memory_546393| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_546222 0)) ((($Memory_546222 (|domain#$Memory_546222| |T@[Int]Bool|) (|contents#$Memory_546222| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_475720 0)) ((($Memory_475720 (|domain#$Memory_475720| |T@[Int]Bool|) (|contents#$Memory_475720| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_HaltAllTransactions 0)) ((($1_DiemTransactionPublishingOption_HaltAllTransactions (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| 0)
(declare-datatypes ((T@$Memory_543722 0)) ((($Memory_543722 (|domain#$Memory_543722| |T@[Int]Bool|) (|contents#$Memory_543722| |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_461589 0)) ((($Memory_461589 (|domain#$Memory_461589| |T@[Int]Bool|) (|contents#$Memory_461589| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_466374 0)) ((($Memory_466374 (|domain#$Memory_466374| |T@[Int]Bool|) (|contents#$Memory_466374| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_475975 0)) ((($Memory_475975 (|domain#$Memory_475975| |T@[Int]Bool|) (|contents#$Memory_475975| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_476075 0)) ((($Memory_476075 (|domain#$Memory_476075| |T@[Int]Bool|) (|contents#$Memory_476075| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_475501 0)) ((($Memory_475501 (|domain#$Memory_475501| |T@[Int]Bool|) (|contents#$Memory_475501| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_475586 0)) ((($Memory_475586 (|domain#$Memory_475586| |T@[Int]Bool|) (|contents#$Memory_475586| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_512247 0)) ((($Memory_512247 (|domain#$Memory_512247| |T@[Int]Bool|) (|contents#$Memory_512247| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_512183 0)) ((($Memory_512183 (|domain#$Memory_512183| |T@[Int]Bool|) (|contents#$Memory_512183| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_512119 0)) ((($Memory_512119 (|domain#$Memory_512119| |T@[Int]Bool|) (|contents#$Memory_512119| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_513169 0)) ((($Memory_513169 (|domain#$Memory_513169| |T@[Int]Bool|) (|contents#$Memory_513169| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_461421 0)) ((($Memory_461421 (|domain#$Memory_461421| |T@[Int]Bool|) (|contents#$Memory_461421| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_461182 0)) ((($Memory_461182 (|domain#$Memory_461182| |T@[Int]Bool|) (|contents#$Memory_461182| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_462071 0)) ((($Memory_462071 (|domain#$Memory_462071| |T@[Int]Bool|) (|contents#$Memory_462071| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_490047 0)) ((($Memory_490047 (|domain#$Memory_490047| |T@[Int]Bool|) (|contents#$Memory_490047| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_489983 0)) ((($Memory_489983 (|domain#$Memory_489983| |T@[Int]Bool|) (|contents#$Memory_489983| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_489919 0)) ((($Memory_489919 (|domain#$Memory_489919| |T@[Int]Bool|) (|contents#$Memory_489919| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_490540 0)) ((($Memory_490540 (|domain#$Memory_490540| |T@[Int]Bool|) (|contents#$Memory_490540| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_490453 0)) ((($Memory_490453 (|domain#$Memory_490453| |T@[Int]Bool|) (|contents#$Memory_490453| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_490366 0)) ((($Memory_490366 (|domain#$Memory_490366| |T@[Int]Bool|) (|contents#$Memory_490366| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_574055 0)) ((($Memory_574055 (|domain#$Memory_574055| |T@[Int]Bool|) (|contents#$Memory_574055| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_495615 0)) ((($Memory_495615 (|domain#$Memory_495615| |T@[Int]Bool|) (|contents#$Memory_495615| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_532093 0)) ((($Memory_532093 (|domain#$Memory_532093| |T@[Int]Bool|) (|contents#$Memory_532093| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_496040 0)) ((($Memory_496040 (|domain#$Memory_496040| |T@[Int]Bool|) (|contents#$Memory_496040| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_466549 0)) ((($Memory_466549 (|domain#$Memory_466549| |T@[Int]Bool|) (|contents#$Memory_466549| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_495524 0)) ((($Memory_495524 (|domain#$Memory_495524| |T@[Int]Bool|) (|contents#$Memory_495524| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_532029 0)) ((($Memory_532029 (|domain#$Memory_532029| |T@[Int]Bool|) (|contents#$Memory_532029| |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_461253 0)) ((($Memory_461253 (|domain#$Memory_461253| |T@[Int]Bool|) (|contents#$Memory_461253| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_495941 0)) ((($Memory_495941 (|domain#$Memory_495941| |T@[Int]Bool|) (|contents#$Memory_495941| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_466489 0)) ((($Memory_466489 (|domain#$Memory_466489| |T@[Int]Bool|) (|contents#$Memory_466489| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_495433 0)) ((($Memory_495433 (|domain#$Memory_495433| |T@[Int]Bool|) (|contents#$Memory_495433| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_461492 0)) ((($Memory_461492 (|domain#$Memory_461492| |T@[Int]Bool|) (|contents#$Memory_461492| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_495842 0)) ((($Memory_495842 (|domain#$Memory_495842| |T@[Int]Bool|) (|contents#$Memory_495842| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_489351 0)) ((($Memory_489351 (|domain#$Memory_489351| |T@[Int]Bool|) (|contents#$Memory_489351| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_461337 0)) ((($Memory_461337 (|domain#$Memory_461337| |T@[Int]Bool|) (|contents#$Memory_461337| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_461098 0)) ((($Memory_461098 (|domain#$Memory_461098| |T@[Int]Bool|) (|contents#$Memory_461098| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_485252 0)) ((($Memory_485252 (|domain#$Memory_485252| |T@[Int]Bool|) (|contents#$Memory_485252| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_485165 0)) ((($Memory_485165 (|domain#$Memory_485165| |T@[Int]Bool|) (|contents#$Memory_485165| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_485078 0)) ((($Memory_485078 (|domain#$Memory_485078| |T@[Int]Bool|) (|contents#$Memory_485078| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_484991 0)) ((($Memory_484991 (|domain#$Memory_484991| |T@[Int]Bool|) (|contents#$Memory_484991| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_484904 0)) ((($Memory_484904 (|domain#$Memory_484904| |T@[Int]Bool|) (|contents#$Memory_484904| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_484817 0)) ((($Memory_484817 (|domain#$Memory_484817| |T@[Int]Bool|) (|contents#$Memory_484817| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_460943 0)) ((($Memory_460943 (|domain#$Memory_460943| |T@[Int]Bool|) (|contents#$Memory_460943| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_484015 0)) ((($Memory_484015 (|domain#$Memory_484015| |T@[Int]Bool|) (|contents#$Memory_484015| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_460784 0)) ((($Memory_460784 (|domain#$Memory_460784| |T@[Int]Bool|) (|contents#$Memory_460784| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_460378 0)) ((($Memory_460378 (|domain#$Memory_460378| |T@[Int]Bool|) (|contents#$Memory_460378| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_462297 0)) ((($Memory_462297 (|domain#$Memory_462297| |T@[Int]Bool|) (|contents#$Memory_462297| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_483882 0)) ((($Memory_483882 (|domain#$Memory_483882| |T@[Int]Bool|) (|contents#$Memory_483882| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_461673 0)) ((($Memory_461673 (|domain#$Memory_461673| |T@[Int]Bool|) (|contents#$Memory_461673| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_461014 0)) ((($Memory_461014 (|domain#$Memory_461014| |T@[Int]Bool|) (|contents#$Memory_461014| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_460691 0)) ((($Memory_460691 (|domain#$Memory_460691| |T@[Int]Bool|) (|contents#$Memory_460691| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_585814 0)) ((($Memory_585814 (|domain#$Memory_585814| |T@[Int]Bool|) (|contents#$Memory_585814| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_475401 0)) ((($Memory_475401 (|domain#$Memory_475401| |T@[Int]Bool|) (|contents#$Memory_475401| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_460870 0)) ((($Memory_460870 (|domain#$Memory_460870| |T@[Int]Bool|) (|contents#$Memory_460870| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_465642 0)) ((($Memory_465642 (|domain#$Memory_465642| |T@[Int]Bool|) (|contents#$Memory_465642| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_466037 0)) ((($Memory_466037 (|domain#$Memory_466037| |T@[Int]Bool|) (|contents#$Memory_466037| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_460504 0)) ((($Memory_460504 (|domain#$Memory_460504| |T@[Int]Bool|) (|contents#$Memory_460504| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_459802 0)) ((($Memory_459802 (|domain#$Memory_459802| |T@[Int]Bool|) (|contents#$Memory_459802| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_419582 0)) (((Multiset_419582 (|v#Multiset_419582| |T@[$EventRep]Int|) (|l#Multiset_419582| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_419582| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_419582|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_1054246 0)) ((($Mutation_1054246 (|l#$Mutation_1054246| T@$Location) (|p#$Mutation_1054246| (Seq Int)) (|v#$Mutation_1054246| T@$1_DiemAccount_DiemWriteSetManager) ) ) ))
(declare-datatypes ((T@$Mutation_863281 0)) ((($Mutation_863281 (|l#$Mutation_863281| T@$Location) (|p#$Mutation_863281| (Seq Int)) (|v#$Mutation_863281| T@$1_DiemAccount_AccountOperationsCapability) ) ) ))
(declare-datatypes ((T@$Mutation_859842 0)) ((($Mutation_859842 (|l#$Mutation_859842| T@$Location) (|p#$Mutation_859842| (Seq Int)) (|v#$Mutation_859842| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_856920 0)) ((($Mutation_856920 (|l#$Mutation_856920| T@$Location) (|p#$Mutation_856920| (Seq Int)) (|v#$Mutation_856920| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_664637 0)) ((($Mutation_664637 (|l#$Mutation_664637| T@$Location) (|p#$Mutation_664637| (Seq Int)) (|v#$Mutation_664637| |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_653870 0)) ((($Mutation_653870 (|l#$Mutation_653870| T@$Location) (|p#$Mutation_653870| (Seq Int)) (|v#$Mutation_653870| |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_643189 0)) ((($Mutation_643189 (|l#$Mutation_643189| T@$Location) (|p#$Mutation_643189| (Seq Int)) (|v#$Mutation_643189| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_643144 0)) ((($Mutation_643144 (|l#$Mutation_643144| T@$Location) (|p#$Mutation_643144| (Seq Int)) (|v#$Mutation_643144| |T@$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_566446 0)) ((($Mutation_566446 (|l#$Mutation_566446| T@$Location) (|p#$Mutation_566446| (Seq Int)) (|v#$Mutation_566446| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_566404 0)) ((($Mutation_566404 (|l#$Mutation_566404| T@$Location) (|p#$Mutation_566404| (Seq Int)) (|v#$Mutation_566404| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_562896 0)) ((($Mutation_562896 (|l#$Mutation_562896| T@$Location) (|p#$Mutation_562896| (Seq Int)) (|v#$Mutation_562896| T@$1_CRSN_CRSN) ) ) ))
(declare-datatypes ((T@$Mutation_558248 0)) ((($Mutation_558248 (|l#$Mutation_558248| T@$Location) (|p#$Mutation_558248| (Seq Int)) (|v#$Mutation_558248| T@$1_BitVector_BitVector) ) ) ))
(declare-datatypes ((T@$Mutation_546607 0)) ((($Mutation_546607 (|l#$Mutation_546607| T@$Location) (|p#$Mutation_546607| (Seq Int)) (|v#$Mutation_546607| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_539112 0)) ((($Mutation_539112 (|l#$Mutation_539112| T@$Location) (|p#$Mutation_539112| (Seq Int)) (|v#$Mutation_539112| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_535530 0)) ((($Mutation_535530 (|l#$Mutation_535530| T@$Location) (|p#$Mutation_535530| (Seq Int)) (|v#$Mutation_535530| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_535485 0)) ((($Mutation_535485 (|l#$Mutation_535485| T@$Location) (|p#$Mutation_535485| (Seq Int)) (|v#$Mutation_535485| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_534556 0)) ((($Mutation_534556 (|l#$Mutation_534556| T@$Location) (|p#$Mutation_534556| (Seq Int)) (|v#$Mutation_534556| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_534511 0)) ((($Mutation_534511 (|l#$Mutation_534511| T@$Location) (|p#$Mutation_534511| (Seq Int)) (|v#$Mutation_534511| |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_533636 0)) ((($Mutation_533636 (|l#$Mutation_533636| T@$Location) (|p#$Mutation_533636| (Seq Int)) (|v#$Mutation_533636| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_533591 0)) ((($Mutation_533591 (|l#$Mutation_533591| T@$Location) (|p#$Mutation_533591| (Seq Int)) (|v#$Mutation_533591| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_529987 0)) ((($Mutation_529987 (|l#$Mutation_529987| T@$Location) (|p#$Mutation_529987| (Seq Int)) (|v#$Mutation_529987| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_519512 0)) ((($Mutation_519512 (|l#$Mutation_519512| T@$Location) (|p#$Mutation_519512| (Seq Int)) (|v#$Mutation_519512| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_519451 0)) ((($Mutation_519451 (|l#$Mutation_519451| T@$Location) (|p#$Mutation_519451| (Seq Int)) (|v#$Mutation_519451| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_502351 0)) ((($Mutation_502351 (|l#$Mutation_502351| T@$Location) (|p#$Mutation_502351| (Seq Int)) (|v#$Mutation_502351| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_500621 0)) ((($Mutation_500621 (|l#$Mutation_500621| T@$Location) (|p#$Mutation_500621| (Seq Int)) (|v#$Mutation_500621| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_498891 0)) ((($Mutation_498891 (|l#$Mutation_498891| T@$Location) (|p#$Mutation_498891| (Seq Int)) (|v#$Mutation_498891| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_487962 0)) ((($Mutation_487962 (|l#$Mutation_487962| T@$Location) (|p#$Mutation_487962| (Seq Int)) (|v#$Mutation_487962| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_478024 0)) ((($Mutation_478024 (|l#$Mutation_478024| T@$Location) (|p#$Mutation_478024| (Seq Int)) (|v#$Mutation_478024| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_474564 0)) ((($Mutation_474564 (|l#$Mutation_474564| T@$Location) (|p#$Mutation_474564| (Seq Int)) (|v#$Mutation_474564| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_474524 0)) ((($Mutation_474524 (|l#$Mutation_474524| T@$Location) (|p#$Mutation_474524| (Seq Int)) (|v#$Mutation_474524| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_460321 0)) ((($Mutation_460321 (|l#$Mutation_460321| T@$Location) (|p#$Mutation_460321| (Seq Int)) (|v#$Mutation_460321| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_453628 0)) ((($Mutation_453628 (|l#$Mutation_453628| T@$Location) (|p#$Mutation_453628| (Seq Int)) (|v#$Mutation_453628| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17831 0)) ((($Mutation_17831 (|l#$Mutation_17831| T@$Location) (|p#$Mutation_17831| (Seq Int)) (|v#$Mutation_17831| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16758 0)) ((($Mutation_16758 (|l#$Mutation_16758| T@$Location) (|p#$Mutation_16758| (Seq Int)) (|v#$Mutation_16758| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_447470 0)) ((($Mutation_447470 (|l#$Mutation_447470| T@$Location) (|p#$Mutation_447470| (Seq Int)) (|v#$Mutation_447470| (Seq Bool)) ) ) ))
(declare-datatypes ((T@$Mutation_446180 0)) ((($Mutation_446180 (|l#$Mutation_446180| T@$Location) (|p#$Mutation_446180| (Seq Int)) (|v#$Mutation_446180| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_445434 0)) ((($Mutation_445434 (|l#$Mutation_445434| T@$Location) (|p#$Mutation_445434| (Seq Int)) (|v#$Mutation_445434| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_444030 0)) ((($Mutation_444030 (|l#$Mutation_444030| T@$Location) (|p#$Mutation_444030| (Seq Int)) (|v#$Mutation_444030| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_443284 0)) ((($Mutation_443284 (|l#$Mutation_443284| T@$Location) (|p#$Mutation_443284| (Seq Int)) (|v#$Mutation_443284| (Seq T@$1_XUS_XUS)) ) ) ))
(declare-datatypes ((T@$Mutation_441880 0)) ((($Mutation_441880 (|l#$Mutation_441880| T@$Location) (|p#$Mutation_441880| (Seq Int)) (|v#$Mutation_441880| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_441134 0)) ((($Mutation_441134 (|l#$Mutation_441134| T@$Location) (|p#$Mutation_441134| (Seq Int)) (|v#$Mutation_441134| (Seq T@$1_XDX_XDX)) ) ) ))
(declare-datatypes ((T@$Mutation_439730 0)) ((($Mutation_439730 (|l#$Mutation_439730| T@$Location) (|p#$Mutation_439730| (Seq Int)) (|v#$Mutation_439730| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_438984 0)) ((($Mutation_438984 (|l#$Mutation_438984| T@$Location) (|p#$Mutation_438984| (Seq Int)) (|v#$Mutation_438984| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_437580 0)) ((($Mutation_437580 (|l#$Mutation_437580| T@$Location) (|p#$Mutation_437580| (Seq Int)) (|v#$Mutation_437580| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_436834 0)) ((($Mutation_436834 (|l#$Mutation_436834| T@$Location) (|p#$Mutation_436834| (Seq Int)) (|v#$Mutation_436834| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_435430 0)) ((($Mutation_435430 (|l#$Mutation_435430| T@$Location) (|p#$Mutation_435430| (Seq Int)) (|v#$Mutation_435430| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_434684 0)) ((($Mutation_434684 (|l#$Mutation_434684| T@$Location) (|p#$Mutation_434684| (Seq Int)) (|v#$Mutation_434684| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_433280 0)) ((($Mutation_433280 (|l#$Mutation_433280| T@$Location) (|p#$Mutation_433280| (Seq Int)) (|v#$Mutation_433280| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_432534 0)) ((($Mutation_432534 (|l#$Mutation_432534| T@$Location) (|p#$Mutation_432534| (Seq Int)) (|v#$Mutation_432534| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_431130 0)) ((($Mutation_431130 (|l#$Mutation_431130| T@$Location) (|p#$Mutation_431130| (Seq Int)) (|v#$Mutation_431130| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_430384 0)) ((($Mutation_430384 (|l#$Mutation_430384| T@$Location) (|p#$Mutation_430384| (Seq Int)) (|v#$Mutation_430384| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_428980 0)) ((($Mutation_428980 (|l#$Mutation_428980| T@$Location) (|p#$Mutation_428980| (Seq Int)) (|v#$Mutation_428980| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_428234 0)) ((($Mutation_428234 (|l#$Mutation_428234| T@$Location) (|p#$Mutation_428234| (Seq Int)) (|v#$Mutation_428234| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_426830 0)) ((($Mutation_426830 (|l#$Mutation_426830| T@$Location) (|p#$Mutation_426830| (Seq Int)) (|v#$Mutation_426830| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_426084 0)) ((($Mutation_426084 (|l#$Mutation_426084| T@$Location) (|p#$Mutation_426084| (Seq Int)) (|v#$Mutation_426084| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_424680 0)) ((($Mutation_424680 (|l#$Mutation_424680| T@$Location) (|p#$Mutation_424680| (Seq Int)) (|v#$Mutation_424680| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_423934 0)) ((($Mutation_423934 (|l#$Mutation_423934| T@$Location) (|p#$Mutation_423934| (Seq Int)) (|v#$Mutation_423934| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_422492 0)) ((($Mutation_422492 (|l#$Mutation_422492| T@$Location) (|p#$Mutation_422492| (Seq Int)) (|v#$Mutation_422492| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_421746 0)) ((($Mutation_421746 (|l#$Mutation_421746| T@$Location) (|p#$Mutation_421746| (Seq Int)) (|v#$Mutation_421746| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'bool''| ((Seq Bool)) Bool)
(declare-fun |$IndexOfVec'bool'| ((Seq Bool) Bool) Int)
(declare-fun |$IsValid'vec'address''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'address'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_419582_| (|T@[$1_Event_EventHandle]Multiset_419582| T@$1_Event_EventHandle) T@Multiset_419582)
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
(declare-fun |$IsValid'$1_XDX_Reserve'| (T@$1_XDX_Reserve) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainEvent'| (T@$1_VASPDomain_VASPDomainEvent) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomainManager'| (T@$1_VASPDomain_VASPDomainManager) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomains'| (T@$1_VASPDomain_VASPDomains) Bool)
(declare-fun |$IsValid'$1_VASP_ChildVASP'| (T@$1_VASP_ChildVASP) Bool)
(declare-fun |$IsValid'$1_VASP_ParentVASP'| (T@$1_VASP_ParentVASP) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| (|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| (|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_TransactionFee_TransactionFee'#0''| (|T@$1_TransactionFee_TransactionFee'#0'|) Bool)
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int (Seq Int) Int) (Seq Int))
(declare-fun |$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| (T@$1_DualAttestation_BaseUrlRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| (T@$1_DualAttestation_ComplianceKeyRotationEvent) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Credential'| (T@$1_DualAttestation_Credential) Bool)
(declare-fun |$IsValid'$1_DualAttestation_Limit'| (T@$1_DualAttestation_Limit) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| (T@$1_DiemTransactionPublishingOption_HaltAllTransactions) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_Dealer'| (T@$1_DesignatedDealer_Dealer) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| (T@$1_DesignatedDealer_ReceivedMintEvent) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| (|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| (|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'#0''| (|T@$1_DesignatedDealer_TierInfo'#0'|) Bool)
(declare-fun |$IsValid'$1_ChainId_ChainId'| (T@$1_ChainId_ChainId) Bool)
(declare-fun |$IsValid'$1_BitVector_BitVector'| (T@$1_BitVector_BitVector) Bool)
(declare-fun |$IsValid'$1_CRSN_CRSN'| (T@$1_CRSN_CRSN) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeAccountEvent'| (T@$1_AccountFreezing_FreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeEventsHolder'| (T@$1_AccountFreezing_FreezeEventsHolder) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| (T@$1_AccountFreezing_UnfreezeAccountEvent) Bool)
(declare-fun $1_DiemAccount_spec_abstract_create_authentication_key ((Seq Int)) (Seq Int))
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
(declare-fun ReverseVec_17684 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_383559 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_382180 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_382377 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_382574 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_384150 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_383165 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_382968 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_382771 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_383362 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_16611 ((Seq Bool)) (Seq Bool))
(declare-fun ReverseVec_381983 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun ReverseVec_383756 ((Seq T@$1_XDX_XDX)) (Seq T@$1_XDX_XDX))
(declare-fun ReverseVec_383953 ((Seq T@$1_XUS_XUS)) (Seq T@$1_XUS_XUS))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_419582| |T@[$1_Event_EventHandle]Multiset_419582|) |T@[$1_Event_EventHandle]Multiset_419582|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemAccountbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemAccountbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemAccountbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemAccountbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemAccountbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemAccountbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemAccountbpl.595:13|
 :skolemid |15|
))))
 :qid |DiemAccountbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemAccountbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemAccountbpl.608:17|
 :skolemid |18|
)))))
 :qid |DiemAccountbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemAccountbpl.775:13|
 :skolemid |20|
))))
 :qid |DiemAccountbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemAccountbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemAccountbpl.788:17|
 :skolemid |23|
)))))
 :qid |DiemAccountbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemAccountbpl.955:13|
 :skolemid |25|
))))
 :qid |DiemAccountbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemAccountbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemAccountbpl.968:17|
 :skolemid |28|
)))))
 :qid |DiemAccountbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemAccountbpl.1135:13|
 :skolemid |30|
))))
 :qid |DiemAccountbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemAccountbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemAccountbpl.1148:17|
 :skolemid |33|
)))))
 :qid |DiemAccountbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |DiemAccountbpl.1315:13|
 :skolemid |35|
))))
 :qid |DiemAccountbpl.1313:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemAccountbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemAccountbpl.1328:17|
 :skolemid |38|
)))))
 :qid |DiemAccountbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |DiemAccountbpl.1495:13|
 :skolemid |40|
))))
 :qid |DiemAccountbpl.1493:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemAccountbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemAccountbpl.1508:17|
 :skolemid |43|
)))))
 :qid |DiemAccountbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |DiemAccountbpl.1675:13|
 :skolemid |45|
))))
 :qid |DiemAccountbpl.1673:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemAccountbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemAccountbpl.1688:17|
 :skolemid |48|
)))))
 :qid |DiemAccountbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |DiemAccountbpl.1855:13|
 :skolemid |50|
))))
 :qid |DiemAccountbpl.1853:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemAccountbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemAccountbpl.1868:17|
 :skolemid |53|
)))))
 :qid |DiemAccountbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |DiemAccountbpl.2035:13|
 :skolemid |55|
))))
 :qid |DiemAccountbpl.2033:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemAccountbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemAccountbpl.2048:17|
 :skolemid |58|
)))))
 :qid |DiemAccountbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq T@$1_XDX_XDX)) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'$1_XDX_XDX'| (seq.nth v@@22 i@@27)))
 :qid |DiemAccountbpl.2215:13|
 :skolemid |60|
))))
 :qid |DiemAccountbpl.2213:36|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_XDX_XDX)) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@28 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemAccountbpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemAccountbpl.2228:17|
 :skolemid |63|
)))))
 :qid |DiemAccountbpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq T@$1_XUS_XUS)) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'$1_XUS_XUS'| (seq.nth v@@24 i@@30)))
 :qid |DiemAccountbpl.2395:13|
 :skolemid |65|
))))
 :qid |DiemAccountbpl.2393:36|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_XUS_XUS)) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@31 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DiemAccountbpl.2400:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DiemAccountbpl.2408:17|
 :skolemid |68|
)))))
 :qid |DiemAccountbpl.2404:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'vec'u8''| (seq.nth v@@26 i@@33)))
 :qid |DiemAccountbpl.2575:13|
 :skolemid |70|
))))
 :qid |DiemAccountbpl.2573:33|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 (Seq (Seq Int))) (e@@10 (Seq Int)) ) (! (let ((i@@34 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |DiemAccountbpl.2580:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |DiemAccountbpl.2588:17|
 :skolemid |73|
)))))
 :qid |DiemAccountbpl.2584:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v@@28 (Seq Bool)) ) (! (= (|$IsValid'vec'bool''| v@@28)  (and (|$IsValid'u64'| (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len v@@28))) true)
 :qid |DiemAccountbpl.2755:13|
 :skolemid |75|
))))
 :qid |DiemAccountbpl.2753:30|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'bool''| v@@28))
)))
(assert (forall ((v@@29 (Seq Bool)) (e@@11 Bool) ) (! (let ((i@@37 (|$IndexOfVec'bool'| v@@29 e@@11)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len v@@29)))) (= (seq.nth v@@29 i@@38) e@@11))
 :qid |DiemAccountbpl.2760:13|
 :skolemid |77|
))) (= i@@37 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len v@@29)))) (= (seq.nth v@@29 i@@37) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@37)) (not (= (seq.nth v@@29 j@@11) e@@11)))
 :qid |DiemAccountbpl.2768:17|
 :skolemid |78|
)))))
 :qid |DiemAccountbpl.2764:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'bool'| v@@29 e@@11))
)))
(assert (forall ((v@@30 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@30)  (and (|$IsValid'u64'| (seq.len v@@30)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len v@@30))) (|$IsValid'address'| (seq.nth v@@30 i@@39)))
 :qid |DiemAccountbpl.2935:13|
 :skolemid |80|
))))
 :qid |DiemAccountbpl.2933:33|
 :skolemid |81|
 :pattern ( (|$IsValid'vec'address''| v@@30))
)))
(assert (forall ((v@@31 (Seq Int)) (e@@12 Int) ) (! (let ((i@@40 (|$IndexOfVec'address'| v@@31 e@@12)))
(ite  (not (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len v@@31)))) (= (seq.nth v@@31 i@@41) e@@12))
 :qid |DiemAccountbpl.2940:13|
 :skolemid |82|
))) (= i@@40 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len v@@31)))) (= (seq.nth v@@31 i@@40) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@40)) (not (= (seq.nth v@@31 j@@12) e@@12)))
 :qid |DiemAccountbpl.2948:17|
 :skolemid |83|
)))))
 :qid |DiemAccountbpl.2944:15|
 :skolemid |84|
 :pattern ( (|$IndexOfVec'address'| v@@31 e@@12))
)))
(assert (forall ((v@@32 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@32)  (and (|$IsValid'u64'| (seq.len v@@32)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len v@@32))) (|$IsValid'u64'| (seq.nth v@@32 i@@42)))
 :qid |DiemAccountbpl.3115:13|
 :skolemid |85|
))))
 :qid |DiemAccountbpl.3113:29|
 :skolemid |86|
 :pattern ( (|$IsValid'vec'u64''| v@@32))
)))
(assert (forall ((v@@33 (Seq Int)) (e@@13 Int) ) (! (let ((i@@43 (|$IndexOfVec'u64'| v@@33 e@@13)))
(ite  (not (exists ((i@@44 Int) ) (!  (and (and (|$IsValid'u64'| i@@44) (and (>= i@@44 0) (< i@@44 (seq.len v@@33)))) (= (seq.nth v@@33 i@@44) e@@13))
 :qid |DiemAccountbpl.3120:13|
 :skolemid |87|
))) (= i@@43 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@43) (and (>= i@@43 0) (< i@@43 (seq.len v@@33)))) (= (seq.nth v@@33 i@@43) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@13) (>= j@@13 0)) (< j@@13 i@@43)) (not (= (seq.nth v@@33 j@@13) e@@13)))
 :qid |DiemAccountbpl.3128:17|
 :skolemid |88|
)))))
 :qid |DiemAccountbpl.3124:15|
 :skolemid |89|
 :pattern ( (|$IndexOfVec'u64'| v@@33 e@@13))
)))
(assert (forall ((v@@34 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@34)  (and (|$IsValid'u64'| (seq.len v@@34)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len v@@34))) (|$IsValid'u8'| (seq.nth v@@34 i@@45)))
 :qid |DiemAccountbpl.3295:13|
 :skolemid |90|
))))
 :qid |DiemAccountbpl.3293:28|
 :skolemid |91|
 :pattern ( (|$IsValid'vec'u8''| v@@34))
)))
(assert (forall ((v@@35 (Seq Int)) (e@@14 Int) ) (! (let ((i@@46 (|$IndexOfVec'u8'| v@@35 e@@14)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (and (>= i@@47 0) (< i@@47 (seq.len v@@35)))) (= (seq.nth v@@35 i@@47) e@@14))
 :qid |DiemAccountbpl.3300:13|
 :skolemid |92|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (and (>= i@@46 0) (< i@@46 (seq.len v@@35)))) (= (seq.nth v@@35 i@@46) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@14) (>= j@@14 0)) (< j@@14 i@@46)) (not (= (seq.nth v@@35 j@@14) e@@14)))
 :qid |DiemAccountbpl.3308:17|
 :skolemid |93|
)))))
 :qid |DiemAccountbpl.3304:15|
 :skolemid |94|
 :pattern ( (|$IndexOfVec'u8'| v@@35 e@@14))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemAccountbpl.3481:15|
 :skolemid |95|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemAccountbpl.3497:15|
 :skolemid |96|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemAccountbpl.3568:15|
 :skolemid |97|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemAccountbpl.3571:15|
 :skolemid |98|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 Int) (v2@@1 Int) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1)))
 :qid |DiemAccountbpl.3598:15|
 :skolemid |99|
 :pattern ( (|$1_BCS_serialize'address'| v1@@1) (|$1_BCS_serialize'address'| v2@@1))
)))
(assert (forall ((v@@36 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@36)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |DiemAccountbpl.3603:15|
 :skolemid |100|
 :pattern ( (|$1_BCS_serialize'address'| v@@36))
)))
(assert (forall ((v@@37 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@37)))
(= (seq.len r@@1) $serialized_address_len))
 :qid |DiemAccountbpl.3617:15|
 :skolemid |101|
 :pattern ( (|$1_BCS_serialize'address'| v@@37))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_419582_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_419582| stream) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_419582| stream) v@@38) 0)
 :qid |DiemAccountbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemAccountbpl.3664:13|
 :skolemid |102|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemAccountbpl.3705:80|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@2)))
 :qid |DiemAccountbpl.3711:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemAccountbpl.3761:82|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@3 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@3 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@3)))
 :qid |DiemAccountbpl.3767:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@3) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@3))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemAccountbpl.3817:80|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@4 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@4 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@4)))
 :qid |DiemAccountbpl.3823:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@4))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemAccountbpl.3873:79|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_AdminTransactionEvent) (v2@@5 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5)))
 :qid |DiemAccountbpl.3879:15|
 :skolemid |111|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@5))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemAccountbpl.3929:76|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_CreateAccountEvent) (v2@@6 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6)))
 :qid |DiemAccountbpl.3935:15|
 :skolemid |113|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@6))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemAccountbpl.3985:78|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@7 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7)))
 :qid |DiemAccountbpl.3991:15|
 :skolemid |115|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemAccountbpl.4041:74|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@8 T@$1_DiemAccount_SentPaymentEvent) (v2@@8 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8)))
 :qid |DiemAccountbpl.4047:15|
 :skolemid |117|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@8) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@8))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemAccountbpl.4097:69|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@9 T@$1_DiemBlock_NewBlockEvent) (v2@@9 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@9) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@9)))
 :qid |DiemAccountbpl.4103:15|
 :skolemid |119|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@9) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@9))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemAccountbpl.4153:70|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@10 T@$1_DiemConfig_NewEpochEvent) (v2@@10 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@10)))
 :qid |DiemAccountbpl.4159:15|
 :skolemid |121|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@10))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemAccountbpl.4209:60|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |DiemAccountbpl.4215:15|
 :skolemid |123|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemAccountbpl.4265:66|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |DiemAccountbpl.4271:15|
 :skolemid |125|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemAccountbpl.4321:60|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |DiemAccountbpl.4327:15|
 :skolemid |127|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemAccountbpl.4377:63|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |DiemAccountbpl.4383:15|
 :skolemid |129|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemAccountbpl.4433:79|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |DiemAccountbpl.4439:15|
 :skolemid |131|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemAccountbpl.4489:82|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |DiemAccountbpl.4495:15|
 :skolemid |133|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemAccountbpl.4545:88|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |DiemAccountbpl.4551:15|
 :skolemid |135|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemAccountbpl.4601:72|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@18 T@$1_VASPDomain_VASPDomainEvent) (v2@@18 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@18) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@18)))
 :qid |DiemAccountbpl.4607:15|
 :skolemid |137|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@18) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@18))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemAccountbpl.4691:61|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemAccountbpl.5541:36|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemAccountbpl.7577:71|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemAccountbpl.7992:46|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemAccountbpl.8005:64|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemAccountbpl.8018:75|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemAccountbpl.8031:72|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemAccountbpl.8070:55|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemAccountbpl.8092:46|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemAccountbpl.9835:49|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemAccountbpl.9940:71|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemAccountbpl.9954:91|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemAccountbpl.9968:113|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |DiemAccountbpl.9982:89|
 :skolemid |280|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemAccountbpl.9996:75|
 :skolemid |281|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemAccountbpl.10010:73|
 :skolemid |282|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DiemAccountbpl.10030:48|
 :skolemid |283|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DiemAccountbpl.10046:57|
 :skolemid |284|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DiemAccountbpl.10060:83|
 :skolemid |285|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DiemAccountbpl.10074:103|
 :skolemid |286|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DiemAccountbpl.10088:125|
 :skolemid |287|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |DiemAccountbpl.10102:101|
 :skolemid |288|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |DiemAccountbpl.10116:87|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |DiemAccountbpl.10130:85|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |DiemAccountbpl.10144:48|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |DiemAccountbpl.10165:45|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |DiemAccountbpl.10179:51|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |DiemAccountbpl.10202:48|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |DiemAccountbpl.10499:49|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |DiemAccountbpl.10512:65|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |DiemAccountbpl.11144:45|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |DiemAccountbpl.11157:45|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |DiemAccountbpl.11170:37|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |DiemAccountbpl.11183:55|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |DiemAccountbpl.11197:55|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |DiemAccountbpl.11211:47|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |DiemAccountbpl.11231:38|
 :skolemid |303|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |DiemAccountbpl.11252:44|
 :skolemid |304|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |DiemAccountbpl.11303:53|
 :skolemid |305|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |DiemAccountbpl.11365:53|
 :skolemid |306|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |DiemAccountbpl.11427:45|
 :skolemid |307|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |DiemAccountbpl.11453:55|
 :skolemid |308|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |DiemAccountbpl.11467:55|
 :skolemid |309|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |DiemAccountbpl.11481:47|
 :skolemid |310|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |DiemAccountbpl.11498:38|
 :skolemid |311|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |DiemAccountbpl.11512:48|
 :skolemid |312|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |DiemAccountbpl.11526:48|
 :skolemid |313|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |DiemAccountbpl.11540:40|
 :skolemid |314|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |DiemAccountbpl.11560:41|
 :skolemid |315|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@48)))
 :qid |DiemAccountbpl.11575:53|
 :skolemid |316|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@49)))
 :qid |DiemAccountbpl.11589:53|
 :skolemid |317|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@50)))
 :qid |DiemAccountbpl.11603:45|
 :skolemid |318|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51))))
 :qid |DiemAccountbpl.11620:60|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52))))
 :qid |DiemAccountbpl.11637:60|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@53))))
 :qid |DiemAccountbpl.11654:52|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53))
)))
(assert (forall ((s@@54 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54))))
 :qid |DiemAccountbpl.11671:57|
 :skolemid |322|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55) true)
 :qid |DiemAccountbpl.16643:68|
 :skolemid |329|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))))
 :qid |DiemAccountbpl.16665:66|
 :skolemid |330|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))))
 :qid |DiemAccountbpl.16691:66|
 :skolemid |331|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@58))))
 :qid |DiemAccountbpl.16717:58|
 :skolemid |332|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |DiemAccountbpl.16746:56|
 :skolemid |333|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |DiemAccountbpl.16776:56|
 :skolemid |334|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@61))))
 :qid |DiemAccountbpl.16806:48|
 :skolemid |335|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |DiemAccountbpl.17272:31|
 :skolemid |336|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |DiemAccountbpl.17602:31|
 :skolemid |337|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |DiemAccountbpl.17621:35|
 :skolemid |338|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |DiemAccountbpl.18035:45|
 :skolemid |339|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |DiemAccountbpl.18054:50|
 :skolemid |340|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |DiemAccountbpl.18069:52|
 :skolemid |341|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |DiemAccountbpl.18083:46|
 :skolemid |342|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |DiemAccountbpl.19916:38|
 :skolemid |427|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |DiemAccountbpl.19930:39|
 :skolemid |428|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |DiemAccountbpl.20723:65|
 :skolemid |429|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@72)  (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@72)) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@72))))
 :qid |DiemAccountbpl.20741:65|
 :skolemid |430|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@72))
)))
(assert (forall ((s@@73 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@73)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@73)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@73))))
 :qid |DiemAccountbpl.20759:57|
 :skolemid |431|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@73))
)))
(assert (forall ((payer Int) (metadata (Seq Int)) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |DiemAccountbpl.21846:15|
 :skolemid |432|
)))
(assert (forall ((s@@74 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@74)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@74)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@74))))
 :qid |DiemAccountbpl.21874:60|
 :skolemid |433|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@75)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@75)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@75))))
 :qid |DiemAccountbpl.21891:66|
 :skolemid |434|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@76)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@76)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@76))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@76))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@76))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@76))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@76))))
 :qid |DiemAccountbpl.21920:50|
 :skolemid |435|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@77) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@77)))
 :qid |DiemAccountbpl.21939:45|
 :skolemid |436|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@78)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@78)) true))
 :qid |DiemAccountbpl.23472:87|
 :skolemid |455|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemTransactionPublishingOption_HaltAllTransactions) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@79) true)
 :qid |DiemAccountbpl.23486:75|
 :skolemid |456|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@80) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@80)))
 :qid |DiemAccountbpl.24133:47|
 :skolemid |457|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@81)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@81))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@81))))
 :qid |DiemAccountbpl.24153:58|
 :skolemid |458|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@82)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@82)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@82))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@82))))
 :qid |DiemAccountbpl.24174:61|
 :skolemid |459|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@83)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@83)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@83))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@83))))
 :qid |DiemAccountbpl.24196:61|
 :skolemid |460|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@84)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@84)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@84))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@84))))
 :qid |DiemAccountbpl.24218:53|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@84))
)))
(assert (forall ((s@@85 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@85) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@85)))
 :qid |DiemAccountbpl.26318:39|
 :skolemid |567|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@85))
)))
(assert (forall ((s@@86 T@$1_BitVector_BitVector) ) (! (= (|$IsValid'$1_BitVector_BitVector'| s@@86)  (and (|$IsValid'u64'| (|$length#$1_BitVector_BitVector| s@@86)) (|$IsValid'vec'bool''| (|$bit_field#$1_BitVector_BitVector| s@@86))))
 :qid |DiemAccountbpl.26426:43|
 :skolemid |568|
 :pattern ( (|$IsValid'$1_BitVector_BitVector'| s@@86))
)))
(assert (forall ((s@@87 T@$1_CRSN_CRSN) ) (! (= (|$IsValid'$1_CRSN_CRSN'| s@@87)  (and (and (|$IsValid'u64'| (|$min_nonce#$1_CRSN_CRSN| s@@87)) (|$IsValid'u64'| (|$size#$1_CRSN_CRSN| s@@87))) (|$IsValid'$1_BitVector_BitVector'| (|$slots#$1_CRSN_CRSN| s@@87))))
 :qid |DiemAccountbpl.28059:33|
 :skolemid |569|
 :pattern ( (|$IsValid'$1_CRSN_CRSN'| s@@87))
)))
(assert (forall ((s@@88 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@88)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@88)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@88))))
 :qid |DiemAccountbpl.29127:58|
 :skolemid |570|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@89)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@89)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@89))))
 :qid |DiemAccountbpl.29144:58|
 :skolemid |571|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@89))
)))
(assert (forall ((s@@90 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@90) true)
 :qid |DiemAccountbpl.29159:51|
 :skolemid |572|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@90))
)))
(assert (forall ((s@@91 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@91)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@91)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@91))))
 :qid |DiemAccountbpl.29176:60|
 :skolemid |573|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@91))
)))
(assert (forall ((auth_key_prefix (Seq Int)) ) (! (let (($$res@@0 ($1_DiemAccount_spec_abstract_create_authentication_key auth_key_prefix)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |DiemAccountbpl.30928:15|
 :skolemid |646|
)))
(assert (forall ((s@@92 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@92)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@92)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@92))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@92))))
 :qid |DiemAccountbpl.31008:47|
 :skolemid |647|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@93)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@93)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@93))))
 :qid |DiemAccountbpl.31030:63|
 :skolemid |648|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@94) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@94)))
 :qid |DiemAccountbpl.31045:57|
 :skolemid |649|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@94))
)))
(assert (forall ((s@@95 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@95) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@95)))
 :qid |DiemAccountbpl.31058:55|
 :skolemid |650|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@95))
)))
(assert (forall ((s@@96 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@96) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@96)))
 :qid |DiemAccountbpl.31072:55|
 :skolemid |651|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@96))
)))
(assert (forall ((s@@97 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@97) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@97)))
 :qid |DiemAccountbpl.31086:47|
 :skolemid |652|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@98)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@98)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@98))))
 :qid |DiemAccountbpl.31103:54|
 :skolemid |653|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@99) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@99)))
 :qid |DiemAccountbpl.31117:55|
 :skolemid |654|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@100) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@100)))
 :qid |DiemAccountbpl.31131:57|
 :skolemid |655|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@101)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@101)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@101))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@101))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@101))))
 :qid |DiemAccountbpl.31153:56|
 :skolemid |656|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@102)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@102)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@102))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@102))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@102))))
 :qid |DiemAccountbpl.31178:52|
 :skolemid |657|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@102))
)))
(assert (forall ((s@@103 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@103) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@103)))
 :qid |DiemAccountbpl.31194:54|
 :skolemid |658|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@103))
)))
(assert (forall ((s@@104 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@104) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@104)))
 :qid |DiemAccountbpl.104280:55|
 :skolemid |3657|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@104))
)))
(assert (forall ((s@@105 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@105)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@105)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@105))))
 :qid |DiemAccountbpl.105412:47|
 :skolemid |3814|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@105))
)))
(assert (forall ((s@@106 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@106)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@106)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@106))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@106))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@106))))
 :qid |DiemAccountbpl.105436:47|
 :skolemid |3815|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@106))
)))
(assert (forall ((s@@107 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@107) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@107)))
 :qid |DiemAccountbpl.105668:63|
 :skolemid |3816|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@107))
)))
(assert (forall ((s@@108 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@108) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@108)))
 :qid |DiemAccountbpl.106004:49|
 :skolemid |3817|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@108))
)))
(assert (forall ((s@@109 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@109)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@109)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@109))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@109))))
 :qid |DiemAccountbpl.106047:49|
 :skolemid |3818|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@109))
)))
(assert (forall ((s@@110 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@110)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@110)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@110))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@110))))
 :qid |DiemAccountbpl.106076:48|
 :skolemid |3819|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@110))
)))
(assert (forall ((s@@111 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@111) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@111)))
 :qid |DiemAccountbpl.106360:47|
 :skolemid |3820|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@111))
)))
(assert (forall ((v@@39 (Seq Int)) ) (! (let ((r@@2 (ReverseVec_17684 v@@39)))
 (and (= (seq.len r@@2) (seq.len v@@39)) (forall ((i@@48 Int) ) (!  (=> (and (>= i@@48 0) (< i@@48 (seq.len r@@2))) (= (seq.nth r@@2 i@@48) (seq.nth v@@39 (- (- (seq.len v@@39) i@@48) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@48))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_17684 v@@39))
)))
(assert (forall ((v@@40 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@3 (ReverseVec_383559 v@@40)))
 (and (= (seq.len r@@3) (seq.len v@@40)) (forall ((i@@49 Int) ) (!  (=> (and (>= i@@49 0) (< i@@49 (seq.len r@@3))) (= (seq.nth r@@3 i@@49) (seq.nth v@@40 (- (- (seq.len v@@40) i@@49) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@49))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_383559 v@@40))
)))
(assert (forall ((v@@41 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@4 (ReverseVec_382180 v@@41)))
 (and (= (seq.len r@@4) (seq.len v@@41)) (forall ((i@@50 Int) ) (!  (=> (and (>= i@@50 0) (< i@@50 (seq.len r@@4))) (= (seq.nth r@@4 i@@50) (seq.nth v@@41 (- (- (seq.len v@@41) i@@50) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@50))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_382180 v@@41))
)))
(assert (forall ((v@@42 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@5 (ReverseVec_382377 v@@42)))
 (and (= (seq.len r@@5) (seq.len v@@42)) (forall ((i@@51 Int) ) (!  (=> (and (>= i@@51 0) (< i@@51 (seq.len r@@5))) (= (seq.nth r@@5 i@@51) (seq.nth v@@42 (- (- (seq.len v@@42) i@@51) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@51))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_382377 v@@42))
)))
(assert (forall ((v@@43 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@6 (ReverseVec_382574 v@@43)))
 (and (= (seq.len r@@6) (seq.len v@@43)) (forall ((i@@52 Int) ) (!  (=> (and (>= i@@52 0) (< i@@52 (seq.len r@@6))) (= (seq.nth r@@6 i@@52) (seq.nth v@@43 (- (- (seq.len v@@43) i@@52) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@52))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_382574 v@@43))
)))
(assert (forall ((v@@44 (Seq (Seq Int))) ) (! (let ((r@@7 (ReverseVec_384150 v@@44)))
 (and (= (seq.len r@@7) (seq.len v@@44)) (forall ((i@@53 Int) ) (!  (=> (and (>= i@@53 0) (< i@@53 (seq.len r@@7))) (= (seq.nth r@@7 i@@53) (seq.nth v@@44 (- (- (seq.len v@@44) i@@53) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@53))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_384150 v@@44))
)))
(assert (forall ((v@@45 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@8 (ReverseVec_383165 v@@45)))
 (and (= (seq.len r@@8) (seq.len v@@45)) (forall ((i@@54 Int) ) (!  (=> (and (>= i@@54 0) (< i@@54 (seq.len r@@8))) (= (seq.nth r@@8 i@@54) (seq.nth v@@45 (- (- (seq.len v@@45) i@@54) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@54))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_383165 v@@45))
)))
(assert (forall ((v@@46 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@9 (ReverseVec_382968 v@@46)))
 (and (= (seq.len r@@9) (seq.len v@@46)) (forall ((i@@55 Int) ) (!  (=> (and (>= i@@55 0) (< i@@55 (seq.len r@@9))) (= (seq.nth r@@9 i@@55) (seq.nth v@@46 (- (- (seq.len v@@46) i@@55) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@55))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_382968 v@@46))
)))
(assert (forall ((v@@47 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@10 (ReverseVec_382771 v@@47)))
 (and (= (seq.len r@@10) (seq.len v@@47)) (forall ((i@@56 Int) ) (!  (=> (and (>= i@@56 0) (< i@@56 (seq.len r@@10))) (= (seq.nth r@@10 i@@56) (seq.nth v@@47 (- (- (seq.len v@@47) i@@56) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@56))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_382771 v@@47))
)))
(assert (forall ((v@@48 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@11 (ReverseVec_383362 v@@48)))
 (and (= (seq.len r@@11) (seq.len v@@48)) (forall ((i@@57 Int) ) (!  (=> (and (>= i@@57 0) (< i@@57 (seq.len r@@11))) (= (seq.nth r@@11 i@@57) (seq.nth v@@48 (- (- (seq.len v@@48) i@@57) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@57))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_383362 v@@48))
)))
(assert (forall ((v@@49 (Seq Bool)) ) (! (let ((r@@12 (ReverseVec_16611 v@@49)))
 (and (= (seq.len r@@12) (seq.len v@@49)) (forall ((i@@58 Int) ) (!  (=> (and (>= i@@58 0) (< i@@58 (seq.len r@@12))) (= (seq.nth r@@12 i@@58) (seq.nth v@@49 (- (- (seq.len v@@49) i@@58) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@58))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_16611 v@@49))
)))
(assert (forall ((v@@50 (Seq |T@#0|)) ) (! (let ((r@@13 (ReverseVec_381983 v@@50)))
 (and (= (seq.len r@@13) (seq.len v@@50)) (forall ((i@@59 Int) ) (!  (=> (and (>= i@@59 0) (< i@@59 (seq.len r@@13))) (= (seq.nth r@@13 i@@59) (seq.nth v@@50 (- (- (seq.len v@@50) i@@59) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@13 i@@59))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_381983 v@@50))
)))
(assert (forall ((v@@51 (Seq T@$1_XDX_XDX)) ) (! (let ((r@@14 (ReverseVec_383756 v@@51)))
 (and (= (seq.len r@@14) (seq.len v@@51)) (forall ((i@@60 Int) ) (!  (=> (and (>= i@@60 0) (< i@@60 (seq.len r@@14))) (= (seq.nth r@@14 i@@60) (seq.nth v@@51 (- (- (seq.len v@@51) i@@60) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@14 i@@60))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_383756 v@@51))
)))
(assert (forall ((v@@52 (Seq T@$1_XUS_XUS)) ) (! (let ((r@@15 (ReverseVec_383953 v@@52)))
 (and (= (seq.len r@@15) (seq.len v@@52)) (forall ((i@@61 Int) ) (!  (=> (and (>= i@@61 0) (< i@@61 (seq.len r@@15))) (= (seq.nth r@@15 i@@61) (seq.nth v@@52 (- (- (seq.len v@@52) i@@61) 1))))
 :qid |DiemAccountbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@15 i@@61))
))))
 :qid |DiemAccountbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_383953 v@@52))
)))
(assert (forall ((|l#0| Bool) (i@@62 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@62) |l#0|)
 :qid |DiemAccountbpl.250:54|
 :skolemid |3911|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@62))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_419582|) (|l#1| |T@[$1_Event_EventHandle]Multiset_419582|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_419582_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_419582| (|Select__T@[$1_Event_EventHandle]Multiset_419582_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_419582| (|Select__T@[$1_Event_EventHandle]Multiset_419582_| |l#1| handle@@0))))
(Multiset_419582 (|lambda#3| (|v#Multiset_419582| (|Select__T@[$1_Event_EventHandle]Multiset_419582_| |l#0@@0| handle@@0)) (|v#Multiset_419582| (|Select__T@[$1_Event_EventHandle]Multiset_419582_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemAccountbpl.3674:13|
 :skolemid |3912|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_419582_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@53) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@53) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@53)))
 :qid |DiemAccountbpl.129:29|
 :skolemid |3913|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@53))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_17831)
(declare-fun $t14@1 () T@$Mutation_460321)
(declare-fun $t24@1 () T@$Mutation_17831)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_460321)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_459802)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_459802)
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_460504)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_460691)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_460784)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_460870)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_460943)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_461014)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_461098)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_461182)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_461253)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_461337)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_461421)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_461492)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_461589)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_461673)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_461757)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_461828)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_461899)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_462071)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_462142)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_462213)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_462297)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_460378)
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
(declare-fun $t14 () T@$Mutation_460321)
(declare-fun $t14@0 () T@$Mutation_460321)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_460321)
(declare-fun $t24 () T@$Mutation_17831)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_460504)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_466037)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_465642)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_466374)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_466489)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_466549)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_460504)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t9@@0 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5 () Int)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t15@0@@0 () T@$Mutation_474564)
(declare-fun $t14@1@@0 () T@$Mutation_474524)
(declare-fun $t15@1 () T@$Mutation_474564)
(declare-fun $t13 () |T@$1_Option_Option'address'|)
(declare-fun $t14@2@@0 () T@$Mutation_474524)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0 () T@$Memory_465642)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int T@$1_ValidatorConfig_ValidatorConfig) |T@[Int]$1_ValidatorConfig_ValidatorConfig|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t5@@0 () Int)
(declare-fun $t4@@0 () Int)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $t8@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t14@@0 () T@$Mutation_474524)
(declare-fun $t9@@1 () Int)
(declare-fun $t14@0@@0 () T@$Mutation_474524)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1 () Bool)
(declare-fun $t12@@0 () Int)
(declare-fun $t7@@0 () Bool)
(declare-fun $t6 () Int)
(declare-fun $t8 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_475401)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_475501)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_475586)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_475720)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_475975)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_476075)
(declare-fun $t15 () T@$Mutation_474564)
; Invalid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t25@1 () T@$Mutation_474524)
(declare-fun $t26@0 () T@$1_ValidatorConfig_Config)
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun _$t3 () (Seq Int))
(declare-fun _$t4 () (Seq Int))
(declare-fun $t27 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun $t28@0 () T@$Mutation_478024)
(declare-fun $t28@1 () T@$Mutation_478024)
(declare-fun $t25@2 () T@$Mutation_474524)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0@@0 () T@$Memory_465642)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun _$t1@@1 () Int)
(declare-fun $t15@0@@1 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t25@@0 () T@$Mutation_474524)
(declare-fun $t25@0 () T@$Mutation_474524)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1@@0 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$modifies () |T@[Int]Bool|)
(declare-fun $t24@@0 () Int)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun $t21 () Int)
(declare-fun $t16@0 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t14@@1 () Bool)
(declare-fun $t13@@0 () Int)
(declare-fun $t12@@1 () Int)
(declare-fun $t15@@0 () Int)
(declare-fun $t11@@0 () T@$Mutation_474524)
(declare-fun $t28 () T@$Mutation_478024)
; Undetermined
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
