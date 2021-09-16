(set-option :print-success false)
(set-option :pre-skolem-quant true)
(set-option :dt-share-sel false)
(set-option :ee-mode central)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_104633 0)) ((($Memory_104633 (|domain#$Memory_104633| |T@[Int]Bool|) (|contents#$Memory_104633| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_126830 0)) ((($Memory_126830 (|domain#$Memory_126830| |T@[Int]Bool|) (|contents#$Memory_126830| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_126759 0)) ((($Memory_126759 (|domain#$Memory_126759| |T@[Int]Bool|) (|contents#$Memory_126759| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_112673 0)) ((($Memory_112673 (|domain#$Memory_112673| |T@[Int]Bool|) (|contents#$Memory_112673| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_126516 0)) ((($Memory_126516 (|domain#$Memory_126516| |T@[Int]Bool|) (|contents#$Memory_126516| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_126445 0)) ((($Memory_126445 (|domain#$Memory_126445| |T@[Int]Bool|) (|contents#$Memory_126445| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_149357 0)) ((($Memory_149357 (|domain#$Memory_149357| |T@[Int]Bool|) (|contents#$Memory_149357| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_112640 0)) ((($Memory_112640 (|domain#$Memory_112640| |T@[Int]Bool|) (|contents#$Memory_112640| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_149612 0)) ((($Memory_149612 (|domain#$Memory_149612| |T@[Int]Bool|) (|contents#$Memory_149612| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_149712 0)) ((($Memory_149712 (|domain#$Memory_149712| |T@[Int]Bool|) (|contents#$Memory_149712| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_149138 0)) ((($Memory_149138 (|domain#$Memory_149138| |T@[Int]Bool|) (|contents#$Memory_149138| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_124457 0)) ((($Memory_124457 (|domain#$Memory_124457| |T@[Int]Bool|) (|contents#$Memory_124457| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_125488 0)) ((($Memory_125488 (|domain#$Memory_125488| |T@[Int]Bool|) (|contents#$Memory_125488| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125300 0)) ((($Memory_125300 (|domain#$Memory_125300| |T@[Int]Bool|) (|contents#$Memory_125300| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_122943 0)) ((($Memory_122943 (|domain#$Memory_122943| |T@[Int]Bool|) (|contents#$Memory_122943| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_122869 0)) ((($Memory_122869 (|domain#$Memory_122869| |T@[Int]Bool|) (|contents#$Memory_122869| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_122795 0)) ((($Memory_122795 (|domain#$Memory_122795| |T@[Int]Bool|) (|contents#$Memory_122795| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_126688 0)) ((($Memory_126688 (|domain#$Memory_126688| |T@[Int]Bool|) (|contents#$Memory_126688| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_122005 0)) ((($Memory_122005 (|domain#$Memory_122005| |T@[Int]Bool|) (|contents#$Memory_122005| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118280 0)) ((($Memory_118280 (|domain#$Memory_118280| |T@[Int]Bool|) (|contents#$Memory_118280| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113573 0)) ((($Memory_113573 (|domain#$Memory_113573| |T@[Int]Bool|) (|contents#$Memory_113573| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_122273 0)) ((($Memory_122273 (|domain#$Memory_122273| |T@[Int]Bool|) (|contents#$Memory_122273| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_126147 0)) ((($Memory_126147 (|domain#$Memory_126147| |T@[Int]Bool|) (|contents#$Memory_126147| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113513 0)) ((($Memory_113513 (|domain#$Memory_113513| |T@[Int]Bool|) (|contents#$Memory_113513| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_122182 0)) ((($Memory_122182 (|domain#$Memory_122182| |T@[Int]Bool|) (|contents#$Memory_122182| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_126293 0)) ((($Memory_126293 (|domain#$Memory_126293| |T@[Int]Bool|) (|contents#$Memory_126293| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_117404 0)) ((($Memory_117404 (|domain#$Memory_117404| |T@[Int]Bool|) (|contents#$Memory_117404| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_117659 0)) ((($Memory_117659 (|domain#$Memory_117659| |T@[Int]Bool|) (|contents#$Memory_117659| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_116232 0)) ((($Memory_116232 (|domain#$Memory_116232| |T@[Int]Bool|) (|contents#$Memory_116232| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_116523 0)) ((($Memory_116523 (|domain#$Memory_116523| |T@[Int]Bool|) (|contents#$Memory_116523| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_116118 0)) ((($Memory_116118 (|domain#$Memory_116118| |T@[Int]Bool|) (|contents#$Memory_116118| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_82710 0)) (((Vec_82710 (|v#Vec_82710| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_82710| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_82710) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_82671 0)) (((Vec_82671 (|v#Vec_82671| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_82671| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_82671) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_18658 0)) (((Vec_18658 (|v#Vec_18658| |T@[Int]Int|) (|l#Vec_18658| Int) ) ) ))
(declare-sort |T@[Int]Vec_18658| 0)
(declare-datatypes ((T@Vec_82878 0)) (((Vec_82878 (|v#Vec_82878| |T@[Int]Vec_18658|) (|l#Vec_82878| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_82878) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_116395 0)) ((($Memory_116395 (|domain#$Memory_116395| |T@[Int]Bool|) (|contents#$Memory_116395| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_82878) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_116331 0)) ((($Memory_116331 (|domain#$Memory_116331| |T@[Int]Bool|) (|contents#$Memory_116331| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_18658) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_18658) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_116459 0)) ((($Memory_116459 (|domain#$Memory_116459| |T@[Int]Bool|) (|contents#$Memory_116459| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_18658) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_149038 0)) ((($Memory_149038 (|domain#$Memory_149038| |T@[Int]Bool|) (|contents#$Memory_149038| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_18658) (|$base_url#$1_DualAttestation_Credential| T@Vec_18658) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_18658) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_113398 0)) ((($Memory_113398 (|domain#$Memory_113398| |T@[Int]Bool|) (|contents#$Memory_113398| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_18658) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_83123 0)) (((Vec_83123 (|v#Vec_83123| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_83123| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_83123) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_149223 0)) ((($Memory_149223 (|domain#$Memory_149223| |T@[Int]Bool|) (|contents#$Memory_149223| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_18658) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118054 0)) ((($Memory_118054 (|domain#$Memory_118054| |T@[Int]Bool|) (|contents#$Memory_118054| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_18658) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_117990 0)) ((($Memory_117990 (|domain#$Memory_117990| |T@[Int]Bool|) (|contents#$Memory_117990| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_18658) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_18658) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_18658) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_82632 0)) (((Vec_82632 (|v#Vec_82632| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_82632| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_82632) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_82821 0)) (((Vec_82821 (|v#Vec_82821| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_82821| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_82821) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_116151 0)) ((($Memory_116151 (|domain#$Memory_116151| |T@[Int]Bool|) (|contents#$Memory_116151| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_18658) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_18658) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_112607 0)) ((($Memory_112607 (|domain#$Memory_112607| |T@[Int]Bool|) (|contents#$Memory_112607| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_18658) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_113060 0)) ((($Memory_113060 (|domain#$Memory_113060| |T@[Int]Bool|) (|contents#$Memory_113060| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_112234 0)) ((($Memory_112234 (|domain#$Memory_112234| |T@[Int]Bool|) (|contents#$Memory_112234| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_112009 0)) ((($Memory_112009 (|domain#$Memory_112009| |T@[Int]Bool|) (|contents#$Memory_112009| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_18658) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_18658) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_18658) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_18658) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_18658) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_18658) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_18658) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_18658) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_18658) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_18658) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_18658) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_18658) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_18658) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_82546 0)) (((Multiset_82546 (|v#Multiset_82546| |T@[$EventRep]Int|) (|l#Multiset_82546| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_82546| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_82546|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_177221 0)) ((($Mutation_177221 (|l#$Mutation_177221| T@$Location) (|p#$Mutation_177221| T@Vec_18658) (|v#$Mutation_177221| |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_174050 0)) ((($Mutation_174050 (|l#$Mutation_174050| T@$Location) (|p#$Mutation_174050| T@Vec_18658) (|v#$Mutation_174050| |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_171049 0)) ((($Mutation_171049 (|l#$Mutation_171049| T@$Location) (|p#$Mutation_171049| T@Vec_18658) (|v#$Mutation_171049| |T@$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_133519 0)) ((($Mutation_133519 (|l#$Mutation_133519| T@$Location) (|p#$Mutation_133519| T@Vec_18658) (|v#$Mutation_133519| |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_130340 0)) ((($Mutation_130340 (|l#$Mutation_130340| T@$Location) (|p#$Mutation_130340| T@Vec_18658) (|v#$Mutation_130340| |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_127147 0)) ((($Mutation_127147 (|l#$Mutation_127147| T@$Location) (|p#$Mutation_127147| T@Vec_18658) (|v#$Mutation_127147| |T@$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_105264 0)) ((($Mutation_105264 (|l#$Mutation_105264| T@$Location) (|p#$Mutation_105264| T@Vec_18658) (|v#$Mutation_105264| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10506 0)) ((($Mutation_10506 (|l#$Mutation_10506| T@$Location) (|p#$Mutation_10506| T@Vec_18658) (|v#$Mutation_10506| Int) ) ) ))
(declare-datatypes ((T@$Mutation_99521 0)) ((($Mutation_99521 (|l#$Mutation_99521| T@$Location) (|p#$Mutation_99521| T@Vec_18658) (|v#$Mutation_99521| T@Vec_18658) ) ) ))
(declare-datatypes ((T@$Mutation_98433 0)) ((($Mutation_98433 (|l#$Mutation_98433| T@$Location) (|p#$Mutation_98433| T@Vec_18658) (|v#$Mutation_98433| T@Vec_82878) ) ) ))
(declare-datatypes ((T@$Mutation_96724 0)) ((($Mutation_96724 (|l#$Mutation_96724| T@$Location) (|p#$Mutation_96724| T@Vec_18658) (|v#$Mutation_96724| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_95737 0)) ((($Mutation_95737 (|l#$Mutation_95737| T@$Location) (|p#$Mutation_95737| T@Vec_18658) (|v#$Mutation_95737| T@Vec_82632) ) ) ))
(declare-datatypes ((T@$Mutation_94082 0)) ((($Mutation_94082 (|l#$Mutation_94082| T@$Location) (|p#$Mutation_94082| T@Vec_18658) (|v#$Mutation_94082| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_93095 0)) ((($Mutation_93095 (|l#$Mutation_93095| T@$Location) (|p#$Mutation_93095| T@Vec_18658) (|v#$Mutation_93095| T@Vec_83123) ) ) ))
(declare-datatypes ((T@$Mutation_91417 0)) ((($Mutation_91417 (|l#$Mutation_91417| T@$Location) (|p#$Mutation_91417| T@Vec_18658) (|v#$Mutation_91417| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_90430 0)) ((($Mutation_90430 (|l#$Mutation_90430| T@$Location) (|p#$Mutation_90430| T@Vec_18658) (|v#$Mutation_90430| T@Vec_82821) ) ) ))
(declare-datatypes ((T@$Mutation_88630 0)) ((($Mutation_88630 (|l#$Mutation_88630| T@$Location) (|p#$Mutation_88630| T@Vec_18658) (|v#$Mutation_88630| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_87643 0)) ((($Mutation_87643 (|l#$Mutation_87643| T@$Location) (|p#$Mutation_87643| T@Vec_18658) (|v#$Mutation_87643| T@Vec_82710) ) ) ))
(declare-datatypes ((T@$Mutation_85930 0)) ((($Mutation_85930 (|l#$Mutation_85930| T@$Location) (|p#$Mutation_85930| T@Vec_18658) (|v#$Mutation_85930| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_84943 0)) ((($Mutation_84943 (|l#$Mutation_84943| T@$Location) (|p#$Mutation_84943| T@Vec_18658) (|v#$Mutation_84943| T@Vec_82671) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_82671 T@Vec_82671) Bool)
(declare-fun InRangeVec_72995 (T@Vec_82671 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_82671) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_82671 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_82710 T@Vec_82710) Bool)
(declare-fun InRangeVec_73196 (T@Vec_82710 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_82710) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_82710 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_82821 T@Vec_82821) Bool)
(declare-fun InRangeVec_73397 (T@Vec_82821 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_18658 T@Vec_18658) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_82821) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_82821 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_83123 T@Vec_83123) Bool)
(declare-fun InRangeVec_73598 (T@Vec_83123 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_83123) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_83123 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_82632 T@Vec_82632) Bool)
(declare-fun InRangeVec_73799 (T@Vec_82632 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_82632) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_82632 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_82878 T@Vec_82878) Bool)
(declare-fun InRangeVec_97856 (T@Vec_82878 Int) Bool)
(declare-fun |Select__T@[Int]Vec_18658_| (|T@[Int]Vec_18658| Int) T@Vec_18658)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_82878) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_18658) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_82878 T@Vec_18658) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_18658 T@Vec_18658) Bool)
(declare-fun InRangeVec_9882 (T@Vec_18658 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_18658) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_18658 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_18658 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_18658) T@Vec_18658)
(declare-fun $1_Hash_sha3 (T@Vec_18658) T@Vec_18658)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_18658) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_18658 T@Vec_18658 T@Vec_18658) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_82546_| (|T@[$1_Event_EventHandle]Multiset_82546| T@$1_Event_EventHandle) T@Multiset_82546)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
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
(declare-fun IndexOfVec_18658 (T@Vec_18658 Int) Int)
(declare-fun IndexOfVec_82632 (T@Vec_82632 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_82671 (T@Vec_82671 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_82710 (T@Vec_82710 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_82821 (T@Vec_82821 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_82878 (T@Vec_82878 T@Vec_18658) Int)
(declare-fun IndexOfVec_83123 (T@Vec_83123 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_82546| |T@[$1_Event_EventHandle]Multiset_82546|) |T@[$1_Event_EventHandle]Multiset_82546|)
(declare-fun |lambda#24| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#4| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]Vec_18658| |T@[Int]Vec_18658| Int T@Vec_18658) |T@[Int]Vec_18658|)
(declare-fun |lambda#19| (Int Int |T@[Int]Vec_18658| Int Int T@Vec_18658) |T@[Int]Vec_18658|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]Vec_18658| |T@[Int]Vec_18658| Int T@Vec_18658) |T@[Int]Vec_18658|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#22| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountLimitsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountLimitsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountLimitsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountLimitsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountLimitsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountLimitsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountLimitsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountLimitsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_82671) (v2 T@Vec_82671) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2)  (and (= (|l#Vec_82671| v1) (|l#Vec_82671| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_72995 v1 i@@0) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v1) i@@0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v2) i@@0)))
 :qid |AccountLimitsbpl.615:13|
 :skolemid |17|
))))
 :qid |AccountLimitsbpl.613:62|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_82671) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_82671| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_72995 v@@4 i@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@4) i@@1)))
 :qid |AccountLimitsbpl.621:13|
 :skolemid |19|
))))
 :qid |AccountLimitsbpl.619:62|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_82671) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@2 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_72995 v@@5 i@@3)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@5) i@@3) e))
 :qid |AccountLimitsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_72995 v@@5 i@@2)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@5) j) e)))
 :qid |AccountLimitsbpl.634:17|
 :skolemid |22|
)))))
 :qid |AccountLimitsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_82710) (v2@@0 T@Vec_82710) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_82710| v1@@0) (|l#Vec_82710| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_73196 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v2@@0) i@@4)))
 :qid |AccountLimitsbpl.796:13|
 :skolemid |24|
))))
 :qid |AccountLimitsbpl.794:59|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_82710) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_82710| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_73196 v@@6 i@@5) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@6) i@@5)))
 :qid |AccountLimitsbpl.802:13|
 :skolemid |26|
))))
 :qid |AccountLimitsbpl.800:59|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_82710) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_73196 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@7) i@@7) e@@0))
 :qid |AccountLimitsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_73196 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@7) j@@0) e@@0)))
 :qid |AccountLimitsbpl.815:17|
 :skolemid |29|
)))))
 :qid |AccountLimitsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_82821) (v2@@1 T@Vec_82821) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1)  (and (= (|l#Vec_82821| v1@@1) (|l#Vec_82821| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_73397 v1@@1 i@@8) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8)))))
 :qid |AccountLimitsbpl.977:13|
 :skolemid |31|
))))
 :qid |AccountLimitsbpl.975:53|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_82821) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_82821| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_73397 v@@8 i@@9) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@8) i@@9)))
 :qid |AccountLimitsbpl.983:13|
 :skolemid |33|
))))
 :qid |AccountLimitsbpl.981:53|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_82821) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_73397 v@@9 i@@11)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1))))
 :qid |AccountLimitsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_73397 v@@9 i@@10)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))))
 :qid |AccountLimitsbpl.996:17|
 :skolemid |36|
)))))
 :qid |AccountLimitsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_83123) (v2@@2 T@Vec_83123) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@2 v2@@2)  (and (= (|l#Vec_83123| v1@@2) (|l#Vec_83123| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_73598 v1@@2 i@@12) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v1@@2) i@@12)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v2@@2) i@@12))))
 :qid |AccountLimitsbpl.1158:13|
 :skolemid |38|
))))
 :qid |AccountLimitsbpl.1156:50|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_83123) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_83123| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_73598 v@@10 i@@13) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@10) i@@13)))
 :qid |AccountLimitsbpl.1164:13|
 :skolemid |40|
))))
 :qid |AccountLimitsbpl.1162:50|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_83123) (e@@2 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@14 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_73598 v@@11 i@@15)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@11) i@@15)) (|$domain#$1_VASPDomain_VASPDomain| e@@2)))
 :qid |AccountLimitsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_73598 v@@11 i@@14)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@11) i@@14)) (|$domain#$1_VASPDomain_VASPDomain| e@@2))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@11) j@@2)) (|$domain#$1_VASPDomain_VASPDomain| e@@2))))
 :qid |AccountLimitsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |AccountLimitsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_82632) (v2@@3 T@Vec_82632) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@3 v2@@3)  (and (= (|l#Vec_82632| v1@@3) (|l#Vec_82632| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_73799 v1@@3 i@@16) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v1@@3) i@@16)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v1@@3) i@@16)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v2@@3) i@@16)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v1@@3) i@@16)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v2@@3) i@@16)))))
 :qid |AccountLimitsbpl.1339:13|
 :skolemid |45|
))))
 :qid |AccountLimitsbpl.1337:51|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_82632) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_82632| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_73799 v@@12 i@@17) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@12) i@@17)))
 :qid |AccountLimitsbpl.1345:13|
 :skolemid |47|
))))
 :qid |AccountLimitsbpl.1343:51|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_82632) (e@@3 T@$1_ValidatorConfig_Config) ) (! (let ((i@@18 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_73799 v@@13 i@@19)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@19)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@19)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@19)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3))))
 :qid |AccountLimitsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_73799 v@@13 i@@18)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@18)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@18)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@18)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) j@@3)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) j@@3)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) j@@3)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3)))))
 :qid |AccountLimitsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |AccountLimitsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_82878) (v2@@4 T@Vec_82878) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@4 v2@@4)  (and (= (|l#Vec_82878| v1@@4) (|l#Vec_82878| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_97856 v1@@4 i@@20) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v1@@4) i@@20) (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v2@@4) i@@20)))
 :qid |AccountLimitsbpl.1520:13|
 :skolemid |52|
))))
 :qid |AccountLimitsbpl.1518:33|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_82878) ) (! (= (|$IsValid'vec'vec'u8'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_82878| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_97856 v@@14 i@@21) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@14) i@@21)))
 :qid |AccountLimitsbpl.1526:13|
 :skolemid |54|
))))
 :qid |AccountLimitsbpl.1524:33|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_82878) (e@@4 T@Vec_18658) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_97856 v@@15 i@@23)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@15) i@@23) e@@4))
 :qid |AccountLimitsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_97856 v@@15 i@@22)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@15) j@@4) e@@4)))
 :qid |AccountLimitsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |AccountLimitsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_18658) (v2@@5 T@Vec_18658) ) (! (= (|$IsEqual'vec'address''| v1@@5 v2@@5)  (and (= (|l#Vec_18658| v1@@5) (|l#Vec_18658| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_9882 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_18658| v2@@5) i@@24)))
 :qid |AccountLimitsbpl.1701:13|
 :skolemid |59|
))))
 :qid |AccountLimitsbpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'address''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_18658) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_18658| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_9882 v@@16 i@@25) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_18658| v@@16) i@@25)))
 :qid |AccountLimitsbpl.1707:13|
 :skolemid |61|
))))
 :qid |AccountLimitsbpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_18658) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_9882 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@17) i@@27) e@@5))
 :qid |AccountLimitsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_9882 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@17) j@@5) e@@5)))
 :qid |AccountLimitsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |AccountLimitsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_18658) (v2@@6 T@Vec_18658) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6)  (and (= (|l#Vec_18658| v1@@6) (|l#Vec_18658| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_9882 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_18658| v2@@6) i@@28)))
 :qid |AccountLimitsbpl.1882:13|
 :skolemid |66|
))))
 :qid |AccountLimitsbpl.1880:28|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'u8''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_18658) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_18658| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_9882 v@@18 i@@29) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_18658| v@@18) i@@29)))
 :qid |AccountLimitsbpl.1888:13|
 :skolemid |68|
))))
 :qid |AccountLimitsbpl.1886:28|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_18658) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_9882 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@19) i@@31) e@@6))
 :qid |AccountLimitsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_9882 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@19) j@@6) e@@6)))
 :qid |AccountLimitsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |AccountLimitsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_18658) (v2@@7 T@Vec_18658) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7)))
 :qid |AccountLimitsbpl.2074:15|
 :skolemid |73|
 :pattern ( ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7))
)))
(assert (forall ((v1@@8 T@Vec_18658) (v2@@8 T@Vec_18658) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8)))
 :qid |AccountLimitsbpl.2090:15|
 :skolemid |74|
 :pattern ( ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8))
)))
(assert (forall ((k1 T@Vec_18658) (k2 T@Vec_18658) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountLimitsbpl.2161:15|
 :skolemid |75|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_18658) (s2 T@Vec_18658) (k1@@0 T@Vec_18658) (k2@@0 T@Vec_18658) (m1 T@Vec_18658) (m2 T@Vec_18658) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountLimitsbpl.2164:15|
 :skolemid |76|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_82546_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_82546| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_82546| stream) v@@20) 0)
 :qid |AccountLimitsbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountLimitsbpl.2225:13|
 :skolemid |77|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountLimitsbpl.2266:80|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@9 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@9 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@9) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@9)))
 :qid |AccountLimitsbpl.2272:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@9) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@9))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountLimitsbpl.2322:82|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@10 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@10 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@10)))
 :qid |AccountLimitsbpl.2328:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@10))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountLimitsbpl.2378:80|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@11 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@11 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@11)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@11))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@11))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@11) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@11)))
 :qid |AccountLimitsbpl.2384:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@11) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@11))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountLimitsbpl.2434:79|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@12 T@$1_DiemAccount_AdminTransactionEvent) (v2@@12 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@12) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@12)))
 :qid |AccountLimitsbpl.2440:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@12) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@12))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountLimitsbpl.2490:76|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@13 T@$1_DiemAccount_CreateAccountEvent) (v2@@13 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@13)))
 :qid |AccountLimitsbpl.2496:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@13))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountLimitsbpl.2546:78|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@14 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@14)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@14)))
 :qid |AccountLimitsbpl.2552:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@14))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountLimitsbpl.2602:74|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_SentPaymentEvent) (v2@@15 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@15))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@15))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@15))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@15)))
 :qid |AccountLimitsbpl.2608:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@15))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountLimitsbpl.2658:69|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@16 T@$1_DiemBlock_NewBlockEvent) (v2@@16 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@16) (|$round#$1_DiemBlock_NewBlockEvent| v2@@16)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@16) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@16))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@16) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@16))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@16) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@16))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@16) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@16)))
 :qid |AccountLimitsbpl.2664:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@16) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@16))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountLimitsbpl.2714:70|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@17 T@$1_DiemConfig_NewEpochEvent) (v2@@17 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@17) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@17)))
 :qid |AccountLimitsbpl.2720:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@17) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@17))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountLimitsbpl.2770:60|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@18 T@$1_Diem_BurnEvent) (v2@@18 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@18) (|$amount#$1_Diem_BurnEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@18) (|$currency_code#$1_Diem_BurnEvent| v2@@18))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@18) (|$preburn_address#$1_Diem_BurnEvent| v2@@18))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@18) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@18)))
 :qid |AccountLimitsbpl.2776:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@18) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@18))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountLimitsbpl.2826:66|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@19 T@$1_Diem_CancelBurnEvent) (v2@@19 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@19) (|$amount#$1_Diem_CancelBurnEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@19) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@19))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@19) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@19))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@19)))
 :qid |AccountLimitsbpl.2832:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@19))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountLimitsbpl.2882:60|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@20 T@$1_Diem_MintEvent) (v2@@20 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@20) (|$amount#$1_Diem_MintEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@20) (|$currency_code#$1_Diem_MintEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@20) (|$ToEventRep'$1_Diem_MintEvent'| v2@@20)))
 :qid |AccountLimitsbpl.2888:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@20) (|$ToEventRep'$1_Diem_MintEvent'| v2@@20))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountLimitsbpl.2938:63|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@21 T@$1_Diem_PreburnEvent) (v2@@21 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@21) (|$amount#$1_Diem_PreburnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@21) (|$currency_code#$1_Diem_PreburnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@21) (|$preburn_address#$1_Diem_PreburnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@21) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@21)))
 :qid |AccountLimitsbpl.2944:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@21) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@21))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountLimitsbpl.2994:79|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@22 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@22 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@22) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@22)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@22) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@22) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@22)))
 :qid |AccountLimitsbpl.3000:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@22) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@22))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountLimitsbpl.3050:82|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@23 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@23 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@23) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@23)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@23) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@23))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@23) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@23)))
 :qid |AccountLimitsbpl.3056:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@23) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@23))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountLimitsbpl.3106:88|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@24 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@24 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@24) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@24)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@24) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@24))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@24)))
 :qid |AccountLimitsbpl.3112:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@24))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountLimitsbpl.3162:72|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@25 T@$1_VASPDomain_VASPDomainEvent) (v2@@25 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@25) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@25)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@25)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@25) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@25))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@25) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@25)))
 :qid |AccountLimitsbpl.3168:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@25) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@25))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountLimitsbpl.3247:61|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountLimitsbpl.3345:36|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountLimitsbpl.3743:71|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountLimitsbpl.3766:46|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountLimitsbpl.3778:64|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountLimitsbpl.3790:75|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountLimitsbpl.3802:72|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountLimitsbpl.3830:55|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountLimitsbpl.3853:46|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountLimitsbpl.3872:49|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountLimitsbpl.3922:71|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountLimitsbpl.3935:91|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountLimitsbpl.3948:113|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |AccountLimitsbpl.3961:75|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |AccountLimitsbpl.3974:73|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |AccountLimitsbpl.3994:48|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |AccountLimitsbpl.4011:83|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |AccountLimitsbpl.4025:48|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |AccountLimitsbpl.4046:45|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |AccountLimitsbpl.4060:51|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |AccountLimitsbpl.4083:48|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |AccountLimitsbpl.4101:49|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |AccountLimitsbpl.4114:65|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |AccountLimitsbpl.4136:45|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |AccountLimitsbpl.4149:45|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@24) true)
 :qid |AccountLimitsbpl.4162:55|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@25)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@25)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@25))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@25))))
 :qid |AccountLimitsbpl.4182:38|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@25))
)))
(assert (forall ((s@@26 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@26)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@26)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@26))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@26))))
 :qid |AccountLimitsbpl.4204:44|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@27)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))))
 :qid |AccountLimitsbpl.4256:53|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@28)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))))
 :qid |AccountLimitsbpl.4329:53|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29) true)
 :qid |AccountLimitsbpl.4366:55|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@30)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@30))))
 :qid |AccountLimitsbpl.4383:38|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@31)))
 :qid |AccountLimitsbpl.4397:48|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@32)))
 :qid |AccountLimitsbpl.4411:48|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@33))))
 :qid |AccountLimitsbpl.4431:41|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@34)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@34)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@34))))
 :qid |AccountLimitsbpl.4450:57|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@35) true)
 :qid |AccountLimitsbpl.4619:68|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@36)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))))
 :qid |AccountLimitsbpl.4641:66|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))))
 :qid |AccountLimitsbpl.4667:66|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@38))))
 :qid |AccountLimitsbpl.4693:58|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@39)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))))
 :qid |AccountLimitsbpl.4722:56|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@40)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))))
 :qid |AccountLimitsbpl.4752:56|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@41)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@41)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@41))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@41))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@41))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@41))))
 :qid |AccountLimitsbpl.4782:48|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@42) true)
 :qid |AccountLimitsbpl.17632:31|
 :skolemid |624|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@42))
)))
(assert (forall ((s@@43 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@43) true)
 :qid |AccountLimitsbpl.17650:31|
 :skolemid |625|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@43))
)))
(assert (forall ((s@@44 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@44)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@44)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@44))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@44))))
 :qid |AccountLimitsbpl.17669:35|
 :skolemid |626|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@44))
)))
(assert (forall ((s@@45 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@45) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@45)))
 :qid |AccountLimitsbpl.17685:45|
 :skolemid |627|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@46)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@46))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@46))))
 :qid |AccountLimitsbpl.17703:50|
 :skolemid |628|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@47) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@47)))
 :qid |AccountLimitsbpl.17719:52|
 :skolemid |629|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@47))
)))
(assert (forall ((s@@48 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@48) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@48)))
 :qid |AccountLimitsbpl.17732:46|
 :skolemid |630|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@48))
)))
(assert (forall ((s@@49 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@49) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@49)))
 :qid |AccountLimitsbpl.17755:38|
 :skolemid |631|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@49))
)))
(assert (forall ((s@@50 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@50) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@50)))
 :qid |AccountLimitsbpl.17769:39|
 :skolemid |632|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@50))
)))
(assert (forall ((s@@51 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@51)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@51))))
 :qid |AccountLimitsbpl.17796:65|
 :skolemid |633|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@52)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@52))))
 :qid |AccountLimitsbpl.17829:60|
 :skolemid |634|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@53)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@53))))
 :qid |AccountLimitsbpl.17846:66|
 :skolemid |635|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@54)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@54)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@54))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@54))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@54))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@54))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@54))))
 :qid |AccountLimitsbpl.17875:50|
 :skolemid |636|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@55) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@55)))
 :qid |AccountLimitsbpl.17898:45|
 :skolemid |637|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@56)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@56)) true))
 :qid |AccountLimitsbpl.17915:87|
 :skolemid |638|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@57)))
 :qid |AccountLimitsbpl.17929:47|
 :skolemid |639|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@58)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@58)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@58))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@58))))
 :qid |AccountLimitsbpl.17948:58|
 :skolemid |640|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@59) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@59)))
 :qid |AccountLimitsbpl.17964:39|
 :skolemid |641|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@59))
)))
(assert (forall ((s@@60 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@60)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@60)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@60))))
 :qid |AccountLimitsbpl.17986:58|
 :skolemid |642|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@61)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@61)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@61))))
 :qid |AccountLimitsbpl.18003:58|
 :skolemid |643|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@62) true)
 :qid |AccountLimitsbpl.18018:51|
 :skolemid |644|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@63)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@63)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@63))))
 :qid |AccountLimitsbpl.18035:60|
 :skolemid |645|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@64)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@64))))
 :qid |AccountLimitsbpl.18069:47|
 :skolemid |646|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@65)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@65))))
 :qid |AccountLimitsbpl.18095:63|
 :skolemid |647|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@66) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@66)))
 :qid |AccountLimitsbpl.18110:57|
 :skolemid |648|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@66))
)))
(assert (forall ((s@@67 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@67) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@67)))
 :qid |AccountLimitsbpl.18123:55|
 :skolemid |649|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@67))
)))
(assert (forall ((s@@68 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@68) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@68)))
 :qid |AccountLimitsbpl.18137:55|
 :skolemid |650|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@69)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@69))))
 :qid |AccountLimitsbpl.18154:54|
 :skolemid |651|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@70)))
 :qid |AccountLimitsbpl.18168:55|
 :skolemid |652|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@71)))
 :qid |AccountLimitsbpl.18181:57|
 :skolemid |653|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@72))))
 :qid |AccountLimitsbpl.18203:56|
 :skolemid |654|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@73)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@73))))
 :qid |AccountLimitsbpl.18230:52|
 :skolemid |655|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@74)))
 :qid |AccountLimitsbpl.18248:54|
 :skolemid |656|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@75)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@75))))
 :qid |AccountLimitsbpl.18269:47|
 :skolemid |657|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@76)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@76)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@76))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@76))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@76))))
 :qid |AccountLimitsbpl.18293:47|
 :skolemid |658|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@77) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@77)))
 :qid |AccountLimitsbpl.18311:49|
 :skolemid |659|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@78)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@78)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@78))))
 :qid |AccountLimitsbpl.18353:49|
 :skolemid |660|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@79)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@79)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@79))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@79))))
 :qid |AccountLimitsbpl.18382:48|
 :skolemid |661|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@80) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@80)))
 :qid |AccountLimitsbpl.18398:47|
 :skolemid |662|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@80))
)))
(assert (forall ((v@@21 T@Vec_82671) (i@@32 Int) ) (! (= (InRangeVec_72995 v@@21 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_82671| v@@21))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_72995 v@@21 i@@32))
)))
(assert (forall ((v@@22 T@Vec_82710) (i@@33 Int) ) (! (= (InRangeVec_73196 v@@22 i@@33)  (and (>= i@@33 0) (< i@@33 (|l#Vec_82710| v@@22))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_73196 v@@22 i@@33))
)))
(assert (forall ((v@@23 T@Vec_82821) (i@@34 Int) ) (! (= (InRangeVec_73397 v@@23 i@@34)  (and (>= i@@34 0) (< i@@34 (|l#Vec_82821| v@@23))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_73397 v@@23 i@@34))
)))
(assert (forall ((v@@24 T@Vec_83123) (i@@35 Int) ) (! (= (InRangeVec_73598 v@@24 i@@35)  (and (>= i@@35 0) (< i@@35 (|l#Vec_83123| v@@24))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_73598 v@@24 i@@35))
)))
(assert (forall ((v@@25 T@Vec_82632) (i@@36 Int) ) (! (= (InRangeVec_73799 v@@25 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_82632| v@@25))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_73799 v@@25 i@@36))
)))
(assert (forall ((v@@26 T@Vec_82878) (i@@37 Int) ) (! (= (InRangeVec_97856 v@@26 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_82878| v@@26))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_97856 v@@26 i@@37))
)))
(assert (forall ((v@@27 T@Vec_18658) (i@@38 Int) ) (! (= (InRangeVec_9882 v@@27 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_18658| v@@27))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9882 v@@27 i@@38))
)))
(assert (forall ((v@@28 T@Vec_18658) (e@@7 Int) ) (! (let ((i@@39 (IndexOfVec_18658 v@@28 e@@7)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_9882 v@@28 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@28) i@@40) e@@7))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_9882 v@@28 i@@39) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@28) i@@39) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@39)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@28) j@@7) e@@7)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18658 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_82632) (e@@8 T@$1_ValidatorConfig_Config) ) (! (let ((i@@41 (IndexOfVec_82632 v@@29 e@@8)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_73799 v@@29 i@@42) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@29) i@@42) e@@8))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_73799 v@@29 i@@41) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@29) i@@41) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@41)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@29) j@@8) e@@8)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_82632 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_82671) (e@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@43 (IndexOfVec_82671 v@@30 e@@9)))
(ite  (not (exists ((i@@44 Int) ) (!  (and (InRangeVec_72995 v@@30 i@@44) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@30) i@@44) e@@9))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@43 (- 0 1))  (and (and (InRangeVec_72995 v@@30 i@@43) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@30) i@@43) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@43)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@30) j@@9) e@@9)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_82671 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_82710) (e@@10 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@45 (IndexOfVec_82710 v@@31 e@@10)))
(ite  (not (exists ((i@@46 Int) ) (!  (and (InRangeVec_73196 v@@31 i@@46) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@31) i@@46) e@@10))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@45 (- 0 1))  (and (and (InRangeVec_73196 v@@31 i@@45) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@31) i@@45) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@45)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@31) j@@10) e@@10)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_82710 v@@31 e@@10))
)))
(assert (forall ((v@@32 T@Vec_82821) (e@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@47 (IndexOfVec_82821 v@@32 e@@11)))
(ite  (not (exists ((i@@48 Int) ) (!  (and (InRangeVec_73397 v@@32 i@@48) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@32) i@@48) e@@11))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@47 (- 0 1))  (and (and (InRangeVec_73397 v@@32 i@@47) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@32) i@@47) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@47)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@32) j@@11) e@@11)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_82821 v@@32 e@@11))
)))
(assert (forall ((v@@33 T@Vec_82878) (e@@12 T@Vec_18658) ) (! (let ((i@@49 (IndexOfVec_82878 v@@33 e@@12)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_97856 v@@33 i@@50) (= (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@33) i@@50) e@@12))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_97856 v@@33 i@@49) (= (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@33) i@@49) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@49)) (not (= (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@33) j@@12) e@@12)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_82878 v@@33 e@@12))
)))
(assert (forall ((v@@34 T@Vec_83123) (e@@13 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@51 (IndexOfVec_83123 v@@34 e@@13)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_73598 v@@34 i@@52) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@34) i@@52) e@@13))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_73598 v@@34 i@@51) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@34) i@@51) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@51)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@34) j@@13) e@@13)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_83123 v@@34 e@@13))
)))
(assert (forall ((|l#0| Bool) (i@@53 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53) |l#0|)
 :qid |AccountLimitsbpl.275:54|
 :skolemid |663|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_82546|) (|l#1| |T@[$1_Event_EventHandle]Multiset_82546|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_82546_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_82546| (|Select__T@[$1_Event_EventHandle]Multiset_82546_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_82546| (|Select__T@[$1_Event_EventHandle]Multiset_82546_| |l#1| handle@@0))))
(Multiset_82546 (|lambda#24| (|v#Multiset_82546| (|Select__T@[$1_Event_EventHandle]Multiset_82546_| |l#0@@0| handle@@0)) (|v#Multiset_82546| (|Select__T@[$1_Event_EventHandle]Multiset_82546_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountLimitsbpl.2235:13|
 :skolemid |664|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_82546_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5| Int) (|l#6| T@$1_DiemAccount_KeyRotationCapability) (i@@54 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54) (ite  (and (>= i@@54 |l#0@@1|) (< i@@54 |l#1@@0|)) (ite (< i@@54 |l#2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3| i@@54) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4| (- i@@54 |l#5|))) |l#6|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |665|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_DiemAccount_KeyRotationCapability) (i@@55 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55) (ite  (and (<= |l#0@@2| i@@55) (< i@@55 |l#1@@1|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@0| (- (- |l#3@@0| i@@55) |l#4@@0|)) |l#5@@0|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |666|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@1| Int) (|l#6@@0| T@$1_DiemAccount_KeyRotationCapability) (j@@14 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14) (ite  (and (>= j@@14 |l#0@@3|) (< j@@14 |l#1@@2|)) (ite (< j@@14 |l#2@@1|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@1| j@@14) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@1| (+ j@@14 |l#5@@1|))) |l#6@@0|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |667|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_WithdrawCapability) (i@@56 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56) (ite  (and (>= i@@56 |l#0@@4|) (< i@@56 |l#1@@3|)) (ite (< i@@56 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@2| i@@56) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@2| (- i@@56 |l#5@@2|))) |l#6@@1|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |668|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_WithdrawCapability) (i@@57 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57) (ite  (and (<= |l#0@@5| i@@57) (< i@@57 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@3| (- (- |l#3@@3| i@@57) |l#4@@3|)) |l#5@@3|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |669|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_WithdrawCapability) (j@@15 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15) (ite  (and (>= j@@15 |l#0@@6|) (< j@@15 |l#1@@5|)) (ite (< j@@15 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@4| j@@15) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@4| (+ j@@15 |l#5@@4|))) |l#6@@2|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |670|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemSystem_ValidatorInfo) (i@@58 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58) (ite  (and (>= i@@58 |l#0@@7|) (< i@@58 |l#1@@6|)) (ite (< i@@58 |l#2@@5|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@5| i@@58) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@5| (- i@@58 |l#5@@5|))) |l#6@@3|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |671|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemSystem_ValidatorInfo) (i@@59 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59) (ite  (and (<= |l#0@@8| i@@59) (< i@@59 |l#1@@7|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@6| (- (- |l#3@@6| i@@59) |l#4@@6|)) |l#5@@6|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |672|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemSystem_ValidatorInfo) (j@@16 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16) (ite  (and (>= j@@16 |l#0@@9|) (< j@@16 |l#1@@8|)) (ite (< j@@16 |l#2@@7|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@7| j@@16) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@7| (+ j@@16 |l#5@@7|))) |l#6@@4|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |673|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@8| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@8| Int) (|l#6@@5| T@$1_VASPDomain_VASPDomain) (i@@60 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60) (ite  (and (>= i@@60 |l#0@@10|) (< i@@60 |l#1@@9|)) (ite (< i@@60 |l#2@@8|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@8| i@@60) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@8| (- i@@60 |l#5@@8|))) |l#6@@5|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |674|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_VASPDomain_VASPDomain) (i@@61 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61) (ite  (and (<= |l#0@@11| i@@61) (< i@@61 |l#1@@10|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@9| (- (- |l#3@@9| i@@61) |l#4@@9|)) |l#5@@9|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |675|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@10| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@10| Int) (|l#6@@6| T@$1_VASPDomain_VASPDomain) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17) (ite  (and (>= j@@17 |l#0@@12|) (< j@@17 |l#1@@11|)) (ite (< j@@17 |l#2@@10|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@10| j@@17) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@10| (+ j@@17 |l#5@@10|))) |l#6@@6|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |676|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@11| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@11| Int) (|l#6@@7| T@$1_ValidatorConfig_Config) (i@@62 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62) (ite  (and (>= i@@62 |l#0@@13|) (< i@@62 |l#1@@12|)) (ite (< i@@62 |l#2@@11|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@11| i@@62) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@11| (- i@@62 |l#5@@11|))) |l#6@@7|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |677|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_ValidatorConfig_Config) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63) (ite  (and (<= |l#0@@14| i@@63) (< i@@63 |l#1@@13|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@12| (- (- |l#3@@12| i@@63) |l#4@@12|)) |l#5@@12|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |678|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@13| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@13| Int) (|l#6@@8| T@$1_ValidatorConfig_Config) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18) (ite  (and (>= j@@18 |l#0@@15|) (< j@@18 |l#1@@14|)) (ite (< j@@18 |l#2@@13|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@13| j@@18) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@13| (+ j@@18 |l#5@@13|))) |l#6@@8|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |679|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]Vec_18658|) (|l#4@@14| |T@[Int]Vec_18658|) (|l#5@@14| Int) (|l#6@@9| T@Vec_18658) (i@@64 Int) ) (! (= (|Select__T@[Int]Vec_18658_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64) (ite  (and (>= i@@64 |l#0@@16|) (< i@@64 |l#1@@15|)) (ite (< i@@64 |l#2@@14|) (|Select__T@[Int]Vec_18658_| |l#3@@14| i@@64) (|Select__T@[Int]Vec_18658_| |l#4@@14| (- i@@64 |l#5@@14|))) |l#6@@9|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |680|
 :pattern ( (|Select__T@[Int]Vec_18658_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]Vec_18658|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@Vec_18658) (i@@65 Int) ) (! (= (|Select__T@[Int]Vec_18658_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65) (ite  (and (<= |l#0@@17| i@@65) (< i@@65 |l#1@@16|)) (|Select__T@[Int]Vec_18658_| |l#2@@15| (- (- |l#3@@15| i@@65) |l#4@@15|)) |l#5@@15|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |681|
 :pattern ( (|Select__T@[Int]Vec_18658_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]Vec_18658|) (|l#4@@16| |T@[Int]Vec_18658|) (|l#5@@16| Int) (|l#6@@10| T@Vec_18658) (j@@19 Int) ) (! (= (|Select__T@[Int]Vec_18658_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19) (ite  (and (>= j@@19 |l#0@@18|) (< j@@19 |l#1@@17|)) (ite (< j@@19 |l#2@@16|) (|Select__T@[Int]Vec_18658_| |l#3@@16| j@@19) (|Select__T@[Int]Vec_18658_| |l#4@@16| (+ j@@19 |l#5@@16|))) |l#6@@10|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |682|
 :pattern ( (|Select__T@[Int]Vec_18658_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Int|) (|l#4@@17| |T@[Int]Int|) (|l#5@@17| Int) (|l#6@@11| Int) (i@@66 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66) (ite  (and (>= i@@66 |l#0@@19|) (< i@@66 |l#1@@18|)) (ite (< i@@66 |l#2@@17|) (|Select__T@[Int]Int_| |l#3@@17| i@@66) (|Select__T@[Int]Int_| |l#4@@17| (- i@@66 |l#5@@17|))) |l#6@@11|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |683|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Int|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| Int) (i@@67 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67) (ite  (and (<= |l#0@@20| i@@67) (< i@@67 |l#1@@19|)) (|Select__T@[Int]Int_| |l#2@@18| (- (- |l#3@@18| i@@67) |l#4@@18|)) |l#5@@18|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |684|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Int|) (|l#4@@19| |T@[Int]Int|) (|l#5@@19| Int) (|l#6@@12| Int) (j@@20 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20) (ite  (and (>= j@@20 |l#0@@21|) (< j@@20 |l#1@@20|)) (ite (< j@@20 |l#2@@19|) (|Select__T@[Int]Int_| |l#3@@19| j@@20) (|Select__T@[Int]Int_| |l#4@@19| (+ j@@20 |l#5@@19|))) |l#6@@12|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |685|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20))
)))
(assert (forall ((|l#0@@22| |T@[$EventRep]Int|) (|l#1@@21| |T@[$EventRep]Int|) (v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35) (- (|Select__T@[$EventRep]Int_| |l#0@@22| v@@35) (|Select__T@[$EventRep]Int_| |l#1@@21| v@@35)))
 :qid |AccountLimitsbpl.154:29|
 :skolemid |686|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$1_AccountLimits_Window'#0'_$memory| () T@$Memory_124457)
(declare-fun |$1_AccountLimits_LimitsDefinition'#0'_$memory| () T@$Memory_122943)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'#0'_| (|T@[Int]$1_AccountLimits_Window'#0'| Int) |T@$1_AccountLimits_Window'#0'|)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_112234)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () Int)
(declare-fun $t1@0 () Bool)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_AccountLimits_has_window_published$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 284378) (let ((anon0$1_correct  (=> (and (and (and (forall ((window_addr Int) ) (!  (=> (|$IsValid'address'| window_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124457| |$1_AccountLimits_Window'#0'_$memory|) window_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_122943| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_124457| |$1_AccountLimits_Window'#0'_$memory|) window_addr)))))
 :qid |AccountLimitsbpl.9535:20|
 :skolemid |240|
)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_124457| |$1_AccountLimits_Window'#0'_$memory|) addr) (and (|Select__T@[Int]Bool_| (|domain#$Memory_112234| $1_Roles_RoleId_$memory) addr) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112234| $1_Roles_RoleId_$memory) addr)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_112234| $1_Roles_RoleId_$memory) addr)) 6)))))
 :qid |AccountLimitsbpl.9539:20|
 :skolemid |241|
))) (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_124457| |$1_AccountLimits_Window'#0'_$memory|) $a_0)))
(|$IsValid'$1_AccountLimits_Window'#0''| $rsc))
 :qid |AccountLimitsbpl.9546:20|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_124457| |$1_AccountLimits_Window'#0'_$memory|) $a_0))
)))) (and (and (= _$t0 _$t0) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_124457| |$1_AccountLimits_Window'#0'_$memory|) _$t0))) (and (= $t1@0 $t1@0) (= (ControlFlow 0 225883) (- 0 284554))))) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_124457| |$1_AccountLimits_Window'#0'_$memory|) _$t0)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_82546_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_82546| stream@@0) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_82546| stream@@0) v@@36) 0)
 :qid |AccountLimitsbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountLimitsbpl.2225:13|
 :skolemid |77|
))) (= (ControlFlow 0 225723) 225883)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 284378) 225723) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_104633 0)) ((($Memory_104633 (|domain#$Memory_104633| |T@[Int]Bool|) (|contents#$Memory_104633| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_126830 0)) ((($Memory_126830 (|domain#$Memory_126830| |T@[Int]Bool|) (|contents#$Memory_126830| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_126759 0)) ((($Memory_126759 (|domain#$Memory_126759| |T@[Int]Bool|) (|contents#$Memory_126759| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_112673 0)) ((($Memory_112673 (|domain#$Memory_112673| |T@[Int]Bool|) (|contents#$Memory_112673| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_126516 0)) ((($Memory_126516 (|domain#$Memory_126516| |T@[Int]Bool|) (|contents#$Memory_126516| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_126445 0)) ((($Memory_126445 (|domain#$Memory_126445| |T@[Int]Bool|) (|contents#$Memory_126445| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_149357 0)) ((($Memory_149357 (|domain#$Memory_149357| |T@[Int]Bool|) (|contents#$Memory_149357| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_112640 0)) ((($Memory_112640 (|domain#$Memory_112640| |T@[Int]Bool|) (|contents#$Memory_112640| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_149612 0)) ((($Memory_149612 (|domain#$Memory_149612| |T@[Int]Bool|) (|contents#$Memory_149612| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_149712 0)) ((($Memory_149712 (|domain#$Memory_149712| |T@[Int]Bool|) (|contents#$Memory_149712| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_149138 0)) ((($Memory_149138 (|domain#$Memory_149138| |T@[Int]Bool|) (|contents#$Memory_149138| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_124457 0)) ((($Memory_124457 (|domain#$Memory_124457| |T@[Int]Bool|) (|contents#$Memory_124457| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_125488 0)) ((($Memory_125488 (|domain#$Memory_125488| |T@[Int]Bool|) (|contents#$Memory_125488| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125300 0)) ((($Memory_125300 (|domain#$Memory_125300| |T@[Int]Bool|) (|contents#$Memory_125300| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_122943 0)) ((($Memory_122943 (|domain#$Memory_122943| |T@[Int]Bool|) (|contents#$Memory_122943| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_122869 0)) ((($Memory_122869 (|domain#$Memory_122869| |T@[Int]Bool|) (|contents#$Memory_122869| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_122795 0)) ((($Memory_122795 (|domain#$Memory_122795| |T@[Int]Bool|) (|contents#$Memory_122795| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_126688 0)) ((($Memory_126688 (|domain#$Memory_126688| |T@[Int]Bool|) (|contents#$Memory_126688| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_122005 0)) ((($Memory_122005 (|domain#$Memory_122005| |T@[Int]Bool|) (|contents#$Memory_122005| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118280 0)) ((($Memory_118280 (|domain#$Memory_118280| |T@[Int]Bool|) (|contents#$Memory_118280| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113573 0)) ((($Memory_113573 (|domain#$Memory_113573| |T@[Int]Bool|) (|contents#$Memory_113573| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_122273 0)) ((($Memory_122273 (|domain#$Memory_122273| |T@[Int]Bool|) (|contents#$Memory_122273| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_126147 0)) ((($Memory_126147 (|domain#$Memory_126147| |T@[Int]Bool|) (|contents#$Memory_126147| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113513 0)) ((($Memory_113513 (|domain#$Memory_113513| |T@[Int]Bool|) (|contents#$Memory_113513| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_122182 0)) ((($Memory_122182 (|domain#$Memory_122182| |T@[Int]Bool|) (|contents#$Memory_122182| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_126293 0)) ((($Memory_126293 (|domain#$Memory_126293| |T@[Int]Bool|) (|contents#$Memory_126293| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_117404 0)) ((($Memory_117404 (|domain#$Memory_117404| |T@[Int]Bool|) (|contents#$Memory_117404| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_117659 0)) ((($Memory_117659 (|domain#$Memory_117659| |T@[Int]Bool|) (|contents#$Memory_117659| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_116232 0)) ((($Memory_116232 (|domain#$Memory_116232| |T@[Int]Bool|) (|contents#$Memory_116232| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_116523 0)) ((($Memory_116523 (|domain#$Memory_116523| |T@[Int]Bool|) (|contents#$Memory_116523| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_116118 0)) ((($Memory_116118 (|domain#$Memory_116118| |T@[Int]Bool|) (|contents#$Memory_116118| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_82710 0)) (((Vec_82710 (|v#Vec_82710| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_82710| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_82710) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_82671 0)) (((Vec_82671 (|v#Vec_82671| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_82671| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_82671) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_18658 0)) (((Vec_18658 (|v#Vec_18658| |T@[Int]Int|) (|l#Vec_18658| Int) ) ) ))
(declare-sort |T@[Int]Vec_18658| 0)
(declare-datatypes ((T@Vec_82878 0)) (((Vec_82878 (|v#Vec_82878| |T@[Int]Vec_18658|) (|l#Vec_82878| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_82878) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_116395 0)) ((($Memory_116395 (|domain#$Memory_116395| |T@[Int]Bool|) (|contents#$Memory_116395| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_82878) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_116331 0)) ((($Memory_116331 (|domain#$Memory_116331| |T@[Int]Bool|) (|contents#$Memory_116331| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_18658) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_18658) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_116459 0)) ((($Memory_116459 (|domain#$Memory_116459| |T@[Int]Bool|) (|contents#$Memory_116459| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_18658) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_149038 0)) ((($Memory_149038 (|domain#$Memory_149038| |T@[Int]Bool|) (|contents#$Memory_149038| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_18658) (|$base_url#$1_DualAttestation_Credential| T@Vec_18658) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_18658) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_113398 0)) ((($Memory_113398 (|domain#$Memory_113398| |T@[Int]Bool|) (|contents#$Memory_113398| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_18658) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_83123 0)) (((Vec_83123 (|v#Vec_83123| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_83123| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_83123) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_149223 0)) ((($Memory_149223 (|domain#$Memory_149223| |T@[Int]Bool|) (|contents#$Memory_149223| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_18658) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118054 0)) ((($Memory_118054 (|domain#$Memory_118054| |T@[Int]Bool|) (|contents#$Memory_118054| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_18658) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_117990 0)) ((($Memory_117990 (|domain#$Memory_117990| |T@[Int]Bool|) (|contents#$Memory_117990| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_18658) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_18658) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_18658) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_82632 0)) (((Vec_82632 (|v#Vec_82632| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_82632| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_82632) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_82821 0)) (((Vec_82821 (|v#Vec_82821| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_82821| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_82821) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_116151 0)) ((($Memory_116151 (|domain#$Memory_116151| |T@[Int]Bool|) (|contents#$Memory_116151| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_18658) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_18658) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_112607 0)) ((($Memory_112607 (|domain#$Memory_112607| |T@[Int]Bool|) (|contents#$Memory_112607| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_18658) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_113060 0)) ((($Memory_113060 (|domain#$Memory_113060| |T@[Int]Bool|) (|contents#$Memory_113060| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_112234 0)) ((($Memory_112234 (|domain#$Memory_112234| |T@[Int]Bool|) (|contents#$Memory_112234| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_112009 0)) ((($Memory_112009 (|domain#$Memory_112009| |T@[Int]Bool|) (|contents#$Memory_112009| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_18658) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_18658) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_18658) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_18658) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_18658) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_18658) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_18658) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_18658) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_18658) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_18658) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_18658) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_18658) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_18658) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_82546 0)) (((Multiset_82546 (|v#Multiset_82546| |T@[$EventRep]Int|) (|l#Multiset_82546| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_82546| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_82546|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_177221 0)) ((($Mutation_177221 (|l#$Mutation_177221| T@$Location) (|p#$Mutation_177221| T@Vec_18658) (|v#$Mutation_177221| |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_174050 0)) ((($Mutation_174050 (|l#$Mutation_174050| T@$Location) (|p#$Mutation_174050| T@Vec_18658) (|v#$Mutation_174050| |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_171049 0)) ((($Mutation_171049 (|l#$Mutation_171049| T@$Location) (|p#$Mutation_171049| T@Vec_18658) (|v#$Mutation_171049| |T@$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_133519 0)) ((($Mutation_133519 (|l#$Mutation_133519| T@$Location) (|p#$Mutation_133519| T@Vec_18658) (|v#$Mutation_133519| |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_130340 0)) ((($Mutation_130340 (|l#$Mutation_130340| T@$Location) (|p#$Mutation_130340| T@Vec_18658) (|v#$Mutation_130340| |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_127147 0)) ((($Mutation_127147 (|l#$Mutation_127147| T@$Location) (|p#$Mutation_127147| T@Vec_18658) (|v#$Mutation_127147| |T@$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_105264 0)) ((($Mutation_105264 (|l#$Mutation_105264| T@$Location) (|p#$Mutation_105264| T@Vec_18658) (|v#$Mutation_105264| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10506 0)) ((($Mutation_10506 (|l#$Mutation_10506| T@$Location) (|p#$Mutation_10506| T@Vec_18658) (|v#$Mutation_10506| Int) ) ) ))
(declare-datatypes ((T@$Mutation_99521 0)) ((($Mutation_99521 (|l#$Mutation_99521| T@$Location) (|p#$Mutation_99521| T@Vec_18658) (|v#$Mutation_99521| T@Vec_18658) ) ) ))
(declare-datatypes ((T@$Mutation_98433 0)) ((($Mutation_98433 (|l#$Mutation_98433| T@$Location) (|p#$Mutation_98433| T@Vec_18658) (|v#$Mutation_98433| T@Vec_82878) ) ) ))
(declare-datatypes ((T@$Mutation_96724 0)) ((($Mutation_96724 (|l#$Mutation_96724| T@$Location) (|p#$Mutation_96724| T@Vec_18658) (|v#$Mutation_96724| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_95737 0)) ((($Mutation_95737 (|l#$Mutation_95737| T@$Location) (|p#$Mutation_95737| T@Vec_18658) (|v#$Mutation_95737| T@Vec_82632) ) ) ))
(declare-datatypes ((T@$Mutation_94082 0)) ((($Mutation_94082 (|l#$Mutation_94082| T@$Location) (|p#$Mutation_94082| T@Vec_18658) (|v#$Mutation_94082| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_93095 0)) ((($Mutation_93095 (|l#$Mutation_93095| T@$Location) (|p#$Mutation_93095| T@Vec_18658) (|v#$Mutation_93095| T@Vec_83123) ) ) ))
(declare-datatypes ((T@$Mutation_91417 0)) ((($Mutation_91417 (|l#$Mutation_91417| T@$Location) (|p#$Mutation_91417| T@Vec_18658) (|v#$Mutation_91417| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_90430 0)) ((($Mutation_90430 (|l#$Mutation_90430| T@$Location) (|p#$Mutation_90430| T@Vec_18658) (|v#$Mutation_90430| T@Vec_82821) ) ) ))
(declare-datatypes ((T@$Mutation_88630 0)) ((($Mutation_88630 (|l#$Mutation_88630| T@$Location) (|p#$Mutation_88630| T@Vec_18658) (|v#$Mutation_88630| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_87643 0)) ((($Mutation_87643 (|l#$Mutation_87643| T@$Location) (|p#$Mutation_87643| T@Vec_18658) (|v#$Mutation_87643| T@Vec_82710) ) ) ))
(declare-datatypes ((T@$Mutation_85930 0)) ((($Mutation_85930 (|l#$Mutation_85930| T@$Location) (|p#$Mutation_85930| T@Vec_18658) (|v#$Mutation_85930| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_84943 0)) ((($Mutation_84943 (|l#$Mutation_84943| T@$Location) (|p#$Mutation_84943| T@Vec_18658) (|v#$Mutation_84943| T@Vec_82671) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_82671 T@Vec_82671) Bool)
(declare-fun InRangeVec_72995 (T@Vec_82671 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_82671) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_82671 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_82710 T@Vec_82710) Bool)
(declare-fun InRangeVec_73196 (T@Vec_82710 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_82710) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_82710 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_82821 T@Vec_82821) Bool)
(declare-fun InRangeVec_73397 (T@Vec_82821 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_18658 T@Vec_18658) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_82821) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_82821 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_83123 T@Vec_83123) Bool)
(declare-fun InRangeVec_73598 (T@Vec_83123 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_83123) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_83123 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_82632 T@Vec_82632) Bool)
(declare-fun InRangeVec_73799 (T@Vec_82632 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_82632) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_82632 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_82878 T@Vec_82878) Bool)
(declare-fun InRangeVec_97856 (T@Vec_82878 Int) Bool)
(declare-fun |Select__T@[Int]Vec_18658_| (|T@[Int]Vec_18658| Int) T@Vec_18658)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_82878) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_18658) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_82878 T@Vec_18658) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_18658 T@Vec_18658) Bool)
(declare-fun InRangeVec_9882 (T@Vec_18658 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_18658) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_18658 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_18658 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_18658) T@Vec_18658)
(declare-fun $1_Hash_sha3 (T@Vec_18658) T@Vec_18658)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_18658) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_18658 T@Vec_18658 T@Vec_18658) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_82546_| (|T@[$1_Event_EventHandle]Multiset_82546| T@$1_Event_EventHandle) T@Multiset_82546)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
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
(declare-fun IndexOfVec_18658 (T@Vec_18658 Int) Int)
(declare-fun IndexOfVec_82632 (T@Vec_82632 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_82671 (T@Vec_82671 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_82710 (T@Vec_82710 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_82821 (T@Vec_82821 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_82878 (T@Vec_82878 T@Vec_18658) Int)
(declare-fun IndexOfVec_83123 (T@Vec_83123 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_82546| |T@[$1_Event_EventHandle]Multiset_82546|) |T@[$1_Event_EventHandle]Multiset_82546|)
(declare-fun |lambda#24| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#4| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]Vec_18658| |T@[Int]Vec_18658| Int T@Vec_18658) |T@[Int]Vec_18658|)
(declare-fun |lambda#19| (Int Int |T@[Int]Vec_18658| Int Int T@Vec_18658) |T@[Int]Vec_18658|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]Vec_18658| |T@[Int]Vec_18658| Int T@Vec_18658) |T@[Int]Vec_18658|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#22| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountLimitsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountLimitsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountLimitsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountLimitsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountLimitsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountLimitsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountLimitsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountLimitsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_82671) (v2 T@Vec_82671) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2)  (and (= (|l#Vec_82671| v1) (|l#Vec_82671| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_72995 v1 i@@0) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v1) i@@0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v2) i@@0)))
 :qid |AccountLimitsbpl.615:13|
 :skolemid |17|
))))
 :qid |AccountLimitsbpl.613:62|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_82671) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_82671| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_72995 v@@4 i@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@4) i@@1)))
 :qid |AccountLimitsbpl.621:13|
 :skolemid |19|
))))
 :qid |AccountLimitsbpl.619:62|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_82671) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@2 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_72995 v@@5 i@@3)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@5) i@@3) e))
 :qid |AccountLimitsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_72995 v@@5 i@@2)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@5) j) e)))
 :qid |AccountLimitsbpl.634:17|
 :skolemid |22|
)))))
 :qid |AccountLimitsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_82710) (v2@@0 T@Vec_82710) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_82710| v1@@0) (|l#Vec_82710| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_73196 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v2@@0) i@@4)))
 :qid |AccountLimitsbpl.796:13|
 :skolemid |24|
))))
 :qid |AccountLimitsbpl.794:59|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_82710) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_82710| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_73196 v@@6 i@@5) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@6) i@@5)))
 :qid |AccountLimitsbpl.802:13|
 :skolemid |26|
))))
 :qid |AccountLimitsbpl.800:59|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_82710) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_73196 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@7) i@@7) e@@0))
 :qid |AccountLimitsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_73196 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@7) j@@0) e@@0)))
 :qid |AccountLimitsbpl.815:17|
 :skolemid |29|
)))))
 :qid |AccountLimitsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_82821) (v2@@1 T@Vec_82821) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1)  (and (= (|l#Vec_82821| v1@@1) (|l#Vec_82821| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_73397 v1@@1 i@@8) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v1@@1) i@@8)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v2@@1) i@@8)))))
 :qid |AccountLimitsbpl.977:13|
 :skolemid |31|
))))
 :qid |AccountLimitsbpl.975:53|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_82821) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_82821| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_73397 v@@8 i@@9) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@8) i@@9)))
 :qid |AccountLimitsbpl.983:13|
 :skolemid |33|
))))
 :qid |AccountLimitsbpl.981:53|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_82821) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_73397 v@@9 i@@11)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@11)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1))))
 :qid |AccountLimitsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_73397 v@@9 i@@10)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) i@@10)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@9) j@@1)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))))
 :qid |AccountLimitsbpl.996:17|
 :skolemid |36|
)))))
 :qid |AccountLimitsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_83123) (v2@@2 T@Vec_83123) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@2 v2@@2)  (and (= (|l#Vec_83123| v1@@2) (|l#Vec_83123| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_73598 v1@@2 i@@12) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v1@@2) i@@12)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v2@@2) i@@12))))
 :qid |AccountLimitsbpl.1158:13|
 :skolemid |38|
))))
 :qid |AccountLimitsbpl.1156:50|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_83123) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_83123| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_73598 v@@10 i@@13) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@10) i@@13)))
 :qid |AccountLimitsbpl.1164:13|
 :skolemid |40|
))))
 :qid |AccountLimitsbpl.1162:50|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_83123) (e@@2 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@14 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_73598 v@@11 i@@15)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@11) i@@15)) (|$domain#$1_VASPDomain_VASPDomain| e@@2)))
 :qid |AccountLimitsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_73598 v@@11 i@@14)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@11) i@@14)) (|$domain#$1_VASPDomain_VASPDomain| e@@2))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@11) j@@2)) (|$domain#$1_VASPDomain_VASPDomain| e@@2))))
 :qid |AccountLimitsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |AccountLimitsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_82632) (v2@@3 T@Vec_82632) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@3 v2@@3)  (and (= (|l#Vec_82632| v1@@3) (|l#Vec_82632| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_73799 v1@@3 i@@16) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v1@@3) i@@16)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v1@@3) i@@16)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v2@@3) i@@16)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v1@@3) i@@16)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v2@@3) i@@16)))))
 :qid |AccountLimitsbpl.1339:13|
 :skolemid |45|
))))
 :qid |AccountLimitsbpl.1337:51|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_82632) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_82632| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_73799 v@@12 i@@17) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@12) i@@17)))
 :qid |AccountLimitsbpl.1345:13|
 :skolemid |47|
))))
 :qid |AccountLimitsbpl.1343:51|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_82632) (e@@3 T@$1_ValidatorConfig_Config) ) (! (let ((i@@18 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_73799 v@@13 i@@19)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@19)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@19)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@19)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3))))
 :qid |AccountLimitsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_73799 v@@13 i@@18)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@18)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@18)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) i@@18)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) j@@3)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) j@@3)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@13) j@@3)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3)))))
 :qid |AccountLimitsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |AccountLimitsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_82878) (v2@@4 T@Vec_82878) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@4 v2@@4)  (and (= (|l#Vec_82878| v1@@4) (|l#Vec_82878| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_97856 v1@@4 i@@20) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v1@@4) i@@20) (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v2@@4) i@@20)))
 :qid |AccountLimitsbpl.1520:13|
 :skolemid |52|
))))
 :qid |AccountLimitsbpl.1518:33|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_82878) ) (! (= (|$IsValid'vec'vec'u8'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_82878| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_97856 v@@14 i@@21) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@14) i@@21)))
 :qid |AccountLimitsbpl.1526:13|
 :skolemid |54|
))))
 :qid |AccountLimitsbpl.1524:33|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_82878) (e@@4 T@Vec_18658) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_97856 v@@15 i@@23)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@15) i@@23) e@@4))
 :qid |AccountLimitsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_97856 v@@15 i@@22)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@15) j@@4) e@@4)))
 :qid |AccountLimitsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |AccountLimitsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_18658) (v2@@5 T@Vec_18658) ) (! (= (|$IsEqual'vec'address''| v1@@5 v2@@5)  (and (= (|l#Vec_18658| v1@@5) (|l#Vec_18658| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_9882 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_18658| v2@@5) i@@24)))
 :qid |AccountLimitsbpl.1701:13|
 :skolemid |59|
))))
 :qid |AccountLimitsbpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'address''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_18658) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_18658| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_9882 v@@16 i@@25) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_18658| v@@16) i@@25)))
 :qid |AccountLimitsbpl.1707:13|
 :skolemid |61|
))))
 :qid |AccountLimitsbpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_18658) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_9882 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@17) i@@27) e@@5))
 :qid |AccountLimitsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_9882 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@17) j@@5) e@@5)))
 :qid |AccountLimitsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |AccountLimitsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_18658) (v2@@6 T@Vec_18658) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6)  (and (= (|l#Vec_18658| v1@@6) (|l#Vec_18658| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_9882 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_18658| v2@@6) i@@28)))
 :qid |AccountLimitsbpl.1882:13|
 :skolemid |66|
))))
 :qid |AccountLimitsbpl.1880:28|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'u8''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_18658) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_18658| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_9882 v@@18 i@@29) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_18658| v@@18) i@@29)))
 :qid |AccountLimitsbpl.1888:13|
 :skolemid |68|
))))
 :qid |AccountLimitsbpl.1886:28|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_18658) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_9882 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@19) i@@31) e@@6))
 :qid |AccountLimitsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_9882 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@19) j@@6) e@@6)))
 :qid |AccountLimitsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |AccountLimitsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_18658) (v2@@7 T@Vec_18658) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7)))
 :qid |AccountLimitsbpl.2074:15|
 :skolemid |73|
 :pattern ( ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7))
)))
(assert (forall ((v1@@8 T@Vec_18658) (v2@@8 T@Vec_18658) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8)))
 :qid |AccountLimitsbpl.2090:15|
 :skolemid |74|
 :pattern ( ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8))
)))
(assert (forall ((k1 T@Vec_18658) (k2 T@Vec_18658) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountLimitsbpl.2161:15|
 :skolemid |75|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_18658) (s2 T@Vec_18658) (k1@@0 T@Vec_18658) (k2@@0 T@Vec_18658) (m1 T@Vec_18658) (m2 T@Vec_18658) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountLimitsbpl.2164:15|
 :skolemid |76|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_82546_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_82546| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_82546| stream) v@@20) 0)
 :qid |AccountLimitsbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountLimitsbpl.2225:13|
 :skolemid |77|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountLimitsbpl.2266:80|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@9 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@9 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@9) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@9)))
 :qid |AccountLimitsbpl.2272:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@9) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@9))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountLimitsbpl.2322:82|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@10 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@10 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@10)))
 :qid |AccountLimitsbpl.2328:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@10))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountLimitsbpl.2378:80|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@11 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@11 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@11)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@11))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@11))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@11) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@11)))
 :qid |AccountLimitsbpl.2384:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@11) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@11))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountLimitsbpl.2434:79|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@12 T@$1_DiemAccount_AdminTransactionEvent) (v2@@12 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@12) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@12)))
 :qid |AccountLimitsbpl.2440:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@12) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@12))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountLimitsbpl.2490:76|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@13 T@$1_DiemAccount_CreateAccountEvent) (v2@@13 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@13)))
 :qid |AccountLimitsbpl.2496:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@13))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountLimitsbpl.2546:78|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@14 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@14)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@14)))
 :qid |AccountLimitsbpl.2552:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@14))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountLimitsbpl.2602:74|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_SentPaymentEvent) (v2@@15 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@15))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@15))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@15))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@15)))
 :qid |AccountLimitsbpl.2608:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@15))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountLimitsbpl.2658:69|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@16 T@$1_DiemBlock_NewBlockEvent) (v2@@16 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@16) (|$round#$1_DiemBlock_NewBlockEvent| v2@@16)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@16) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@16))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@16) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@16))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@16) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@16))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@16) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@16)))
 :qid |AccountLimitsbpl.2664:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@16) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@16))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountLimitsbpl.2714:70|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@17 T@$1_DiemConfig_NewEpochEvent) (v2@@17 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@17) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@17)))
 :qid |AccountLimitsbpl.2720:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@17) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@17))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountLimitsbpl.2770:60|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@18 T@$1_Diem_BurnEvent) (v2@@18 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@18) (|$amount#$1_Diem_BurnEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@18) (|$currency_code#$1_Diem_BurnEvent| v2@@18))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@18) (|$preburn_address#$1_Diem_BurnEvent| v2@@18))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@18) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@18)))
 :qid |AccountLimitsbpl.2776:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@18) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@18))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountLimitsbpl.2826:66|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@19 T@$1_Diem_CancelBurnEvent) (v2@@19 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@19) (|$amount#$1_Diem_CancelBurnEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@19) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@19))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@19) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@19))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@19)))
 :qid |AccountLimitsbpl.2832:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@19))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountLimitsbpl.2882:60|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@20 T@$1_Diem_MintEvent) (v2@@20 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@20) (|$amount#$1_Diem_MintEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@20) (|$currency_code#$1_Diem_MintEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@20) (|$ToEventRep'$1_Diem_MintEvent'| v2@@20)))
 :qid |AccountLimitsbpl.2888:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@20) (|$ToEventRep'$1_Diem_MintEvent'| v2@@20))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountLimitsbpl.2938:63|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@21 T@$1_Diem_PreburnEvent) (v2@@21 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@21) (|$amount#$1_Diem_PreburnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@21) (|$currency_code#$1_Diem_PreburnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@21) (|$preburn_address#$1_Diem_PreburnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@21) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@21)))
 :qid |AccountLimitsbpl.2944:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@21) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@21))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountLimitsbpl.2994:79|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@22 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@22 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@22) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@22)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@22) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@22) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@22)))
 :qid |AccountLimitsbpl.3000:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@22) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@22))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountLimitsbpl.3050:82|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@23 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@23 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@23) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@23)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@23) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@23))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@23) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@23)))
 :qid |AccountLimitsbpl.3056:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@23) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@23))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountLimitsbpl.3106:88|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@24 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@24 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@24) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@24)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@24) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@24))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@24)))
 :qid |AccountLimitsbpl.3112:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@24))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountLimitsbpl.3162:72|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@25 T@$1_VASPDomain_VASPDomainEvent) (v2@@25 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@25) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@25)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@25)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@25) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@25))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@25) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@25)))
 :qid |AccountLimitsbpl.3168:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@25) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@25))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountLimitsbpl.3247:61|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountLimitsbpl.3345:36|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountLimitsbpl.3743:71|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountLimitsbpl.3766:46|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountLimitsbpl.3778:64|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountLimitsbpl.3790:75|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountLimitsbpl.3802:72|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountLimitsbpl.3830:55|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountLimitsbpl.3853:46|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountLimitsbpl.3872:49|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountLimitsbpl.3922:71|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountLimitsbpl.3935:91|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountLimitsbpl.3948:113|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |AccountLimitsbpl.3961:75|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |AccountLimitsbpl.3974:73|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |AccountLimitsbpl.3994:48|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |AccountLimitsbpl.4011:83|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |AccountLimitsbpl.4025:48|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |AccountLimitsbpl.4046:45|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |AccountLimitsbpl.4060:51|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |AccountLimitsbpl.4083:48|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |AccountLimitsbpl.4101:49|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |AccountLimitsbpl.4114:65|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |AccountLimitsbpl.4136:45|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |AccountLimitsbpl.4149:45|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@24) true)
 :qid |AccountLimitsbpl.4162:55|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@25)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@25)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@25))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@25))))
 :qid |AccountLimitsbpl.4182:38|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@25))
)))
(assert (forall ((s@@26 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@26)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@26)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@26))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@26))))
 :qid |AccountLimitsbpl.4204:44|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@27)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))))
 :qid |AccountLimitsbpl.4256:53|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@28)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))))
 :qid |AccountLimitsbpl.4329:53|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29) true)
 :qid |AccountLimitsbpl.4366:55|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@30)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@30))))
 :qid |AccountLimitsbpl.4383:38|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@31)))
 :qid |AccountLimitsbpl.4397:48|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@32)))
 :qid |AccountLimitsbpl.4411:48|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@33))))
 :qid |AccountLimitsbpl.4431:41|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@34)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@34)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@34))))
 :qid |AccountLimitsbpl.4450:57|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@35) true)
 :qid |AccountLimitsbpl.4619:68|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@36)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))))
 :qid |AccountLimitsbpl.4641:66|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))))
 :qid |AccountLimitsbpl.4667:66|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@38))))
 :qid |AccountLimitsbpl.4693:58|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@39)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))))
 :qid |AccountLimitsbpl.4722:56|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@40)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))))
 :qid |AccountLimitsbpl.4752:56|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@41)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@41)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@41))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@41))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@41))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@41))))
 :qid |AccountLimitsbpl.4782:48|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@42) true)
 :qid |AccountLimitsbpl.17632:31|
 :skolemid |624|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@42))
)))
(assert (forall ((s@@43 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@43) true)
 :qid |AccountLimitsbpl.17650:31|
 :skolemid |625|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@43))
)))
(assert (forall ((s@@44 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@44)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@44)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@44))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@44))))
 :qid |AccountLimitsbpl.17669:35|
 :skolemid |626|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@44))
)))
(assert (forall ((s@@45 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@45) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@45)))
 :qid |AccountLimitsbpl.17685:45|
 :skolemid |627|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@46)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@46))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@46))))
 :qid |AccountLimitsbpl.17703:50|
 :skolemid |628|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@47) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@47)))
 :qid |AccountLimitsbpl.17719:52|
 :skolemid |629|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@47))
)))
(assert (forall ((s@@48 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@48) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@48)))
 :qid |AccountLimitsbpl.17732:46|
 :skolemid |630|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@48))
)))
(assert (forall ((s@@49 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@49) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@49)))
 :qid |AccountLimitsbpl.17755:38|
 :skolemid |631|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@49))
)))
(assert (forall ((s@@50 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@50) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@50)))
 :qid |AccountLimitsbpl.17769:39|
 :skolemid |632|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@50))
)))
(assert (forall ((s@@51 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@51)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@51))))
 :qid |AccountLimitsbpl.17796:65|
 :skolemid |633|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@52)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@52))))
 :qid |AccountLimitsbpl.17829:60|
 :skolemid |634|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@53)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@53))))
 :qid |AccountLimitsbpl.17846:66|
 :skolemid |635|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@54)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@54)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@54))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@54))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@54))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@54))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@54))))
 :qid |AccountLimitsbpl.17875:50|
 :skolemid |636|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@55) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@55)))
 :qid |AccountLimitsbpl.17898:45|
 :skolemid |637|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@56)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@56)) true))
 :qid |AccountLimitsbpl.17915:87|
 :skolemid |638|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@57)))
 :qid |AccountLimitsbpl.17929:47|
 :skolemid |639|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@58)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@58)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@58))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@58))))
 :qid |AccountLimitsbpl.17948:58|
 :skolemid |640|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@59) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@59)))
 :qid |AccountLimitsbpl.17964:39|
 :skolemid |641|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@59))
)))
(assert (forall ((s@@60 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@60)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@60)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@60))))
 :qid |AccountLimitsbpl.17986:58|
 :skolemid |642|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@61)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@61)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@61))))
 :qid |AccountLimitsbpl.18003:58|
 :skolemid |643|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@62) true)
 :qid |AccountLimitsbpl.18018:51|
 :skolemid |644|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@63)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@63)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@63))))
 :qid |AccountLimitsbpl.18035:60|
 :skolemid |645|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@64)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@64))))
 :qid |AccountLimitsbpl.18069:47|
 :skolemid |646|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@65)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@65))))
 :qid |AccountLimitsbpl.18095:63|
 :skolemid |647|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@66) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@66)))
 :qid |AccountLimitsbpl.18110:57|
 :skolemid |648|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@66))
)))
(assert (forall ((s@@67 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@67) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@67)))
 :qid |AccountLimitsbpl.18123:55|
 :skolemid |649|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@67))
)))
(assert (forall ((s@@68 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@68) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@68)))
 :qid |AccountLimitsbpl.18137:55|
 :skolemid |650|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@69)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@69))))
 :qid |AccountLimitsbpl.18154:54|
 :skolemid |651|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@70)))
 :qid |AccountLimitsbpl.18168:55|
 :skolemid |652|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@71)))
 :qid |AccountLimitsbpl.18181:57|
 :skolemid |653|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@72))))
 :qid |AccountLimitsbpl.18203:56|
 :skolemid |654|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@73)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@73))))
 :qid |AccountLimitsbpl.18230:52|
 :skolemid |655|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@74)))
 :qid |AccountLimitsbpl.18248:54|
 :skolemid |656|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@75)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@75))))
 :qid |AccountLimitsbpl.18269:47|
 :skolemid |657|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@76)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@76)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@76))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@76))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@76))))
 :qid |AccountLimitsbpl.18293:47|
 :skolemid |658|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@77) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@77)))
 :qid |AccountLimitsbpl.18311:49|
 :skolemid |659|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@78)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@78)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@78))))
 :qid |AccountLimitsbpl.18353:49|
 :skolemid |660|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@79)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@79)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@79))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@79))))
 :qid |AccountLimitsbpl.18382:48|
 :skolemid |661|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@80) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@80)))
 :qid |AccountLimitsbpl.18398:47|
 :skolemid |662|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@80))
)))
(assert (forall ((v@@21 T@Vec_82671) (i@@32 Int) ) (! (= (InRangeVec_72995 v@@21 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_82671| v@@21))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_72995 v@@21 i@@32))
)))
(assert (forall ((v@@22 T@Vec_82710) (i@@33 Int) ) (! (= (InRangeVec_73196 v@@22 i@@33)  (and (>= i@@33 0) (< i@@33 (|l#Vec_82710| v@@22))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_73196 v@@22 i@@33))
)))
(assert (forall ((v@@23 T@Vec_82821) (i@@34 Int) ) (! (= (InRangeVec_73397 v@@23 i@@34)  (and (>= i@@34 0) (< i@@34 (|l#Vec_82821| v@@23))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_73397 v@@23 i@@34))
)))
(assert (forall ((v@@24 T@Vec_83123) (i@@35 Int) ) (! (= (InRangeVec_73598 v@@24 i@@35)  (and (>= i@@35 0) (< i@@35 (|l#Vec_83123| v@@24))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_73598 v@@24 i@@35))
)))
(assert (forall ((v@@25 T@Vec_82632) (i@@36 Int) ) (! (= (InRangeVec_73799 v@@25 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_82632| v@@25))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_73799 v@@25 i@@36))
)))
(assert (forall ((v@@26 T@Vec_82878) (i@@37 Int) ) (! (= (InRangeVec_97856 v@@26 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_82878| v@@26))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_97856 v@@26 i@@37))
)))
(assert (forall ((v@@27 T@Vec_18658) (i@@38 Int) ) (! (= (InRangeVec_9882 v@@27 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_18658| v@@27))))
 :qid |AccountLimitsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9882 v@@27 i@@38))
)))
(assert (forall ((v@@28 T@Vec_18658) (e@@7 Int) ) (! (let ((i@@39 (IndexOfVec_18658 v@@28 e@@7)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_9882 v@@28 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@28) i@@40) e@@7))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_9882 v@@28 i@@39) (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@28) i@@39) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@39)) (not (= (|Select__T@[Int]Int_| (|v#Vec_18658| v@@28) j@@7) e@@7)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18658 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_82632) (e@@8 T@$1_ValidatorConfig_Config) ) (! (let ((i@@41 (IndexOfVec_82632 v@@29 e@@8)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_73799 v@@29 i@@42) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@29) i@@42) e@@8))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_73799 v@@29 i@@41) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@29) i@@41) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@41)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_82632| v@@29) j@@8) e@@8)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_82632 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_82671) (e@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@43 (IndexOfVec_82671 v@@30 e@@9)))
(ite  (not (exists ((i@@44 Int) ) (!  (and (InRangeVec_72995 v@@30 i@@44) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@30) i@@44) e@@9))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@43 (- 0 1))  (and (and (InRangeVec_72995 v@@30 i@@43) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@30) i@@43) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@43)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_82671| v@@30) j@@9) e@@9)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_82671 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_82710) (e@@10 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@45 (IndexOfVec_82710 v@@31 e@@10)))
(ite  (not (exists ((i@@46 Int) ) (!  (and (InRangeVec_73196 v@@31 i@@46) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@31) i@@46) e@@10))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@45 (- 0 1))  (and (and (InRangeVec_73196 v@@31 i@@45) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@31) i@@45) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@45)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_82710| v@@31) j@@10) e@@10)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_82710 v@@31 e@@10))
)))
(assert (forall ((v@@32 T@Vec_82821) (e@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@47 (IndexOfVec_82821 v@@32 e@@11)))
(ite  (not (exists ((i@@48 Int) ) (!  (and (InRangeVec_73397 v@@32 i@@48) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@32) i@@48) e@@11))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@47 (- 0 1))  (and (and (InRangeVec_73397 v@@32 i@@47) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@32) i@@47) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@47)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_82821| v@@32) j@@11) e@@11)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_82821 v@@32 e@@11))
)))
(assert (forall ((v@@33 T@Vec_82878) (e@@12 T@Vec_18658) ) (! (let ((i@@49 (IndexOfVec_82878 v@@33 e@@12)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_97856 v@@33 i@@50) (= (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@33) i@@50) e@@12))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_97856 v@@33 i@@49) (= (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@33) i@@49) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@49)) (not (= (|Select__T@[Int]Vec_18658_| (|v#Vec_82878| v@@33) j@@12) e@@12)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_82878 v@@33 e@@12))
)))
(assert (forall ((v@@34 T@Vec_83123) (e@@13 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@51 (IndexOfVec_83123 v@@34 e@@13)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_73598 v@@34 i@@52) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@34) i@@52) e@@13))
 :qid |AccountLimitsbpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_73598 v@@34 i@@51) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@34) i@@51) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@51)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_83123| v@@34) j@@13) e@@13)))
 :qid |AccountLimitsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountLimitsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_83123 v@@34 e@@13))
)))
(assert (forall ((|l#0| Bool) (i@@53 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53) |l#0|)
 :qid |AccountLimitsbpl.275:54|
 :skolemid |663|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_82546|) (|l#1| |T@[$1_Event_EventHandle]Multiset_82546|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_82546_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_82546| (|Select__T@[$1_Event_EventHandle]Multiset_82546_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_82546| (|Select__T@[$1_Event_EventHandle]Multiset_82546_| |l#1| handle@@0))))
(Multiset_82546 (|lambda#24| (|v#Multiset_82546| (|Select__T@[$1_Event_EventHandle]Multiset_82546_| |l#0@@0| handle@@0)) (|v#Multiset_82546| (|Select__T@[$1_Event_EventHandle]Multiset_82546_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountLimitsbpl.2235:13|
 :skolemid |664|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_82546_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5| Int) (|l#6| T@$1_DiemAccount_KeyRotationCapability) (i@@54 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54) (ite  (and (>= i@@54 |l#0@@1|) (< i@@54 |l#1@@0|)) (ite (< i@@54 |l#2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3| i@@54) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4| (- i@@54 |l#5|))) |l#6|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |665|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_DiemAccount_KeyRotationCapability) (i@@55 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55) (ite  (and (<= |l#0@@2| i@@55) (< i@@55 |l#1@@1|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@0| (- (- |l#3@@0| i@@55) |l#4@@0|)) |l#5@@0|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |666|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@1| Int) (|l#6@@0| T@$1_DiemAccount_KeyRotationCapability) (j@@14 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14) (ite  (and (>= j@@14 |l#0@@3|) (< j@@14 |l#1@@2|)) (ite (< j@@14 |l#2@@1|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@1| j@@14) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@1| (+ j@@14 |l#5@@1|))) |l#6@@0|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |667|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_WithdrawCapability) (i@@56 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56) (ite  (and (>= i@@56 |l#0@@4|) (< i@@56 |l#1@@3|)) (ite (< i@@56 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@2| i@@56) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@2| (- i@@56 |l#5@@2|))) |l#6@@1|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |668|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_WithdrawCapability) (i@@57 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57) (ite  (and (<= |l#0@@5| i@@57) (< i@@57 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@3| (- (- |l#3@@3| i@@57) |l#4@@3|)) |l#5@@3|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |669|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_WithdrawCapability) (j@@15 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15) (ite  (and (>= j@@15 |l#0@@6|) (< j@@15 |l#1@@5|)) (ite (< j@@15 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@4| j@@15) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@4| (+ j@@15 |l#5@@4|))) |l#6@@2|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |670|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemSystem_ValidatorInfo) (i@@58 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58) (ite  (and (>= i@@58 |l#0@@7|) (< i@@58 |l#1@@6|)) (ite (< i@@58 |l#2@@5|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@5| i@@58) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@5| (- i@@58 |l#5@@5|))) |l#6@@3|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |671|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemSystem_ValidatorInfo) (i@@59 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59) (ite  (and (<= |l#0@@8| i@@59) (< i@@59 |l#1@@7|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@6| (- (- |l#3@@6| i@@59) |l#4@@6|)) |l#5@@6|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |672|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemSystem_ValidatorInfo) (j@@16 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16) (ite  (and (>= j@@16 |l#0@@9|) (< j@@16 |l#1@@8|)) (ite (< j@@16 |l#2@@7|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@7| j@@16) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@7| (+ j@@16 |l#5@@7|))) |l#6@@4|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |673|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@8| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@8| Int) (|l#6@@5| T@$1_VASPDomain_VASPDomain) (i@@60 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60) (ite  (and (>= i@@60 |l#0@@10|) (< i@@60 |l#1@@9|)) (ite (< i@@60 |l#2@@8|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@8| i@@60) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@8| (- i@@60 |l#5@@8|))) |l#6@@5|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |674|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_VASPDomain_VASPDomain) (i@@61 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61) (ite  (and (<= |l#0@@11| i@@61) (< i@@61 |l#1@@10|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@9| (- (- |l#3@@9| i@@61) |l#4@@9|)) |l#5@@9|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |675|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@10| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@10| Int) (|l#6@@6| T@$1_VASPDomain_VASPDomain) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17) (ite  (and (>= j@@17 |l#0@@12|) (< j@@17 |l#1@@11|)) (ite (< j@@17 |l#2@@10|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@10| j@@17) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@10| (+ j@@17 |l#5@@10|))) |l#6@@6|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |676|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@11| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@11| Int) (|l#6@@7| T@$1_ValidatorConfig_Config) (i@@62 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62) (ite  (and (>= i@@62 |l#0@@13|) (< i@@62 |l#1@@12|)) (ite (< i@@62 |l#2@@11|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@11| i@@62) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@11| (- i@@62 |l#5@@11|))) |l#6@@7|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |677|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_ValidatorConfig_Config) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63) (ite  (and (<= |l#0@@14| i@@63) (< i@@63 |l#1@@13|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@12| (- (- |l#3@@12| i@@63) |l#4@@12|)) |l#5@@12|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |678|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@13| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@13| Int) (|l#6@@8| T@$1_ValidatorConfig_Config) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18) (ite  (and (>= j@@18 |l#0@@15|) (< j@@18 |l#1@@14|)) (ite (< j@@18 |l#2@@13|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@13| j@@18) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@13| (+ j@@18 |l#5@@13|))) |l#6@@8|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |679|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]Vec_18658|) (|l#4@@14| |T@[Int]Vec_18658|) (|l#5@@14| Int) (|l#6@@9| T@Vec_18658) (i@@64 Int) ) (! (= (|Select__T@[Int]Vec_18658_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64) (ite  (and (>= i@@64 |l#0@@16|) (< i@@64 |l#1@@15|)) (ite (< i@@64 |l#2@@14|) (|Select__T@[Int]Vec_18658_| |l#3@@14| i@@64) (|Select__T@[Int]Vec_18658_| |l#4@@14| (- i@@64 |l#5@@14|))) |l#6@@9|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |680|
 :pattern ( (|Select__T@[Int]Vec_18658_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]Vec_18658|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@Vec_18658) (i@@65 Int) ) (! (= (|Select__T@[Int]Vec_18658_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65) (ite  (and (<= |l#0@@17| i@@65) (< i@@65 |l#1@@16|)) (|Select__T@[Int]Vec_18658_| |l#2@@15| (- (- |l#3@@15| i@@65) |l#4@@15|)) |l#5@@15|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |681|
 :pattern ( (|Select__T@[Int]Vec_18658_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]Vec_18658|) (|l#4@@16| |T@[Int]Vec_18658|) (|l#5@@16| Int) (|l#6@@10| T@Vec_18658) (j@@19 Int) ) (! (= (|Select__T@[Int]Vec_18658_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19) (ite  (and (>= j@@19 |l#0@@18|) (< j@@19 |l#1@@17|)) (ite (< j@@19 |l#2@@16|) (|Select__T@[Int]Vec_18658_| |l#3@@16| j@@19) (|Select__T@[Int]Vec_18658_| |l#4@@16| (+ j@@19 |l#5@@16|))) |l#6@@10|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |682|
 :pattern ( (|Select__T@[Int]Vec_18658_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Int|) (|l#4@@17| |T@[Int]Int|) (|l#5@@17| Int) (|l#6@@11| Int) (i@@66 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66) (ite  (and (>= i@@66 |l#0@@19|) (< i@@66 |l#1@@18|)) (ite (< i@@66 |l#2@@17|) (|Select__T@[Int]Int_| |l#3@@17| i@@66) (|Select__T@[Int]Int_| |l#4@@17| (- i@@66 |l#5@@17|))) |l#6@@11|))
 :qid |AccountLimitsbpl.73:19|
 :skolemid |683|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Int|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| Int) (i@@67 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67) (ite  (and (<= |l#0@@20| i@@67) (< i@@67 |l#1@@19|)) (|Select__T@[Int]Int_| |l#2@@18| (- (- |l#3@@18| i@@67) |l#4@@18|)) |l#5@@18|))
 :qid |AccountLimitsbpl.82:30|
 :skolemid |684|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Int|) (|l#4@@19| |T@[Int]Int|) (|l#5@@19| Int) (|l#6@@12| Int) (j@@20 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20) (ite  (and (>= j@@20 |l#0@@21|) (< j@@20 |l#1@@20|)) (ite (< j@@20 |l#2@@19|) (|Select__T@[Int]Int_| |l#3@@19| j@@20) (|Select__T@[Int]Int_| |l#4@@19| (+ j@@20 |l#5@@19|))) |l#6@@12|))
 :qid |AccountLimitsbpl.63:20|
 :skolemid |685|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20))
)))
(assert (forall ((|l#0@@22| |T@[$EventRep]Int|) (|l#1@@21| |T@[$EventRep]Int|) (v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35) (- (|Select__T@[$EventRep]Int_| |l#0@@22| v@@35) (|Select__T@[$EventRep]Int_| |l#1@@21| v@@35)))
 :qid |AccountLimitsbpl.154:29|
 :skolemid |686|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35))
)))
; Valid

