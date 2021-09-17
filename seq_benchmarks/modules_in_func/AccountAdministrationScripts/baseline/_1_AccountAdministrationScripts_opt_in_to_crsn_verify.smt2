(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_106347 0)) ((($Memory_106347 (|domain#$Memory_106347| |T@[Int]Bool|) (|contents#$Memory_106347| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_75895 0)) (((Vec_75895 (|v#Vec_75895| |T@[Int]#0|) (|l#Vec_75895| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_170508 0)) ((($Memory_170508 (|domain#$Memory_170508| |T@[Int]Bool|) (|contents#$Memory_170508| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_140502 0)) ((($Memory_140502 (|domain#$Memory_140502| |T@[Int]Bool|) (|contents#$Memory_140502| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_138386 0)) ((($Memory_138386 (|domain#$Memory_138386| |T@[Int]Bool|) (|contents#$Memory_138386| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_138731 0)) ((($Memory_138731 (|domain#$Memory_138731| |T@[Int]Bool|) (|contents#$Memory_138731| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@Vec_34773 0)) (((Vec_34773 (|v#Vec_34773| |T@[Int]Bool|) (|l#Vec_34773| Int) ) ) ))
(declare-datatypes ((T@$1_BitVector_BitVector 0)) ((($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| Int) (|$bit_field#$1_BitVector_BitVector| T@Vec_34773) ) ) ))
(declare-datatypes ((T@$1_CRSN_CRSN 0)) ((($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| Int) (|$size#$1_CRSN_CRSN| Int) (|$slots#$1_CRSN_CRSN| T@$1_BitVector_BitVector) ) ) ))
(declare-sort |T@[Int]$1_CRSN_CRSN| 0)
(declare-datatypes ((T@$Memory_136197 0)) ((($Memory_136197 (|domain#$Memory_136197| |T@[Int]Bool|) (|contents#$Memory_136197| |T@[Int]$1_CRSN_CRSN|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_131819 0)) ((($Memory_131819 (|domain#$Memory_131819| |T@[Int]Bool|) (|contents#$Memory_131819| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_131599 0)) ((($Memory_131599 (|domain#$Memory_131599| |T@[Int]Bool|) (|contents#$Memory_131599| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_128625 0)) ((($Memory_128625 (|domain#$Memory_128625| |T@[Int]Bool|) (|contents#$Memory_128625| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_128026 0)) ((($Memory_128026 (|domain#$Memory_128026| |T@[Int]Bool|) (|contents#$Memory_128026| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_127962 0)) ((($Memory_127962 (|domain#$Memory_127962| |T@[Int]Bool|) (|contents#$Memory_127962| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_127358 0)) ((($Memory_127358 (|domain#$Memory_127358| |T@[Int]Bool|) (|contents#$Memory_127358| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_92023 0)) (((Vec_92023 (|v#Vec_92023| |T@[Int]$1_XDX_XDX|) (|l#Vec_92023| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_94703 0)) (((Vec_94703 (|v#Vec_94703| |T@[Int]$1_XUS_XUS|) (|l#Vec_94703| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_126706 0)) ((($Memory_126706 (|domain#$Memory_126706| |T@[Int]Bool|) (|contents#$Memory_126706| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_126487 0)) ((($Memory_126487 (|domain#$Memory_126487| |T@[Int]Bool|) (|contents#$Memory_126487| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_140007 0)) ((($Memory_140007 (|domain#$Memory_140007| |T@[Int]Bool|) (|contents#$Memory_140007| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_119525 0)) ((($Memory_119525 (|domain#$Memory_119525| |T@[Int]Bool|) (|contents#$Memory_119525| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_119461 0)) ((($Memory_119461 (|domain#$Memory_119461| |T@[Int]Bool|) (|contents#$Memory_119461| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_119397 0)) ((($Memory_119397 (|domain#$Memory_119397| |T@[Int]Bool|) (|contents#$Memory_119397| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_119805 0)) ((($Memory_119805 (|domain#$Memory_119805| |T@[Int]Bool|) (|contents#$Memory_119805| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_140324 0)) ((($Memory_140324 (|domain#$Memory_140324| |T@[Int]Bool|) (|contents#$Memory_140324| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_125662 0)) ((($Memory_125662 (|domain#$Memory_125662| |T@[Int]Bool|) (|contents#$Memory_125662| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_140233 0)) ((($Memory_140233 (|domain#$Memory_140233| |T@[Int]Bool|) (|contents#$Memory_140233| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_125571 0)) ((($Memory_125571 (|domain#$Memory_125571| |T@[Int]Bool|) (|contents#$Memory_125571| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_126782 0)) ((($Memory_126782 (|domain#$Memory_126782| |T@[Int]Bool|) (|contents#$Memory_126782| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_140142 0)) ((($Memory_140142 (|domain#$Memory_140142| |T@[Int]Bool|) (|contents#$Memory_140142| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125480 0)) ((($Memory_125480 (|domain#$Memory_125480| |T@[Int]Bool|) (|contents#$Memory_125480| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_128382 0)) ((($Memory_128382 (|domain#$Memory_128382| |T@[Int]Bool|) (|contents#$Memory_128382| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_118409 0)) ((($Memory_118409 (|domain#$Memory_118409| |T@[Int]Bool|) (|contents#$Memory_118409| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_118664 0)) ((($Memory_118664 (|domain#$Memory_118664| |T@[Int]Bool|) (|contents#$Memory_118664| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_117237 0)) ((($Memory_117237 (|domain#$Memory_117237| |T@[Int]Bool|) (|contents#$Memory_117237| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_117528 0)) ((($Memory_117528 (|domain#$Memory_117528| |T@[Int]Bool|) (|contents#$Memory_117528| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_116706 0)) ((($Memory_116706 (|domain#$Memory_116706| |T@[Int]Bool|) (|contents#$Memory_116706| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_74190 0)) (((Vec_74190 (|v#Vec_74190| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_74190| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_74190) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_74151 0)) (((Vec_74151 (|v#Vec_74151| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_74151| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_74151) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_147611 0)) ((($Memory_147611 (|domain#$Memory_147611| |T@[Int]Bool|) (|contents#$Memory_147611| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_74151) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_22899 0)) (((Vec_22899 (|v#Vec_22899| |T@[Int]Int|) (|l#Vec_22899| Int) ) ) ))
(declare-sort |T@[Int]Vec_22899| 0)
(declare-datatypes ((T@Vec_74358 0)) (((Vec_74358 (|v#Vec_74358| |T@[Int]Vec_22899|) (|l#Vec_74358| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_74358) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_117400 0)) ((($Memory_117400 (|domain#$Memory_117400| |T@[Int]Bool|) (|contents#$Memory_117400| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_74358) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_117336 0)) ((($Memory_117336 (|domain#$Memory_117336| |T@[Int]Bool|) (|contents#$Memory_117336| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22899) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22899) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_117464 0)) ((($Memory_117464 (|domain#$Memory_117464| |T@[Int]Bool|) (|contents#$Memory_117464| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey 0)) ((($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@Vec_22899) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-sort |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| 0)
(declare-datatypes ((T@$Memory_145758 0)) ((($Memory_145758 (|domain#$Memory_145758| |T@[Int]Bool|) (|contents#$Memory_145758| |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_22899) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_138898 0)) ((($Memory_138898 (|domain#$Memory_138898| |T@[Int]Bool|) (|contents#$Memory_138898| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_22899) (|$base_url#$1_DualAttestation_Credential| T@Vec_22899) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_22899) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_128561 0)) ((($Memory_128561 (|domain#$Memory_128561| |T@[Int]Bool|) (|contents#$Memory_128561| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_22899) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_74621 0)) (((Vec_74621 (|v#Vec_74621| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_74621| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_74621) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_127047 0)) ((($Memory_127047 (|domain#$Memory_127047| |T@[Int]Bool|) (|contents#$Memory_127047| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_22899) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_119233 0)) ((($Memory_119233 (|domain#$Memory_119233| |T@[Int]Bool|) (|contents#$Memory_119233| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_22899) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_119114 0)) ((($Memory_119114 (|domain#$Memory_119114| |T@[Int]Bool|) (|contents#$Memory_119114| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_22899) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_118995 0)) ((($Memory_118995 (|domain#$Memory_118995| |T@[Int]Bool|) (|contents#$Memory_118995| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_22899) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_22899) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_22899) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_74112 0)) (((Vec_74112 (|v#Vec_74112| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_74112| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_74112) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_74301 0)) (((Vec_74301 (|v#Vec_74301| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_74301| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_74301) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_117156 0)) ((($Memory_117156 (|domain#$Memory_117156| |T@[Int]Bool|) (|contents#$Memory_117156| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_22899) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_22899) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_116094 0)) ((($Memory_116094 (|domain#$Memory_116094| |T@[Int]Bool|) (|contents#$Memory_116094| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_22899) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_115131 0)) ((($Memory_115131 (|domain#$Memory_115131| |T@[Int]Bool|) (|contents#$Memory_115131| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_113898 0)) ((($Memory_113898 (|domain#$Memory_113898| |T@[Int]Bool|) (|contents#$Memory_113898| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_113710 0)) ((($Memory_113710 (|domain#$Memory_113710| |T@[Int]Bool|) (|contents#$Memory_113710| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_22899) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_22899) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_22899) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_22899) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_22899) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_22899) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_22899) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_22899) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_22899) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_22899) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22899) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22899) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_22899) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_74026 0)) (((Multiset_74026 (|v#Multiset_74026| |T@[$EventRep]Int|) (|l#Multiset_74026| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_74026| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_74026|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_149579 0)) ((($Mutation_149579 (|l#$Mutation_149579| T@$Location) (|p#$Mutation_149579| T@Vec_22899) (|v#$Mutation_149579| T@$1_RecoveryAddress_RecoveryAddress) ) ) ))
(declare-datatypes ((T@$Mutation_145969 0)) ((($Mutation_145969 (|l#$Mutation_145969| T@$Location) (|p#$Mutation_145969| T@Vec_22899) (|v#$Mutation_145969| T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) ) ))
(declare-datatypes ((T@$Mutation_143161 0)) ((($Mutation_143161 (|l#$Mutation_143161| T@$Location) (|p#$Mutation_143161| T@Vec_22899) (|v#$Mutation_143161| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_143116 0)) ((($Mutation_143116 (|l#$Mutation_143116| T@$Location) (|p#$Mutation_143116| T@Vec_22899) (|v#$Mutation_143116| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_136774 0)) ((($Mutation_136774 (|l#$Mutation_136774| T@$Location) (|p#$Mutation_136774| T@Vec_22899) (|v#$Mutation_136774| T@$1_CRSN_CRSN) ) ) ))
(declare-datatypes ((T@$Mutation_131978 0)) ((($Mutation_131978 (|l#$Mutation_131978| T@$Location) (|p#$Mutation_131978| T@Vec_22899) (|v#$Mutation_131978| T@$1_BitVector_BitVector) ) ) ))
(declare-datatypes ((T@$Mutation_129472 0)) ((($Mutation_129472 (|l#$Mutation_129472| T@$Location) (|p#$Mutation_129472| T@Vec_22899) (|v#$Mutation_129472| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_106978 0)) ((($Mutation_106978 (|l#$Mutation_106978| T@$Location) (|p#$Mutation_106978| T@Vec_22899) (|v#$Mutation_106978| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_15038 0)) ((($Mutation_15038 (|l#$Mutation_15038| T@$Location) (|p#$Mutation_15038| T@Vec_22899) (|v#$Mutation_15038| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13929 0)) ((($Mutation_13929 (|l#$Mutation_13929| T@$Location) (|p#$Mutation_13929| T@Vec_22899) (|v#$Mutation_13929| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_100840 0)) ((($Mutation_100840 (|l#$Mutation_100840| T@$Location) (|p#$Mutation_100840| T@Vec_22899) (|v#$Mutation_100840| T@Vec_34773) ) ) ))
(declare-datatypes ((T@$Mutation_99130 0)) ((($Mutation_99130 (|l#$Mutation_99130| T@$Location) (|p#$Mutation_99130| T@Vec_22899) (|v#$Mutation_99130| T@Vec_22899) ) ) ))
(declare-datatypes ((T@$Mutation_98042 0)) ((($Mutation_98042 (|l#$Mutation_98042| T@$Location) (|p#$Mutation_98042| T@Vec_22899) (|v#$Mutation_98042| T@Vec_74358) ) ) ))
(declare-datatypes ((T@$Mutation_96333 0)) ((($Mutation_96333 (|l#$Mutation_96333| T@$Location) (|p#$Mutation_96333| T@Vec_22899) (|v#$Mutation_96333| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_95346 0)) ((($Mutation_95346 (|l#$Mutation_95346| T@$Location) (|p#$Mutation_95346| T@Vec_22899) (|v#$Mutation_95346| T@Vec_94703) ) ) ))
(declare-datatypes ((T@$Mutation_93653 0)) ((($Mutation_93653 (|l#$Mutation_93653| T@$Location) (|p#$Mutation_93653| T@Vec_22899) (|v#$Mutation_93653| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_92666 0)) ((($Mutation_92666 (|l#$Mutation_92666| T@$Location) (|p#$Mutation_92666| T@Vec_22899) (|v#$Mutation_92666| T@Vec_92023) ) ) ))
(declare-datatypes ((T@$Mutation_90973 0)) ((($Mutation_90973 (|l#$Mutation_90973| T@$Location) (|p#$Mutation_90973| T@Vec_22899) (|v#$Mutation_90973| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_89986 0)) ((($Mutation_89986 (|l#$Mutation_89986| T@$Location) (|p#$Mutation_89986| T@Vec_22899) (|v#$Mutation_89986| T@Vec_74112) ) ) ))
(declare-datatypes ((T@$Mutation_88331 0)) ((($Mutation_88331 (|l#$Mutation_88331| T@$Location) (|p#$Mutation_88331| T@Vec_22899) (|v#$Mutation_88331| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_87344 0)) ((($Mutation_87344 (|l#$Mutation_87344| T@$Location) (|p#$Mutation_87344| T@Vec_22899) (|v#$Mutation_87344| T@Vec_74621) ) ) ))
(declare-datatypes ((T@$Mutation_85666 0)) ((($Mutation_85666 (|l#$Mutation_85666| T@$Location) (|p#$Mutation_85666| T@Vec_22899) (|v#$Mutation_85666| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_84679 0)) ((($Mutation_84679 (|l#$Mutation_84679| T@$Location) (|p#$Mutation_84679| T@Vec_22899) (|v#$Mutation_84679| T@Vec_74301) ) ) ))
(declare-datatypes ((T@$Mutation_82879 0)) ((($Mutation_82879 (|l#$Mutation_82879| T@$Location) (|p#$Mutation_82879| T@Vec_22899) (|v#$Mutation_82879| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_81892 0)) ((($Mutation_81892 (|l#$Mutation_81892| T@$Location) (|p#$Mutation_81892| T@Vec_22899) (|v#$Mutation_81892| T@Vec_74190) ) ) ))
(declare-datatypes ((T@$Mutation_80227 0)) ((($Mutation_80227 (|l#$Mutation_80227| T@$Location) (|p#$Mutation_80227| T@Vec_22899) (|v#$Mutation_80227| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_79240 0)) ((($Mutation_79240 (|l#$Mutation_79240| T@$Location) (|p#$Mutation_79240| T@Vec_22899) (|v#$Mutation_79240| T@Vec_74151) ) ) ))
(declare-datatypes ((T@$Mutation_77527 0)) ((($Mutation_77527 (|l#$Mutation_77527| T@$Location) (|p#$Mutation_77527| T@Vec_22899) (|v#$Mutation_77527| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_76540 0)) ((($Mutation_76540 (|l#$Mutation_76540| T@$Location) (|p#$Mutation_76540| T@Vec_22899) (|v#$Mutation_76540| T@Vec_75895) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_75895 T@Vec_75895) Bool)
(declare-fun InRangeVec_65480 (T@Vec_75895 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_75895) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_75895 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_74151 T@Vec_74151) Bool)
(declare-fun InRangeVec_65681 (T@Vec_74151 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_74151) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_74151 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_74190 T@Vec_74190) Bool)
(declare-fun InRangeVec_65882 (T@Vec_74190 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_74190) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_74190 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_74301 T@Vec_74301) Bool)
(declare-fun InRangeVec_66083 (T@Vec_74301 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_22899 T@Vec_22899) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_74301) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_74301 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_74621 T@Vec_74621) Bool)
(declare-fun InRangeVec_66284 (T@Vec_74621 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_74621) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_74621 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_74112 T@Vec_74112) Bool)
(declare-fun InRangeVec_66485 (T@Vec_74112 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_74112) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_74112 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_92023 T@Vec_92023) Bool)
(declare-fun InRangeVec_66686 (T@Vec_92023 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_92023) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_92023 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_94703 T@Vec_94703) Bool)
(declare-fun InRangeVec_66887 (T@Vec_94703 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_94703) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_94703 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_74358 T@Vec_74358) Bool)
(declare-fun InRangeVec_97465 (T@Vec_74358 Int) Bool)
(declare-fun |Select__T@[Int]Vec_22899_| (|T@[Int]Vec_22899| Int) T@Vec_22899)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_74358) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_22899) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_74358 T@Vec_22899) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_34773 T@Vec_34773) Bool)
(declare-fun InRangeVec_13305 (T@Vec_34773 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_34773) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_34773 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_22899 T@Vec_22899) Bool)
(declare-fun InRangeVec_14414 (T@Vec_22899 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_22899) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_22899 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_22899 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_22899) T@Vec_22899)
(declare-fun $1_Hash_sha3 (T@Vec_22899) T@Vec_22899)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_22899) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_22899 T@Vec_22899 T@Vec_22899) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_74026_| (|T@[$1_Event_EventHandle]Multiset_74026| T@$1_Event_EventHandle) T@Multiset_74026)
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
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'#0''| (|T@$1_Diem_Diem'#0'|) Bool)
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
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
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
(declare-fun |$IsValid'$1_BitVector_BitVector'| (T@$1_BitVector_BitVector) Bool)
(declare-fun |$IsValid'$1_CRSN_CRSN'| (T@$1_CRSN_CRSN) Bool)
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
(declare-fun $1_Authenticator_spec_ed25519_authentication_key (T@Vec_22899) T@Vec_22899)
(declare-fun |$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| (T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) Bool)
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun IndexOfVec_22899 (T@Vec_22899 Int) Int)
(declare-fun IndexOfVec_74112 (T@Vec_74112 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_74151 (T@Vec_74151 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_74190 (T@Vec_74190 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_74301 (T@Vec_74301 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_74358 (T@Vec_74358 T@Vec_22899) Int)
(declare-fun IndexOfVec_74621 (T@Vec_74621 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_34773 (T@Vec_34773 Bool) Int)
(declare-fun IndexOfVec_75895 (T@Vec_75895 |T@#0|) Int)
(declare-fun IndexOfVec_92023 (T@Vec_92023 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_94703 (T@Vec_94703 T@$1_XUS_XUS) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_74026| |T@[$1_Event_EventHandle]Multiset_74026|) |T@[$1_Event_EventHandle]Multiset_74026|)
(declare-fun |lambda#36| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_XDX_XDX| Int Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#25| (Int Int |T@[Int]$1_XUS_XUS| Int Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Vec_22899| |T@[Int]Vec_22899| Int T@Vec_22899) |T@[Int]Vec_22899|)
(declare-fun |lambda#28| (Int Int |T@[Int]Vec_22899| Int Int T@Vec_22899) |T@[Int]Vec_22899|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Vec_22899| |T@[Int]Vec_22899| Int T@Vec_22899) |T@[Int]Vec_22899|)
(declare-fun |lambda#30| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#31| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#32| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#33| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#34| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#35| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountAdministrationScriptsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountAdministrationScriptsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountAdministrationScriptsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountAdministrationScriptsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountAdministrationScriptsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountAdministrationScriptsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountAdministrationScriptsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountAdministrationScriptsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_75895) (v2 T@Vec_75895) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_75895| v1) (|l#Vec_75895| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_65480 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_75895| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_75895| v2) i@@0)))
 :qid |AccountAdministrationScriptsbpl.615:13|
 :skolemid |17|
))))
 :qid |AccountAdministrationScriptsbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_75895) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_75895| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_65480 v@@4 i@@1) true)
 :qid |AccountAdministrationScriptsbpl.621:13|
 :skolemid |19|
))))
 :qid |AccountAdministrationScriptsbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_75895) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_65480 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@5) i@@3) e))
 :qid |AccountAdministrationScriptsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_65480 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@5) j) e)))
 :qid |AccountAdministrationScriptsbpl.634:17|
 :skolemid |22|
)))))
 :qid |AccountAdministrationScriptsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_74151) (v2@@0 T@Vec_74151) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_74151| v1@@0) (|l#Vec_74151| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_65681 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v2@@0) i@@4)))
 :qid |AccountAdministrationScriptsbpl.796:13|
 :skolemid |24|
))))
 :qid |AccountAdministrationScriptsbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_74151) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_74151| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_65681 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@6) i@@5)))
 :qid |AccountAdministrationScriptsbpl.802:13|
 :skolemid |26|
))))
 :qid |AccountAdministrationScriptsbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_74151) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_65681 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@7) i@@7) e@@0))
 :qid |AccountAdministrationScriptsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_65681 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@7) j@@0) e@@0)))
 :qid |AccountAdministrationScriptsbpl.815:17|
 :skolemid |29|
)))))
 :qid |AccountAdministrationScriptsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_74190) (v2@@1 T@Vec_74190) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_74190| v1@@1) (|l#Vec_74190| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_65882 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v2@@1) i@@8)))
 :qid |AccountAdministrationScriptsbpl.977:13|
 :skolemid |31|
))))
 :qid |AccountAdministrationScriptsbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_74190) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_74190| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_65882 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@8) i@@9)))
 :qid |AccountAdministrationScriptsbpl.983:13|
 :skolemid |33|
))))
 :qid |AccountAdministrationScriptsbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_74190) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_65882 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@9) i@@11) e@@1))
 :qid |AccountAdministrationScriptsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_65882 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@9) j@@1) e@@1)))
 :qid |AccountAdministrationScriptsbpl.996:17|
 :skolemid |36|
)))))
 :qid |AccountAdministrationScriptsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_74301) (v2@@2 T@Vec_74301) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_74301| v1@@2) (|l#Vec_74301| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_66083 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12)))))
 :qid |AccountAdministrationScriptsbpl.1158:13|
 :skolemid |38|
))))
 :qid |AccountAdministrationScriptsbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_74301) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_74301| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_66083 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@10) i@@13)))
 :qid |AccountAdministrationScriptsbpl.1164:13|
 :skolemid |40|
))))
 :qid |AccountAdministrationScriptsbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_74301) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_66083 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |AccountAdministrationScriptsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_66083 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |AccountAdministrationScriptsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |AccountAdministrationScriptsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_74621) (v2@@3 T@Vec_74621) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_74621| v1@@3) (|l#Vec_74621| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_66284 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v2@@3) i@@16))))
 :qid |AccountAdministrationScriptsbpl.1339:13|
 :skolemid |45|
))))
 :qid |AccountAdministrationScriptsbpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_74621) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_74621| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_66284 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@12) i@@17)))
 :qid |AccountAdministrationScriptsbpl.1345:13|
 :skolemid |47|
))))
 :qid |AccountAdministrationScriptsbpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_74621) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_66284 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |AccountAdministrationScriptsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_66284 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |AccountAdministrationScriptsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |AccountAdministrationScriptsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_74112) (v2@@4 T@Vec_74112) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_74112| v1@@4) (|l#Vec_74112| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_66485 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v2@@4) i@@20)))))
 :qid |AccountAdministrationScriptsbpl.1520:13|
 :skolemid |52|
))))
 :qid |AccountAdministrationScriptsbpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_74112) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_74112| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_66485 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@14) i@@21)))
 :qid |AccountAdministrationScriptsbpl.1526:13|
 :skolemid |54|
))))
 :qid |AccountAdministrationScriptsbpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_74112) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_66485 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |AccountAdministrationScriptsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_66485 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |AccountAdministrationScriptsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |AccountAdministrationScriptsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_92023) (v2@@5 T@Vec_92023) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@5 v2@@5)  (and (= (|l#Vec_92023| v1@@5) (|l#Vec_92023| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_66686 v1@@5 i@@24) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v1@@5) i@@24) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v2@@5) i@@24)))
 :qid |AccountAdministrationScriptsbpl.1701:13|
 :skolemid |59|
))))
 :qid |AccountAdministrationScriptsbpl.1699:36|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_92023) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_92023| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_66686 v@@16 i@@25) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@16) i@@25)))
 :qid |AccountAdministrationScriptsbpl.1707:13|
 :skolemid |61|
))))
 :qid |AccountAdministrationScriptsbpl.1705:36|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_92023) (e@@5 T@$1_XDX_XDX) ) (! (let ((i@@26 (|$IndexOfVec'$1_XDX_XDX'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_66686 v@@17 i@@27)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@17) i@@27) e@@5))
 :qid |AccountAdministrationScriptsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_66686 v@@17 i@@26)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@17) j@@5) e@@5)))
 :qid |AccountAdministrationScriptsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |AccountAdministrationScriptsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_94703) (v2@@6 T@Vec_94703) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@6 v2@@6)  (and (= (|l#Vec_94703| v1@@6) (|l#Vec_94703| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_66887 v1@@6 i@@28) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v1@@6) i@@28) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v2@@6) i@@28)))
 :qid |AccountAdministrationScriptsbpl.1882:13|
 :skolemid |66|
))))
 :qid |AccountAdministrationScriptsbpl.1880:36|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_94703) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_94703| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_66887 v@@18 i@@29) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@18) i@@29)))
 :qid |AccountAdministrationScriptsbpl.1888:13|
 :skolemid |68|
))))
 :qid |AccountAdministrationScriptsbpl.1886:36|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_94703) (e@@6 T@$1_XUS_XUS) ) (! (let ((i@@30 (|$IndexOfVec'$1_XUS_XUS'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_66887 v@@19 i@@31)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@19) i@@31) e@@6))
 :qid |AccountAdministrationScriptsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_66887 v@@19 i@@30)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@19) j@@6) e@@6)))
 :qid |AccountAdministrationScriptsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |AccountAdministrationScriptsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_74358) (v2@@7 T@Vec_74358) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@7 v2@@7)  (and (= (|l#Vec_74358| v1@@7) (|l#Vec_74358| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_97465 v1@@7 i@@32) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v1@@7) i@@32) (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v2@@7) i@@32)))
 :qid |AccountAdministrationScriptsbpl.2063:13|
 :skolemid |73|
))))
 :qid |AccountAdministrationScriptsbpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_74358) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_74358| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_97465 v@@20 i@@33) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@20) i@@33)))
 :qid |AccountAdministrationScriptsbpl.2069:13|
 :skolemid |75|
))))
 :qid |AccountAdministrationScriptsbpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_74358) (e@@7 T@Vec_22899) ) (! (let ((i@@34 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_97465 v@@21 i@@35)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@21) i@@35) e@@7))
 :qid |AccountAdministrationScriptsbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_97465 v@@21 i@@34)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@21) j@@7) e@@7)))
 :qid |AccountAdministrationScriptsbpl.2082:17|
 :skolemid |78|
)))))
 :qid |AccountAdministrationScriptsbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_34773) (v2@@8 T@Vec_34773) ) (! (= (|$IsEqual'vec'bool''| v1@@8 v2@@8)  (and (= (|l#Vec_34773| v1@@8) (|l#Vec_34773| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_13305 v1@@8 i@@36) (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v1@@8) i@@36) (|Select__T@[Int]Bool_| (|v#Vec_34773| v2@@8) i@@36)))
 :qid |AccountAdministrationScriptsbpl.2244:13|
 :skolemid |80|
))))
 :qid |AccountAdministrationScriptsbpl.2242:30|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'bool''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_34773) ) (! (= (|$IsValid'vec'bool''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_34773| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_13305 v@@22 i@@37) true)
 :qid |AccountAdministrationScriptsbpl.2250:13|
 :skolemid |82|
))))
 :qid |AccountAdministrationScriptsbpl.2248:30|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'bool''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_34773) (e@@8 Bool) ) (! (let ((i@@38 (|$IndexOfVec'bool'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_13305 v@@23 i@@39)) (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@23) i@@39) e@@8))
 :qid |AccountAdministrationScriptsbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_13305 v@@23 i@@38)) (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@23) j@@8) e@@8)))
 :qid |AccountAdministrationScriptsbpl.2263:17|
 :skolemid |85|
)))))
 :qid |AccountAdministrationScriptsbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'bool'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_22899) (v2@@9 T@Vec_22899) ) (! (= (|$IsEqual'vec'address''| v1@@9 v2@@9)  (and (= (|l#Vec_22899| v1@@9) (|l#Vec_22899| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_14414 v1@@9 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v1@@9) i@@40) (|Select__T@[Int]Int_| (|v#Vec_22899| v2@@9) i@@40)))
 :qid |AccountAdministrationScriptsbpl.2425:13|
 :skolemid |87|
))))
 :qid |AccountAdministrationScriptsbpl.2423:33|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'address''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_22899) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_22899| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_14414 v@@24 i@@41) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_22899| v@@24) i@@41)))
 :qid |AccountAdministrationScriptsbpl.2431:13|
 :skolemid |89|
))))
 :qid |AccountAdministrationScriptsbpl.2429:33|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_22899) (e@@9 Int) ) (! (let ((i@@42 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_14414 v@@25 i@@43)) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@25) i@@43) e@@9))
 :qid |AccountAdministrationScriptsbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_14414 v@@25 i@@42)) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@25) j@@9) e@@9)))
 :qid |AccountAdministrationScriptsbpl.2444:17|
 :skolemid |92|
)))))
 :qid |AccountAdministrationScriptsbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_22899) (v2@@10 T@Vec_22899) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10)  (and (= (|l#Vec_22899| v1@@10) (|l#Vec_22899| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_14414 v1@@10 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v1@@10) i@@44) (|Select__T@[Int]Int_| (|v#Vec_22899| v2@@10) i@@44)))
 :qid |AccountAdministrationScriptsbpl.2606:13|
 :skolemid |94|
))))
 :qid |AccountAdministrationScriptsbpl.2604:28|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'u8''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_22899) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_22899| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_14414 v@@26 i@@45) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_22899| v@@26) i@@45)))
 :qid |AccountAdministrationScriptsbpl.2612:13|
 :skolemid |96|
))))
 :qid |AccountAdministrationScriptsbpl.2610:28|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_22899) (e@@10 Int) ) (! (let ((i@@46 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_14414 v@@27 i@@47)) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@27) i@@47) e@@10))
 :qid |AccountAdministrationScriptsbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_14414 v@@27 i@@46)) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@27) j@@10) e@@10)))
 :qid |AccountAdministrationScriptsbpl.2625:17|
 :skolemid |99|
)))))
 :qid |AccountAdministrationScriptsbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_22899) (v2@@11 T@Vec_22899) ) (! (= (|$IsEqual'vec'u8''| v1@@11 v2@@11) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11)))
 :qid |AccountAdministrationScriptsbpl.2798:15|
 :skolemid |101|
 :pattern ( ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11))
)))
(assert (forall ((v1@@12 T@Vec_22899) (v2@@12 T@Vec_22899) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12)))
 :qid |AccountAdministrationScriptsbpl.2814:15|
 :skolemid |102|
 :pattern ( ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12))
)))
(assert (forall ((k1 T@Vec_22899) (k2 T@Vec_22899) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountAdministrationScriptsbpl.2885:15|
 :skolemid |103|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_22899) (s2 T@Vec_22899) (k1@@0 T@Vec_22899) (k2@@0 T@Vec_22899) (m1 T@Vec_22899) (m2 T@Vec_22899) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountAdministrationScriptsbpl.2888:15|
 :skolemid |104|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_74026_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_74026| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_74026| stream) v@@28) 0)
 :qid |AccountAdministrationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountAdministrationScriptsbpl.2949:13|
 :skolemid |105|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountAdministrationScriptsbpl.2990:80|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@13 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@13 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13)))
 :qid |AccountAdministrationScriptsbpl.2996:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountAdministrationScriptsbpl.3046:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14)))
 :qid |AccountAdministrationScriptsbpl.3052:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountAdministrationScriptsbpl.3102:80|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@15 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@15 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@15)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15)))
 :qid |AccountAdministrationScriptsbpl.3108:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountAdministrationScriptsbpl.3158:79|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_AdminTransactionEvent) (v2@@16 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16)))
 :qid |AccountAdministrationScriptsbpl.3164:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountAdministrationScriptsbpl.3214:76|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_CreateAccountEvent) (v2@@17 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17)))
 :qid |AccountAdministrationScriptsbpl.3220:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountAdministrationScriptsbpl.3270:78|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@18 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18)))
 :qid |AccountAdministrationScriptsbpl.3276:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountAdministrationScriptsbpl.3326:74|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_SentPaymentEvent) (v2@@19 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@19))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19)))
 :qid |AccountAdministrationScriptsbpl.3332:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountAdministrationScriptsbpl.3382:69|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@20 T@$1_DiemBlock_NewBlockEvent) (v2@@20 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@20) (|$round#$1_DiemBlock_NewBlockEvent| v2@@20)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@20) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@20))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@20) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@20) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20)))
 :qid |AccountAdministrationScriptsbpl.3388:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountAdministrationScriptsbpl.3438:70|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@21 T@$1_DiemConfig_NewEpochEvent) (v2@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21)))
 :qid |AccountAdministrationScriptsbpl.3444:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountAdministrationScriptsbpl.3494:60|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@22 T@$1_Diem_BurnEvent) (v2@@22 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@22) (|$amount#$1_Diem_BurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@22) (|$currency_code#$1_Diem_BurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@22) (|$preburn_address#$1_Diem_BurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22)))
 :qid |AccountAdministrationScriptsbpl.3500:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountAdministrationScriptsbpl.3550:66|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@23 T@$1_Diem_CancelBurnEvent) (v2@@23 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@23) (|$amount#$1_Diem_CancelBurnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@23) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@23) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23)))
 :qid |AccountAdministrationScriptsbpl.3556:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountAdministrationScriptsbpl.3606:60|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@24 T@$1_Diem_MintEvent) (v2@@24 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@24) (|$amount#$1_Diem_MintEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@24) (|$currency_code#$1_Diem_MintEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24)))
 :qid |AccountAdministrationScriptsbpl.3612:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountAdministrationScriptsbpl.3662:63|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@25 T@$1_Diem_PreburnEvent) (v2@@25 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@25) (|$amount#$1_Diem_PreburnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@25) (|$currency_code#$1_Diem_PreburnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@25) (|$preburn_address#$1_Diem_PreburnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25)))
 :qid |AccountAdministrationScriptsbpl.3668:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountAdministrationScriptsbpl.3718:79|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26)))
 :qid |AccountAdministrationScriptsbpl.3724:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountAdministrationScriptsbpl.3774:82|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@27 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27)))
 :qid |AccountAdministrationScriptsbpl.3780:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountAdministrationScriptsbpl.3830:88|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28)))
 :qid |AccountAdministrationScriptsbpl.3836:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountAdministrationScriptsbpl.3886:72|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@29 T@$1_VASPDomain_VASPDomainEvent) (v2@@29 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@29)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@29)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@29))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29)))
 :qid |AccountAdministrationScriptsbpl.3892:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountAdministrationScriptsbpl.3971:61|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountAdministrationScriptsbpl.4060:36|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountAdministrationScriptsbpl.4513:71|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountAdministrationScriptsbpl.4654:46|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountAdministrationScriptsbpl.4666:64|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountAdministrationScriptsbpl.4678:75|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountAdministrationScriptsbpl.4690:72|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountAdministrationScriptsbpl.4718:55|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountAdministrationScriptsbpl.4741:46|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |AccountAdministrationScriptsbpl.4753:15|
 :skolemid |150|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountAdministrationScriptsbpl.4766:49|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountAdministrationScriptsbpl.4954:71|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountAdministrationScriptsbpl.4967:91|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountAdministrationScriptsbpl.4980:113|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |AccountAdministrationScriptsbpl.4993:75|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |AccountAdministrationScriptsbpl.5006:73|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |AccountAdministrationScriptsbpl.5026:48|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |AccountAdministrationScriptsbpl.5043:83|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |AccountAdministrationScriptsbpl.5057:48|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |AccountAdministrationScriptsbpl.5078:45|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |AccountAdministrationScriptsbpl.5092:51|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |AccountAdministrationScriptsbpl.5115:48|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |AccountAdministrationScriptsbpl.5133:49|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |AccountAdministrationScriptsbpl.5146:65|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |AccountAdministrationScriptsbpl.5218:45|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |AccountAdministrationScriptsbpl.5231:45|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@24) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@24)))
 :qid |AccountAdministrationScriptsbpl.5244:37|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@25) true)
 :qid |AccountAdministrationScriptsbpl.5257:55|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@25))
)))
(assert (forall ((s@@26 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@26)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@26)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@26))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@26))))
 :qid |AccountAdministrationScriptsbpl.5277:38|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@27)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@27))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@27))))
 :qid |AccountAdministrationScriptsbpl.5299:44|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@28)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))))
 :qid |AccountAdministrationScriptsbpl.5351:53|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@29)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))))
 :qid |AccountAdministrationScriptsbpl.5424:53|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@30)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@30)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@30))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@30))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@30))))
 :qid |AccountAdministrationScriptsbpl.5497:45|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@31) true)
 :qid |AccountAdministrationScriptsbpl.5534:55|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@32) true)
 :qid |AccountAdministrationScriptsbpl.5548:55|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@33) true)
 :qid |AccountAdministrationScriptsbpl.5562:47|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@34)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@34))))
 :qid |AccountAdministrationScriptsbpl.5579:38|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@35) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@35)))
 :qid |AccountAdministrationScriptsbpl.5593:48|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@36) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@36)))
 :qid |AccountAdministrationScriptsbpl.5607:48|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@37) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@37)))
 :qid |AccountAdministrationScriptsbpl.5621:40|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@38)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@38))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@38))))
 :qid |AccountAdministrationScriptsbpl.5641:41|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@39)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@39)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@39))))
 :qid |AccountAdministrationScriptsbpl.5660:57|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@39))
)))
(assert (forall ((s@@40 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@40) true)
 :qid |AccountAdministrationScriptsbpl.5875:68|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@41)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))))
 :qid |AccountAdministrationScriptsbpl.5897:66|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@42)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))))
 :qid |AccountAdministrationScriptsbpl.5923:66|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@43) true)
 :qid |AccountAdministrationScriptsbpl.5940:31|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@43))
)))
(assert (forall ((s@@44 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@44) true)
 :qid |AccountAdministrationScriptsbpl.5958:31|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@44))
)))
(assert (forall ((s@@45 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@45)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@45)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@45))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@45))))
 :qid |AccountAdministrationScriptsbpl.5977:35|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@46) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@46)))
 :qid |AccountAdministrationScriptsbpl.5998:45|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@46))
)))
(assert (forall ((s@@47 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@47)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@47))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@47))))
 :qid |AccountAdministrationScriptsbpl.6016:50|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@48) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@48)))
 :qid |AccountAdministrationScriptsbpl.6032:52|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@48))
)))
(assert (forall ((s@@49 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@49) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@49)))
 :qid |AccountAdministrationScriptsbpl.6045:46|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@49))
)))
(assert (forall ((s@@50 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@50) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@50)))
 :qid |AccountAdministrationScriptsbpl.6256:38|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@50))
)))
(assert (forall ((s@@51 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@51) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@51)))
 :qid |AccountAdministrationScriptsbpl.6270:39|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@51))
)))
(assert (forall ((s@@52 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52))))
 :qid |AccountAdministrationScriptsbpl.6297:65|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@53)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@53))))
 :qid |AccountAdministrationScriptsbpl.6325:60|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54))))
 :qid |AccountAdministrationScriptsbpl.6342:66|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@55)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@55)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@55))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@55))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@55))))
 :qid |AccountAdministrationScriptsbpl.6371:50|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@56) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@56)))
 :qid |AccountAdministrationScriptsbpl.6394:45|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@57)) true))
 :qid |AccountAdministrationScriptsbpl.6933:87|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |AccountAdministrationScriptsbpl.6947:47|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |AccountAdministrationScriptsbpl.6966:58|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |AccountAdministrationScriptsbpl.6982:39|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_BitVector_BitVector) ) (! (= (|$IsValid'$1_BitVector_BitVector'| s@@61)  (and (|$IsValid'u64'| (|$length#$1_BitVector_BitVector| s@@61)) (|$IsValid'vec'bool''| (|$bit_field#$1_BitVector_BitVector| s@@61))))
 :qid |AccountAdministrationScriptsbpl.6999:43|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_BitVector_BitVector'| s@@61))
)))
(assert (forall ((s@@62 T@$1_CRSN_CRSN) ) (! (= (|$IsValid'$1_CRSN_CRSN'| s@@62)  (and (and (|$IsValid'u64'| (|$min_nonce#$1_CRSN_CRSN| s@@62)) (|$IsValid'u64'| (|$size#$1_CRSN_CRSN| s@@62))) (|$IsValid'$1_BitVector_BitVector'| (|$slots#$1_CRSN_CRSN| s@@62))))
 :qid |AccountAdministrationScriptsbpl.8571:33|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_CRSN_CRSN'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@63)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@63)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@63))))
 :qid |AccountAdministrationScriptsbpl.9272:58|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@64)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@64)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@64))))
 :qid |AccountAdministrationScriptsbpl.9289:58|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@65) true)
 :qid |AccountAdministrationScriptsbpl.9304:51|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@66)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@66)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@66))))
 :qid |AccountAdministrationScriptsbpl.9321:60|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@67)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@67)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@67))))
 :qid |AccountAdministrationScriptsbpl.9420:47|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@68)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@68)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@68))))
 :qid |AccountAdministrationScriptsbpl.9446:63|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@69) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@69)))
 :qid |AccountAdministrationScriptsbpl.9461:57|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@69))
)))
(assert (forall ((s@@70 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@70) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@70)))
 :qid |AccountAdministrationScriptsbpl.9474:55|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@70))
)))
(assert (forall ((s@@71 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@71) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@71)))
 :qid |AccountAdministrationScriptsbpl.9488:55|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@71))
)))
(assert (forall ((s@@72 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@72) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@72)))
 :qid |AccountAdministrationScriptsbpl.9502:47|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@73)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@73)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@73))))
 :qid |AccountAdministrationScriptsbpl.9519:54|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@74) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@74)))
 :qid |AccountAdministrationScriptsbpl.9533:55|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@75) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@75)))
 :qid |AccountAdministrationScriptsbpl.9546:57|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@76)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@76)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@76))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@76))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@76))))
 :qid |AccountAdministrationScriptsbpl.9568:56|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@77)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@77)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@77))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@77))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@77))))
 :qid |AccountAdministrationScriptsbpl.9595:52|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@78) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@78)))
 :qid |AccountAdministrationScriptsbpl.9613:54|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@78))
)))
(assert (forall ((public_key T@Vec_22899) ) (! (let (($$res@@0 ($1_Authenticator_spec_ed25519_authentication_key public_key)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |AccountAdministrationScriptsbpl.11400:15|
 :skolemid |222|
)))
(assert (forall ((s@@79 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) (! (= (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@79)  (and (|$IsValid'vec'u8''| (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@79)) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@79))))
 :qid |AccountAdministrationScriptsbpl.11418:69|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@79))
)))
(assert (forall ((s@@80 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@80) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@80)))
 :qid |AccountAdministrationScriptsbpl.11963:55|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@81)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@81))))
 :qid |AccountAdministrationScriptsbpl.16317:47|
 :skolemid |491|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@82)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@82))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@82))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@82))))
 :qid |AccountAdministrationScriptsbpl.16341:47|
 :skolemid |492|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@83) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@83)))
 :qid |AccountAdministrationScriptsbpl.16359:49|
 :skolemid |493|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@84)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@84)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@84))))
 :qid |AccountAdministrationScriptsbpl.16401:49|
 :skolemid |494|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@85)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@85)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@85))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@85))))
 :qid |AccountAdministrationScriptsbpl.16430:48|
 :skolemid |495|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@86) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@86)))
 :qid |AccountAdministrationScriptsbpl.16446:47|
 :skolemid |496|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@86))
)))
(assert (forall ((v@@29 T@Vec_75895) (i@@48 Int) ) (! (= (InRangeVec_65480 v@@29 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_75895| v@@29))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_65480 v@@29 i@@48))
)))
(assert (forall ((v@@30 T@Vec_74151) (i@@49 Int) ) (! (= (InRangeVec_65681 v@@30 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_74151| v@@30))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_65681 v@@30 i@@49))
)))
(assert (forall ((v@@31 T@Vec_74190) (i@@50 Int) ) (! (= (InRangeVec_65882 v@@31 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_74190| v@@31))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_65882 v@@31 i@@50))
)))
(assert (forall ((v@@32 T@Vec_74301) (i@@51 Int) ) (! (= (InRangeVec_66083 v@@32 i@@51)  (and (>= i@@51 0) (< i@@51 (|l#Vec_74301| v@@32))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66083 v@@32 i@@51))
)))
(assert (forall ((v@@33 T@Vec_74621) (i@@52 Int) ) (! (= (InRangeVec_66284 v@@33 i@@52)  (and (>= i@@52 0) (< i@@52 (|l#Vec_74621| v@@33))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66284 v@@33 i@@52))
)))
(assert (forall ((v@@34 T@Vec_74112) (i@@53 Int) ) (! (= (InRangeVec_66485 v@@34 i@@53)  (and (>= i@@53 0) (< i@@53 (|l#Vec_74112| v@@34))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66485 v@@34 i@@53))
)))
(assert (forall ((v@@35 T@Vec_92023) (i@@54 Int) ) (! (= (InRangeVec_66686 v@@35 i@@54)  (and (>= i@@54 0) (< i@@54 (|l#Vec_92023| v@@35))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66686 v@@35 i@@54))
)))
(assert (forall ((v@@36 T@Vec_94703) (i@@55 Int) ) (! (= (InRangeVec_66887 v@@36 i@@55)  (and (>= i@@55 0) (< i@@55 (|l#Vec_94703| v@@36))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66887 v@@36 i@@55))
)))
(assert (forall ((v@@37 T@Vec_74358) (i@@56 Int) ) (! (= (InRangeVec_97465 v@@37 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_74358| v@@37))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_97465 v@@37 i@@56))
)))
(assert (forall ((v@@38 T@Vec_34773) (i@@57 Int) ) (! (= (InRangeVec_13305 v@@38 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_34773| v@@38))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_13305 v@@38 i@@57))
)))
(assert (forall ((v@@39 T@Vec_22899) (i@@58 Int) ) (! (= (InRangeVec_14414 v@@39 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_22899| v@@39))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14414 v@@39 i@@58))
)))
(assert (forall ((v@@40 T@Vec_22899) (e@@11 Int) ) (! (let ((i@@59 (IndexOfVec_22899 v@@40 e@@11)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_14414 v@@40 i@@60) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@40) i@@60) e@@11))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_14414 v@@40 i@@59) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@40) i@@59) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@59)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@40) j@@11) e@@11)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22899 v@@40 e@@11))
)))
(assert (forall ((v@@41 T@Vec_74112) (e@@12 T@$1_ValidatorConfig_Config) ) (! (let ((i@@61 (IndexOfVec_74112 v@@41 e@@12)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_66485 v@@41 i@@62) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@41) i@@62) e@@12))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_66485 v@@41 i@@61) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@41) i@@61) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@61)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@41) j@@12) e@@12)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74112 v@@41 e@@12))
)))
(assert (forall ((v@@42 T@Vec_74151) (e@@13 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@63 (IndexOfVec_74151 v@@42 e@@13)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_65681 v@@42 i@@64) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@42) i@@64) e@@13))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_65681 v@@42 i@@63) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@42) i@@63) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@63)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@42) j@@13) e@@13)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74151 v@@42 e@@13))
)))
(assert (forall ((v@@43 T@Vec_74190) (e@@14 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@65 (IndexOfVec_74190 v@@43 e@@14)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_65882 v@@43 i@@66) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@43) i@@66) e@@14))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_65882 v@@43 i@@65) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@43) i@@65) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@65)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@43) j@@14) e@@14)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74190 v@@43 e@@14))
)))
(assert (forall ((v@@44 T@Vec_74301) (e@@15 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@67 (IndexOfVec_74301 v@@44 e@@15)))
(ite  (not (exists ((i@@68 Int) ) (!  (and (InRangeVec_66083 v@@44 i@@68) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@44) i@@68) e@@15))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@67 (- 0 1))  (and (and (InRangeVec_66083 v@@44 i@@67) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@44) i@@67) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@67)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@44) j@@15) e@@15)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74301 v@@44 e@@15))
)))
(assert (forall ((v@@45 T@Vec_74358) (e@@16 T@Vec_22899) ) (! (let ((i@@69 (IndexOfVec_74358 v@@45 e@@16)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_97465 v@@45 i@@70) (= (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@45) i@@70) e@@16))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_97465 v@@45 i@@69) (= (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@45) i@@69) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@69)) (not (= (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@45) j@@16) e@@16)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74358 v@@45 e@@16))
)))
(assert (forall ((v@@46 T@Vec_74621) (e@@17 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@71 (IndexOfVec_74621 v@@46 e@@17)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_66284 v@@46 i@@72) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@46) i@@72) e@@17))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_66284 v@@46 i@@71) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@46) i@@71) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@71)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@46) j@@17) e@@17)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74621 v@@46 e@@17))
)))
(assert (forall ((v@@47 T@Vec_34773) (e@@18 Bool) ) (! (let ((i@@73 (IndexOfVec_34773 v@@47 e@@18)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_13305 v@@47 i@@74) (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@47) i@@74) e@@18))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_13305 v@@47 i@@73) (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@47) i@@73) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@73)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@47) j@@18) e@@18)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34773 v@@47 e@@18))
)))
(assert (forall ((v@@48 T@Vec_75895) (e@@19 |T@#0|) ) (! (let ((i@@75 (IndexOfVec_75895 v@@48 e@@19)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_65480 v@@48 i@@76) (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@48) i@@76) e@@19))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_65480 v@@48 i@@75) (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@48) i@@75) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@75)) (not (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@48) j@@19) e@@19)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_75895 v@@48 e@@19))
)))
(assert (forall ((v@@49 T@Vec_92023) (e@@20 T@$1_XDX_XDX) ) (! (let ((i@@77 (IndexOfVec_92023 v@@49 e@@20)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_66686 v@@49 i@@78) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@49) i@@78) e@@20))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_66686 v@@49 i@@77) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@49) i@@77) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@77)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@49) j@@20) e@@20)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_92023 v@@49 e@@20))
)))
(assert (forall ((v@@50 T@Vec_94703) (e@@21 T@$1_XUS_XUS) ) (! (let ((i@@79 (IndexOfVec_94703 v@@50 e@@21)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_66887 v@@50 i@@80) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@50) i@@80) e@@21))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_66887 v@@50 i@@79) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@50) i@@79) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@79)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@50) j@@21) e@@21)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_94703 v@@50 e@@21))
)))
(assert (forall ((|l#0| Bool) (i@@81 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81) |l#0|)
 :qid |AccountAdministrationScriptsbpl.275:54|
 :skolemid |497|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_74026|) (|l#1| |T@[$1_Event_EventHandle]Multiset_74026|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_74026_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_74026| (|Select__T@[$1_Event_EventHandle]Multiset_74026_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_74026| (|Select__T@[$1_Event_EventHandle]Multiset_74026_| |l#1| handle@@0))))
(Multiset_74026 (|lambda#36| (|v#Multiset_74026| (|Select__T@[$1_Event_EventHandle]Multiset_74026_| |l#0@@0| handle@@0)) (|v#Multiset_74026| (|Select__T@[$1_Event_EventHandle]Multiset_74026_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountAdministrationScriptsbpl.2959:13|
 :skolemid |498|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_74026_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@82 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82) (ite  (and (>= i@@82 |l#0@@1|) (< i@@82 |l#1@@0|)) (ite (< i@@82 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@82) (|Select__T@[Int]#0_| |l#4| (- i@@82 |l#5|))) |l#6|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |499|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@83 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83) (ite  (and (<= |l#0@@2| i@@83) (< i@@83 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@83) |l#4@@0|)) |l#5@@0|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |500|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@22 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22) (ite  (and (>= j@@22 |l#0@@3|) (< j@@22 |l#1@@2|)) (ite (< j@@22 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@22) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@22 |l#5@@1|))) |l#6@@0|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |501|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@84 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84) (ite  (and (>= i@@84 |l#0@@4|) (< i@@84 |l#1@@3|)) (ite (< i@@84 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@84) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@84 |l#5@@2|))) |l#6@@1|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |502|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@85 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85) (ite  (and (<= |l#0@@5| i@@85) (< i@@85 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@85) |l#4@@3|)) |l#5@@3|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |503|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23) (ite  (and (>= j@@23 |l#0@@6|) (< j@@23 |l#1@@5|)) (ite (< j@@23 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@23) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@23 |l#5@@4|))) |l#6@@2|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |504|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@86 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86) (ite  (and (>= i@@86 |l#0@@7|) (< i@@86 |l#1@@6|)) (ite (< i@@86 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@86) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@86 |l#5@@5|))) |l#6@@3|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |505|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@87 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87) (ite  (and (<= |l#0@@8| i@@87) (< i@@87 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@87) |l#4@@6|)) |l#5@@6|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |506|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24) (ite  (and (>= j@@24 |l#0@@9|) (< j@@24 |l#1@@8|)) (ite (< j@@24 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@24) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@24 |l#5@@7|))) |l#6@@4|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |507|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@88 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88) (ite  (and (>= i@@88 |l#0@@10|) (< i@@88 |l#1@@9|)) (ite (< i@@88 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@88) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@88 |l#5@@8|))) |l#6@@5|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |508|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@89 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89) (ite  (and (<= |l#0@@11| i@@89) (< i@@89 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@89) |l#4@@9|)) |l#5@@9|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |509|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@25 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25) (ite  (and (>= j@@25 |l#0@@12|) (< j@@25 |l#1@@11|)) (ite (< j@@25 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@25) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@25 |l#5@@10|))) |l#6@@6|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |510|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@90 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90) (ite  (and (>= i@@90 |l#0@@13|) (< i@@90 |l#1@@12|)) (ite (< i@@90 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@90) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@90 |l#5@@11|))) |l#6@@7|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |511|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@91 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91) (ite  (and (<= |l#0@@14| i@@91) (< i@@91 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@91) |l#4@@12|)) |l#5@@12|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |512|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@26 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26) (ite  (and (>= j@@26 |l#0@@15|) (< j@@26 |l#1@@14|)) (ite (< j@@26 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@26) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@26 |l#5@@13|))) |l#6@@8|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |513|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@92 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92) (ite  (and (>= i@@92 |l#0@@16|) (< i@@92 |l#1@@15|)) (ite (< i@@92 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@92) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@92 |l#5@@14|))) |l#6@@9|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |514|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@93 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93) (ite  (and (<= |l#0@@17| i@@93) (< i@@93 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@93) |l#4@@15|)) |l#5@@15|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |515|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27) (ite  (and (>= j@@27 |l#0@@18|) (< j@@27 |l#1@@17|)) (ite (< j@@27 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@27) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@27 |l#5@@16|))) |l#6@@10|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |516|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_XDX_XDX|) (|l#4@@17| |T@[Int]$1_XDX_XDX|) (|l#5@@17| Int) (|l#6@@11| T@$1_XDX_XDX) (i@@94 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94) (ite  (and (>= i@@94 |l#0@@19|) (< i@@94 |l#1@@18|)) (ite (< i@@94 |l#2@@17|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@17| i@@94) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@17| (- i@@94 |l#5@@17|))) |l#6@@11|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |517|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_XDX_XDX|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_XDX_XDX) (i@@95 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95) (ite  (and (<= |l#0@@20| i@@95) (< i@@95 |l#1@@19|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@18| (- (- |l#3@@18| i@@95) |l#4@@18|)) |l#5@@18|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |518|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_XDX_XDX|) (|l#4@@19| |T@[Int]$1_XDX_XDX|) (|l#5@@19| Int) (|l#6@@12| T@$1_XDX_XDX) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28) (ite  (and (>= j@@28 |l#0@@21|) (< j@@28 |l#1@@20|)) (ite (< j@@28 |l#2@@19|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@19| j@@28) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@19| (+ j@@28 |l#5@@19|))) |l#6@@12|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |519|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_XUS_XUS|) (|l#4@@20| |T@[Int]$1_XUS_XUS|) (|l#5@@20| Int) (|l#6@@13| T@$1_XUS_XUS) (i@@96 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96) (ite  (and (>= i@@96 |l#0@@22|) (< i@@96 |l#1@@21|)) (ite (< i@@96 |l#2@@20|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@20| i@@96) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@20| (- i@@96 |l#5@@20|))) |l#6@@13|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |520|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_XUS_XUS|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_XUS_XUS) (i@@97 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97) (ite  (and (<= |l#0@@23| i@@97) (< i@@97 |l#1@@22|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@21| (- (- |l#3@@21| i@@97) |l#4@@21|)) |l#5@@21|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |521|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_XUS_XUS|) (|l#4@@22| |T@[Int]$1_XUS_XUS|) (|l#5@@22| Int) (|l#6@@14| T@$1_XUS_XUS) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29) (ite  (and (>= j@@29 |l#0@@24|) (< j@@29 |l#1@@23|)) (ite (< j@@29 |l#2@@22|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@22| j@@29) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@22| (+ j@@29 |l#5@@22|))) |l#6@@14|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |522|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Vec_22899|) (|l#4@@23| |T@[Int]Vec_22899|) (|l#5@@23| Int) (|l#6@@15| T@Vec_22899) (i@@98 Int) ) (! (= (|Select__T@[Int]Vec_22899_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98) (ite  (and (>= i@@98 |l#0@@25|) (< i@@98 |l#1@@24|)) (ite (< i@@98 |l#2@@23|) (|Select__T@[Int]Vec_22899_| |l#3@@23| i@@98) (|Select__T@[Int]Vec_22899_| |l#4@@23| (- i@@98 |l#5@@23|))) |l#6@@15|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |523|
 :pattern ( (|Select__T@[Int]Vec_22899_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Vec_22899|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@Vec_22899) (i@@99 Int) ) (! (= (|Select__T@[Int]Vec_22899_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99) (ite  (and (<= |l#0@@26| i@@99) (< i@@99 |l#1@@25|)) (|Select__T@[Int]Vec_22899_| |l#2@@24| (- (- |l#3@@24| i@@99) |l#4@@24|)) |l#5@@24|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |524|
 :pattern ( (|Select__T@[Int]Vec_22899_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Vec_22899|) (|l#4@@25| |T@[Int]Vec_22899|) (|l#5@@25| Int) (|l#6@@16| T@Vec_22899) (j@@30 Int) ) (! (= (|Select__T@[Int]Vec_22899_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30) (ite  (and (>= j@@30 |l#0@@27|) (< j@@30 |l#1@@26|)) (ite (< j@@30 |l#2@@25|) (|Select__T@[Int]Vec_22899_| |l#3@@25| j@@30) (|Select__T@[Int]Vec_22899_| |l#4@@25| (+ j@@30 |l#5@@25|))) |l#6@@16|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |525|
 :pattern ( (|Select__T@[Int]Vec_22899_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]Bool|) (|l#4@@26| |T@[Int]Bool|) (|l#5@@26| Int) (|l#6@@17| Bool) (i@@100 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100) (ite  (and (>= i@@100 |l#0@@28|) (< i@@100 |l#1@@27|)) (ite (< i@@100 |l#2@@26|) (|Select__T@[Int]Bool_| |l#3@@26| i@@100) (|Select__T@[Int]Bool_| |l#4@@26| (- i@@100 |l#5@@26|))) |l#6@@17|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |526|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]Bool|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| Bool) (i@@101 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101) (ite  (and (<= |l#0@@29| i@@101) (< i@@101 |l#1@@28|)) (|Select__T@[Int]Bool_| |l#2@@27| (- (- |l#3@@27| i@@101) |l#4@@27|)) |l#5@@27|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |527|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]Bool|) (|l#4@@28| |T@[Int]Bool|) (|l#5@@28| Int) (|l#6@@18| Bool) (j@@31 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31) (ite  (and (>= j@@31 |l#0@@30|) (< j@@31 |l#1@@29|)) (ite (< j@@31 |l#2@@28|) (|Select__T@[Int]Bool_| |l#3@@28| j@@31) (|Select__T@[Int]Bool_| |l#4@@28| (+ j@@31 |l#5@@28|))) |l#6@@18|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |528|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]Int|) (|l#4@@29| |T@[Int]Int|) (|l#5@@29| Int) (|l#6@@19| Int) (i@@102 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102) (ite  (and (>= i@@102 |l#0@@31|) (< i@@102 |l#1@@30|)) (ite (< i@@102 |l#2@@29|) (|Select__T@[Int]Int_| |l#3@@29| i@@102) (|Select__T@[Int]Int_| |l#4@@29| (- i@@102 |l#5@@29|))) |l#6@@19|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |529|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]Int|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| Int) (i@@103 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103) (ite  (and (<= |l#0@@32| i@@103) (< i@@103 |l#1@@31|)) (|Select__T@[Int]Int_| |l#2@@30| (- (- |l#3@@30| i@@103) |l#4@@30|)) |l#5@@30|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |530|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]Int|) (|l#4@@31| |T@[Int]Int|) (|l#5@@31| Int) (|l#6@@20| Int) (j@@32 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32) (ite  (and (>= j@@32 |l#0@@33|) (< j@@32 |l#1@@32|)) (ite (< j@@32 |l#2@@31|) (|Select__T@[Int]Int_| |l#3@@31| j@@32) (|Select__T@[Int]Int_| |l#4@@31| (+ j@@32 |l#5@@31|))) |l#6@@20|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |531|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32))
)))
(assert (forall ((|l#0@@34| |T@[$EventRep]Int|) (|l#1@@33| |T@[$EventRep]Int|) (v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51) (- (|Select__T@[$EventRep]Int_| |l#0@@34| v@@51) (|Select__T@[$EventRep]Int_| |l#1@@33| v@@51)))
 :qid |AccountAdministrationScriptsbpl.154:29|
 :skolemid |532|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t1 () Int)
(declare-fun inline$$1_BitVector_new$0$$t5@2 () T@Vec_34773)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$1_DiemAccount_publish_crsn$0$$t5@1 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_CRSN_publish$0$$t11@1 () Int)
(declare-fun $1_CRSN_CRSN_$memory () T@$Memory_136197)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_CRSN_CRSN_$memory@0 () T@$Memory_136197)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int T@$1_CRSN_CRSN) |T@[Int]$1_CRSN_CRSN|)
(declare-fun |Select__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int) T@$1_CRSN_CRSN)
(assert (forall ( ( ?x0 |T@[Int]$1_CRSN_CRSN|) ( ?x1 Int) ( ?x2 T@$1_CRSN_CRSN)) (! (= (|Select__T@[Int]$1_CRSN_CRSN_| (|Store__T@[Int]$1_CRSN_CRSN_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_CRSN_CRSN|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_CRSN_CRSN)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_CRSN_CRSN_| (|Store__T@[Int]$1_CRSN_CRSN_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_CRSN_CRSN_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_CRSN_publish$0$$t24@1 () T@$1_CRSN_CRSN)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$1_DiemAccount_publish_crsn$0$$t6@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$ret0 () T@$1_BitVector_BitVector)
(declare-fun inline$$Lt$1$dst@1 () Bool)
(declare-fun inline$$1_BitVector_new$0$$t16@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$t5@1 () T@Vec_34773)
(declare-fun inline$$1_BitVector_new$0$$t23@1 () T@$1_BitVector_BitVector)
(declare-fun inline$$1_BitVector_new$0$$t11@1 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun |inline$$1_Vector_push_back'bool'$0$m'@1| () T@$Mutation_100840)
(declare-fun inline$$1_BitVector_new$0$$t21@2 () T@$Mutation_100840)
(declare-fun MapConstVec_14643 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_14643 () Int)
(declare-fun |inline$$1_Vector_empty'bool'$0$v@1| () T@Vec_34773)
(declare-fun inline$$1_BitVector_new$0$$t19@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$t20@1 () Int)
(declare-fun inline$$1_BitVector_new$0$$t21@1 () T@$Mutation_100840)
(declare-fun MapConstVec_13534 (Bool) |T@[Int]Bool|)
(declare-fun DefaultVecElem_13534 () Bool)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$1_BitVector_new$0$$t15@0 () Int)
(declare-fun inline$$Gt$1$dst@1 () Bool)
(declare-fun inline$$1_BitVector_new$0$$t10@0 () Int)
(declare-fun inline$$1_BitVector_new$0$$t21@0 () T@$Mutation_100840)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$1_CRSN_publish$0$$t22@0 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun inline$$1_CRSN_publish$0$$t18@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_CRSN_publish$0$$t14@0 () Int)
(declare-fun inline$$1_CRSN_has_crsn$0$$t1@1 () Bool)
(declare-fun inline$$1_CRSN_publish$0$$t9@0 () Int)
(declare-fun inline$$1_DiemAccount_publish_crsn$0$$t4@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_publish_crsn$0$$t4@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_138898)
(declare-fun inline$$1_DiemAccount_publish_crsn$0$$t3@0 () Int)
(declare-fun inline$$1_DiemAccount_publish_crsn$0$$t4@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_113898)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_140007)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_140502)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_138386)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_opt_in_to_crsn$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 297905) (let ((inline$$1_BitVector_new$0$anon25_Else_correct  (=> (and (not $abort_flag@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (=> (= (ControlFlow 0 231007) (- 0 299813)) (<= inline$$AddU64$0$dst@2 _$t1)) (=> (<= inline$$AddU64$0$dst@2 _$t1) (=> (= (ControlFlow 0 231007) (- 0 299820)) (= (|l#Vec_34773| inline$$1_BitVector_new$0$$t5@2) inline$$AddU64$0$dst@2)))))))
(let ((anon3_Else_correct true))
(let ((anon3_Then_correct true))
(let ((inline$$1_DiemAccount_publish_crsn$0$L2_correct  (=> (and (= $abort_code@6 inline$$1_DiemAccount_publish_crsn$0$$t5@1) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 231233) 231331) anon3_Then_correct) (=> (= (ControlFlow 0 231233) 231313) anon3_Else_correct)))))
(let ((inline$$1_DiemAccount_publish_crsn$0$anon10_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_publish_crsn$0$$t5@1 $abort_code@5) (= (ControlFlow 0 231227) 231233))) inline$$1_DiemAccount_publish_crsn$0$L2_correct)))
(let ((inline$$1_DiemAccount_publish_crsn$0$anon9_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemAccount_publish_crsn$0$$t5@1 $abort_code@1) (= (ControlFlow 0 231247) 231233))) inline$$1_DiemAccount_publish_crsn$0$L2_correct)))
(let ((inline$$1_DiemAccount_publish_crsn$0$anon10_Else_correct  (=> (not $abort_flag@4) (=> (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4)) (and (=> (= (ControlFlow 0 231213) 231331) anon3_Then_correct) (=> (= (ControlFlow 0 231213) 231313) anon3_Else_correct))))))
(let ((inline$$1_CRSN_publish$0$anon25_Else_correct  (=> (not $abort_flag@3) (=> (and (= $abort_code@5 $abort_code@4) (= $abort_flag@4 $abort_flag@3)) (and (=> (= (ControlFlow 0 231105) 231227) inline$$1_DiemAccount_publish_crsn$0$anon10_Then_correct) (=> (= (ControlFlow 0 231105) 231213) inline$$1_DiemAccount_publish_crsn$0$anon10_Else_correct))))))
(let ((inline$$1_CRSN_publish$0$L7_correct  (=> (and (= $abort_code@5 inline$$1_CRSN_publish$0$$t11@1) (= $abort_flag@4 true)) (and (=> (= (ControlFlow 0 229410) 231227) inline$$1_DiemAccount_publish_crsn$0$anon10_Then_correct) (=> (= (ControlFlow 0 229410) 231213) inline$$1_DiemAccount_publish_crsn$0$anon10_Else_correct)))))
(let ((inline$$1_CRSN_publish$0$anon25_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_CRSN_publish$0$$t11@1 $abort_code@4) (= (ControlFlow 0 231119) 229410))) inline$$1_CRSN_publish$0$L7_correct)))
(let ((inline$$1_CRSN_publish$0$anon24_Then$1_correct  (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 231171) 231119) inline$$1_CRSN_publish$0$anon25_Then_correct) (=> (= (ControlFlow 0 231171) 231105) inline$$1_CRSN_publish$0$anon25_Else_correct)))))
(let ((inline$$1_CRSN_publish$0$anon24_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_136197| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)) (= (ControlFlow 0 231169) 231171)) inline$$1_CRSN_publish$0$anon24_Then$1_correct)))
(let ((inline$$1_CRSN_publish$0$anon24_Else_correct  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136197| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (= $1_CRSN_CRSN_$memory@0 ($Memory_136197 (|Store__T@[Int]Bool_| (|domain#$Memory_136197| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_136197| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0) inline$$1_CRSN_publish$0$$t24@1)))) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 231095) 231119) inline$$1_CRSN_publish$0$anon25_Then_correct) (=> (= (ControlFlow 0 231095) 231105) inline$$1_CRSN_publish$0$anon25_Else_correct)))))
(let ((inline$$1_CRSN_publish$0$anon23_Else_correct  (=> (and (not $abort_flag@2) (= inline$$1_CRSN_publish$0$$t24@1 ($1_CRSN_CRSN inline$$1_DiemAccount_publish_crsn$0$$t6@1 _$t1 inline$$1_BitVector_new$0$$ret0))) (and (=> (= (ControlFlow 0 231073) 231169) inline$$1_CRSN_publish$0$anon24_Then_correct) (=> (= (ControlFlow 0 231073) 231095) inline$$1_CRSN_publish$0$anon24_Else_correct)))))
(let ((inline$$1_CRSN_publish$0$anon23_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_CRSN_publish$0$$t11@1 $abort_code@3) (= (ControlFlow 0 231185) 229410))) inline$$1_CRSN_publish$0$L7_correct)))
(let ((inline$$1_BitVector_new$0$anon23_Else_correct  (=> (not inline$$Lt$1$dst@1) (and (=> (= (ControlFlow 0 230723) (- 0 299359)) (= inline$$1_BitVector_new$0$$t16@1 _$t1)) (=> (= inline$$1_BitVector_new$0$$t16@1 _$t1) (and (=> (= (ControlFlow 0 230723) (- 0 299366)) (= (|l#Vec_34773| inline$$1_BitVector_new$0$$t5@1) _$t1)) (=> (= (|l#Vec_34773| inline$$1_BitVector_new$0$$t5@1) _$t1) (=> (and (and (= inline$$1_BitVector_new$0$$t23@1 ($1_BitVector_BitVector _$t1 inline$$1_BitVector_new$0$$t5@1)) (= inline$$1_BitVector_new$0$$t23@1 inline$$1_BitVector_new$0$$t23@1)) (and (= $abort_code@3 $abort_code@1) (= $abort_flag@2 $abort_flag@0))) (and (=> (= (ControlFlow 0 230723) 231185) inline$$1_CRSN_publish$0$anon23_Then_correct) (=> (= (ControlFlow 0 230723) 231073) inline$$1_CRSN_publish$0$anon23_Else_correct))))))))))
(let ((inline$$1_BitVector_new$0$L10_correct  (=> (and (= $abort_code@3 inline$$1_BitVector_new$0$$t11@1) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 230395) 231185) inline$$1_CRSN_publish$0$anon23_Then_correct) (=> (= (ControlFlow 0 230395) 231073) inline$$1_CRSN_publish$0$anon23_Else_correct)))))
(let ((inline$$1_BitVector_new$0$anon25_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_BitVector_new$0$$t11@1 $abort_code@2) (= (ControlFlow 0 231021) 230395))) inline$$1_BitVector_new$0$L10_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 230967) 231021) inline$$1_BitVector_new$0$anon25_Then_correct) (=> (= (ControlFlow 0 230967) 231007) inline$$1_BitVector_new$0$anon25_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ inline$$1_BitVector_new$0$$t16@1 1) $MAX_U64) (= (ControlFlow 0 230965) 230967)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$1_BitVector_new$0$$t16@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ inline$$1_BitVector_new$0$$t16@1 1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 230913) 231021) inline$$1_BitVector_new$0$anon25_Then_correct) (=> (= (ControlFlow 0 230913) 231007) inline$$1_BitVector_new$0$anon25_Else_correct))))))
(let ((inline$$1_BitVector_new$0$anon24_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$1_BitVector_new$0$$t5@2 (|v#$Mutation_100840| |inline$$1_Vector_push_back'bool'$0$m'@1|)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 230973) 230965) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 230973) 230913) inline$$AddU64$0$anon3_Else_correct))))))
(let ((inline$$1_BitVector_new$0$anon24_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_BitVector_new$0$$t11@1 $abort_code@1) (= (ControlFlow 0 231035) 230395))) inline$$1_BitVector_new$0$L10_correct)))
(let ((|inline$$1_Vector_push_back'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'bool'$0$m'@1| ($Mutation_100840 (|l#$Mutation_100840| inline$$1_BitVector_new$0$$t21@2) (|p#$Mutation_100840| inline$$1_BitVector_new$0$$t21@2) (let ((l (|l#Vec_34773| (|v#$Mutation_100840| inline$$1_BitVector_new$0$$t21@2))))
(Vec_34773 (|Store__T@[Int]Bool_| (|v#Vec_34773| (|v#$Mutation_100840| inline$$1_BitVector_new$0$$t21@2)) l false) (+ l 1))))) (and (=> (= (ControlFlow 0 230794) 231035) inline$$1_BitVector_new$0$anon24_Then_correct) (=> (= (ControlFlow 0 230794) 230973) inline$$1_BitVector_new$0$anon24_Else_correct)))))
(let ((inline$$1_BitVector_new$0$anon23_Then_correct  (=> inline$$Lt$1$dst@1 (=> (and (= inline$$1_BitVector_new$0$$t21@2 ($Mutation_100840 ($Local 5) (Vec_22899 (MapConstVec_14643 DefaultVecElem_14643) 0) inline$$1_BitVector_new$0$$t5@1)) (= (ControlFlow 0 230800) 230794)) |inline$$1_Vector_push_back'bool'$0$anon0_correct|))))
(let ((inline$$1_BitVector_new$0$anon22_Else$1_correct  (and (=> (= (ControlFlow 0 230679) 230800) inline$$1_BitVector_new$0$anon23_Then_correct) (=> (= (ControlFlow 0 230679) 230723) inline$$1_BitVector_new$0$anon23_Else_correct))))
(let ((inline$$Lt$1$anon0_correct  (=> (and (= inline$$Lt$1$dst@1 (< inline$$1_BitVector_new$0$$t16@1 _$t1)) (= (ControlFlow 0 230669) 230679)) inline$$1_BitVector_new$0$anon22_Else$1_correct)))
(let ((inline$$1_BitVector_new$0$anon22_Else_correct  (=> (and (not $abort_flag@0) (= |inline$$1_Vector_empty'bool'$0$v@1| |inline$$1_Vector_empty'bool'$0$v@1|)) (and (=> (= (ControlFlow 0 230675) (- 0 299230)) (<= 0 _$t1)) (=> (<= 0 _$t1) (and (=> (= (ControlFlow 0 230675) (- 0 299237)) (= (|l#Vec_34773| |inline$$1_Vector_empty'bool'$0$v@1|) 0)) (=> (= (|l#Vec_34773| |inline$$1_Vector_empty'bool'$0$v@1|) 0) (=> (|$IsValid'vec'bool''| inline$$1_BitVector_new$0$$t5@1) (=> (and (and (and (|$IsValid'u64'| inline$$1_BitVector_new$0$$t16@1) (|$IsValid'u64'| inline$$1_BitVector_new$0$$t19@1)) (and (|$IsValid'u64'| inline$$1_BitVector_new$0$$t20@1) (|$IsValid'vec'bool''| (|v#$Mutation_100840| inline$$1_BitVector_new$0$$t21@1)))) (and (and (not $abort_flag@0) (<= inline$$1_BitVector_new$0$$t16@1 _$t1)) (and (= (|l#Vec_34773| inline$$1_BitVector_new$0$$t5@1) inline$$1_BitVector_new$0$$t16@1) (= (ControlFlow 0 230675) 230669)))) inline$$Lt$1$anon0_correct)))))))))
(let ((inline$$1_BitVector_new$0$anon22_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_BitVector_new$0$$t11@1 $abort_code@1) (= (ControlFlow 0 231049) 230395))) inline$$1_BitVector_new$0$L10_correct)))
(let ((|inline$$1_Vector_empty'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'bool'$0$v@1| (Vec_34773 (MapConstVec_13534 DefaultVecElem_13534) 0)) (and (=> (= (ControlFlow 0 230535) 231049) inline$$1_BitVector_new$0$anon22_Then_correct) (=> (= (ControlFlow 0 230535) 230675) inline$$1_BitVector_new$0$anon22_Else_correct)))))
(let ((inline$$1_BitVector_new$0$anon21_Then_correct  (=> (and (and inline$$Lt$0$dst@1 (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 230541) 230535))) |inline$$1_Vector_empty'bool'$0$anon0_correct|)))
(let ((inline$$1_BitVector_new$0$anon21_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= inline$$1_BitVector_new$0$$t15@0 inline$$1_BitVector_new$0$$t15@0)) (and (= inline$$1_BitVector_new$0$$t11@1 inline$$1_BitVector_new$0$$t15@0) (= (ControlFlow 0 230497) 230395))) inline$$1_BitVector_new$0$L10_correct)))
(let ((inline$$1_BitVector_new$0$anon20_Then$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_new$0$$t15@0) (= inline$$1_BitVector_new$0$$t15@0 7)) (and (= inline$$1_BitVector_new$0$$t15@0 inline$$1_BitVector_new$0$$t15@0) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 230481) 230541) inline$$1_BitVector_new$0$anon21_Then_correct) (=> (= (ControlFlow 0 230481) 230497) inline$$1_BitVector_new$0$anon21_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< _$t1 1024)) (= (ControlFlow 0 230445) 230481)) inline$$1_BitVector_new$0$anon20_Then$1_correct)))
(let ((inline$$1_BitVector_new$0$anon20_Then_correct  (=> inline$$Gt$1$dst@1 (=> (and (|$IsValid'u64'| 1024) (= (ControlFlow 0 230451) 230445)) inline$$Lt$0$anon0_correct))))
(let ((inline$$1_BitVector_new$0$anon20_Else_correct  (=> (and (and (not inline$$Gt$1$dst@1) (= inline$$1_BitVector_new$0$$t10@0 inline$$1_BitVector_new$0$$t10@0)) (and (= inline$$1_BitVector_new$0$$t11@1 inline$$1_BitVector_new$0$$t10@0) (= (ControlFlow 0 230389) 230395))) inline$$1_BitVector_new$0$L10_correct)))
(let ((inline$$1_BitVector_new$0$anon0$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_new$0$$t10@0) (= inline$$1_BitVector_new$0$$t10@0 7)) (and (= inline$$1_BitVector_new$0$$t10@0 inline$$1_BitVector_new$0$$t10@0) (= inline$$Gt$1$dst@1 inline$$Gt$1$dst@1))) (and (=> (= (ControlFlow 0 230373) 230451) inline$$1_BitVector_new$0$anon20_Then_correct) (=> (= (ControlFlow 0 230373) 230389) inline$$1_BitVector_new$0$anon20_Else_correct))))))
(let ((inline$$Gt$1$anon0_correct  (=> (and (= inline$$Gt$1$dst@1 (> _$t1 0)) (= (ControlFlow 0 230337) 230373)) inline$$1_BitVector_new$0$anon0$1_correct)))
(let ((inline$$1_BitVector_new$0$anon0_correct  (=> (and (and (= (|l#Vec_22899| (|p#$Mutation_100840| inline$$1_BitVector_new$0$$t21@0)) 0) (= _$t1 _$t1)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 230343) 230337))) inline$$Gt$1$anon0_correct)))
(let ((inline$$1_CRSN_publish$0$anon22_Then_correct  (=> (and inline$$Le$0$dst@1 (= (ControlFlow 0 231055) 230343)) inline$$1_BitVector_new$0$anon0_correct)))
(let ((inline$$1_CRSN_publish$0$anon22_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= inline$$1_CRSN_publish$0$$t22@0 inline$$1_CRSN_publish$0$$t22@0)) (and (= inline$$1_CRSN_publish$0$$t11@1 inline$$1_CRSN_publish$0$$t22@0) (= (ControlFlow 0 229614) 229410))) inline$$1_CRSN_publish$0$L7_correct)))
(let ((inline$$1_CRSN_publish$0$anon21_Then$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| inline$$1_CRSN_publish$0$$t22@0) (= inline$$1_CRSN_publish$0$$t22@0 7)) (and (= inline$$1_CRSN_publish$0$$t22@0 inline$$1_CRSN_publish$0$$t22@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 229598) 231055) inline$$1_CRSN_publish$0$anon22_Then_correct) (=> (= (ControlFlow 0 229598) 229614) inline$$1_CRSN_publish$0$anon22_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= _$t1 256)) (= (ControlFlow 0 229562) 229598)) inline$$1_CRSN_publish$0$anon21_Then$1_correct)))
(let ((inline$$1_CRSN_publish$0$anon21_Then_correct  (=> inline$$Gt$0$dst@1 (=> (and (|$IsValid'u64'| 256) (= (ControlFlow 0 229568) 229562)) inline$$Le$0$anon0_correct))))
(let ((inline$$1_CRSN_publish$0$anon21_Else_correct  (=> (and (and (not inline$$Gt$0$dst@1) (= inline$$1_CRSN_publish$0$$t18@0 inline$$1_CRSN_publish$0$$t18@0)) (and (= inline$$1_CRSN_publish$0$$t11@1 inline$$1_CRSN_publish$0$$t18@0) (= (ControlFlow 0 229512) 229410))) inline$$1_CRSN_publish$0$L7_correct)))
(let ((inline$$1_CRSN_publish$0$anon20_Then$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| inline$$1_CRSN_publish$0$$t18@0) (= inline$$1_CRSN_publish$0$$t18@0 7)) (and (= inline$$1_CRSN_publish$0$$t18@0 inline$$1_CRSN_publish$0$$t18@0) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 229496) 229568) inline$$1_CRSN_publish$0$anon21_Then_correct) (=> (= (ControlFlow 0 229496) 229512) inline$$1_CRSN_publish$0$anon21_Else_correct))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t1 0)) (= (ControlFlow 0 229460) 229496)) inline$$1_CRSN_publish$0$anon20_Then$1_correct)))
(let ((inline$$1_CRSN_publish$0$anon20_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 229466) 229460)) inline$$Gt$0$anon0_correct))))
(let ((inline$$1_CRSN_publish$0$anon20_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_CRSN_publish$0$$t14@0 inline$$1_CRSN_publish$0$$t14@0)) (and (= inline$$1_CRSN_publish$0$$t11@1 inline$$1_CRSN_publish$0$$t14@0) (= (ControlFlow 0 229404) 229410))) inline$$1_CRSN_publish$0$L7_correct)))
(let ((inline$$1_CRSN_publish$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_CRSN_publish$0$$t14@0) (= inline$$1_CRSN_publish$0$$t14@0 1)) (and (= inline$$1_CRSN_publish$0$$t14@0 inline$$1_CRSN_publish$0$$t14@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 229388) 229466) inline$$1_CRSN_publish$0$anon20_Then_correct) (=> (= (ControlFlow 0 229388) 229404) inline$$1_CRSN_publish$0$anon20_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_CRSN_has_crsn$0$$t1@1)) (= (ControlFlow 0 229352) 229388)) inline$$1_CRSN_publish$0$anon19_Else$1_correct)))
(let ((inline$$1_CRSN_publish$0$anon19_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 229358) 229352)) inline$$Not$0$anon0_correct)))
(let ((inline$$1_CRSN_publish$0$anon19_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_CRSN_publish$0$$t11@1 $abort_code@1) (= (ControlFlow 0 231199) 229410))) inline$$1_CRSN_publish$0$L7_correct)))
(let ((inline$$1_CRSN_has_crsn$0$anon0_correct  (=> (= inline$$1_CRSN_publish$0$$t9@0 inline$$1_CRSN_publish$0$$t9@0) (=> (and (= inline$$1_CRSN_has_crsn$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_136197| $1_CRSN_CRSN_$memory) inline$$1_CRSN_publish$0$$t9@0)) (= inline$$1_CRSN_has_crsn$0$$t1@1 inline$$1_CRSN_has_crsn$0$$t1@1)) (and (=> (= (ControlFlow 0 229308) 231199) inline$$1_CRSN_publish$0$anon19_Then_correct) (=> (= (ControlFlow 0 229308) 229358) inline$$1_CRSN_publish$0$anon19_Else_correct))))))
(let ((inline$$1_CRSN_publish$0$anon0_correct  (=> (and (= _$t0 _$t0) (= inline$$1_DiemAccount_publish_crsn$0$$t6@1 inline$$1_DiemAccount_publish_crsn$0$$t6@1)) (=> (and (and (= _$t1 _$t1) (|$IsValid'address'| inline$$1_CRSN_publish$0$$t9@0)) (and (= inline$$1_CRSN_publish$0$$t9@0 (|$addr#$signer| _$t0)) (= (ControlFlow 0 229314) 229308))) inline$$1_CRSN_has_crsn$0$anon0_correct))))
(let ((inline$$1_DiemAccount_publish_crsn$0$anon9_Else_correct  (=> (and (and (not $abort_flag@0) (= inline$$1_DiemAccount_publish_crsn$0$$t4@2 inline$$1_DiemAccount_publish_crsn$0$$t4@2)) (and (= inline$$1_DiemAccount_publish_crsn$0$$t6@1 (|$sequence_number#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_publish_crsn$0$$t4@2)) (= (ControlFlow 0 231203) 229314))) inline$$1_CRSN_publish$0$anon0_correct)))
(let ((inline$$1_DiemAccount_publish_crsn$0$anon8_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_publish_crsn$0$$t4@2 inline$$1_DiemAccount_publish_crsn$0$$t4@0)) (and (=> (= (ControlFlow 0 231299) 231247) inline$$1_DiemAccount_publish_crsn$0$anon9_Then_correct) (=> (= (ControlFlow 0 231299) 231203) inline$$1_DiemAccount_publish_crsn$0$anon9_Else_correct))))))
(let ((inline$$1_DiemAccount_publish_crsn$0$anon8_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_publish_crsn$0$$t3@0)) (= (ControlFlow 0 231297) 231299)) inline$$1_DiemAccount_publish_crsn$0$anon8_Then$1_correct)))
(let ((inline$$1_DiemAccount_publish_crsn$0$anon8_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_publish_crsn$0$$t3@0) (=> (and (and (= inline$$1_DiemAccount_publish_crsn$0$$t4@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_publish_crsn$0$$t3@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$1_DiemAccount_publish_crsn$0$$t4@2 inline$$1_DiemAccount_publish_crsn$0$$t4@1))) (and (=> (= (ControlFlow 0 228612) 231247) inline$$1_DiemAccount_publish_crsn$0$anon9_Then_correct) (=> (= (ControlFlow 0 228612) 231203) inline$$1_DiemAccount_publish_crsn$0$anon9_Else_correct))))))
(let ((inline$$1_DiemAccount_publish_crsn$0$anon0_correct  (=> (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (|$IsValid'address'| inline$$1_DiemAccount_publish_crsn$0$$t3@0) (= inline$$1_DiemAccount_publish_crsn$0$$t3@0 (|$addr#$signer| _$t0)))) (and (=> (= (ControlFlow 0 228598) 231297) inline$$1_DiemAccount_publish_crsn$0$anon8_Then_correct) (=> (= (ControlFlow 0 228598) 228612) inline$$1_DiemAccount_publish_crsn$0$anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr) (or (= (|l#Vec_74151| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr)))) 0) (and (not (= (|l#Vec_74151| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr)))) 0)) (= addr (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr)))) 0)))))))
 :qid |AccountAdministrationScriptsbpl.14842:20|
 :skolemid |427|
)) (=> (and (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr@@0) (= (|l#Vec_74190| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr@@0)))) 0)) (and (not (= (|l#Vec_74190| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr@@0)))) 0)) (= addr@@0 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr@@0)))) 0)))))))
 :qid |AccountAdministrationScriptsbpl.14846:20|
 :skolemid |428|
)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_113898| $1_Roles_RoleId_$memory) addr@@1)))
 :qid |AccountAdministrationScriptsbpl.14850:20|
 :skolemid |429|
))) (=> (and (and (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (= (|Select__T@[Int]Bool_| (|domain#$Memory_140007| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@2)  (and (= addr@@2 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr@@2))))
 :qid |AccountAdministrationScriptsbpl.14854:20|
 :skolemid |430|
)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (= (|Select__T@[Int]Bool_| (|domain#$Memory_140502| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@3)  (and (= addr@@3 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr@@3))))
 :qid |AccountAdministrationScriptsbpl.14858:20|
 :skolemid |431|
))) (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (= (|Select__T@[Int]Bool_| (|domain#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_138386| $1_AccountFreezing_FreezingBit_$memory) addr@@4)))
 :qid |AccountAdministrationScriptsbpl.14862:20|
 :skolemid |432|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_138386| $1_AccountFreezing_FreezingBit_$memory) addr@@5)))
 :qid |AccountAdministrationScriptsbpl.14866:20|
 :skolemid |433|
)))) (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_136197| $1_CRSN_CRSN_$memory) $a_0)))
(|$IsValid'$1_CRSN_CRSN'| $rsc))
 :qid |AccountAdministrationScriptsbpl.14875:20|
 :skolemid |434|
 :pattern ( (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_136197| $1_CRSN_CRSN_$memory) $a_0))
)))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) $a_0@@0)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@0) (and (<= (|l#Vec_74190| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@0))) 1) (<= (|l#Vec_74151| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@0))) 1))))
 :qid |AccountAdministrationScriptsbpl.14879:20|
 :skolemid |435|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_138898| $1_DiemAccount_DiemAccount_$memory) $a_0@@0))
)) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 231303) 228598)))) inline$$1_DiemAccount_publish_crsn$0$anon0_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_74026_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_74026| stream@@0) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_74026| stream@@0) v@@52) 0)
 :qid |AccountAdministrationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountAdministrationScriptsbpl.2949:13|
 :skolemid |105|
))) (= (ControlFlow 0 228015) 231303)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 297905) 228015) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_106347 0)) ((($Memory_106347 (|domain#$Memory_106347| |T@[Int]Bool|) (|contents#$Memory_106347| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_75895 0)) (((Vec_75895 (|v#Vec_75895| |T@[Int]#0|) (|l#Vec_75895| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_170508 0)) ((($Memory_170508 (|domain#$Memory_170508| |T@[Int]Bool|) (|contents#$Memory_170508| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_140502 0)) ((($Memory_140502 (|domain#$Memory_140502| |T@[Int]Bool|) (|contents#$Memory_140502| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_138386 0)) ((($Memory_138386 (|domain#$Memory_138386| |T@[Int]Bool|) (|contents#$Memory_138386| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_138731 0)) ((($Memory_138731 (|domain#$Memory_138731| |T@[Int]Bool|) (|contents#$Memory_138731| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@Vec_34773 0)) (((Vec_34773 (|v#Vec_34773| |T@[Int]Bool|) (|l#Vec_34773| Int) ) ) ))
(declare-datatypes ((T@$1_BitVector_BitVector 0)) ((($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| Int) (|$bit_field#$1_BitVector_BitVector| T@Vec_34773) ) ) ))
(declare-datatypes ((T@$1_CRSN_CRSN 0)) ((($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| Int) (|$size#$1_CRSN_CRSN| Int) (|$slots#$1_CRSN_CRSN| T@$1_BitVector_BitVector) ) ) ))
(declare-sort |T@[Int]$1_CRSN_CRSN| 0)
(declare-datatypes ((T@$Memory_136197 0)) ((($Memory_136197 (|domain#$Memory_136197| |T@[Int]Bool|) (|contents#$Memory_136197| |T@[Int]$1_CRSN_CRSN|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_131819 0)) ((($Memory_131819 (|domain#$Memory_131819| |T@[Int]Bool|) (|contents#$Memory_131819| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_131599 0)) ((($Memory_131599 (|domain#$Memory_131599| |T@[Int]Bool|) (|contents#$Memory_131599| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_128625 0)) ((($Memory_128625 (|domain#$Memory_128625| |T@[Int]Bool|) (|contents#$Memory_128625| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_128026 0)) ((($Memory_128026 (|domain#$Memory_128026| |T@[Int]Bool|) (|contents#$Memory_128026| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_127962 0)) ((($Memory_127962 (|domain#$Memory_127962| |T@[Int]Bool|) (|contents#$Memory_127962| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_127358 0)) ((($Memory_127358 (|domain#$Memory_127358| |T@[Int]Bool|) (|contents#$Memory_127358| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_92023 0)) (((Vec_92023 (|v#Vec_92023| |T@[Int]$1_XDX_XDX|) (|l#Vec_92023| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_94703 0)) (((Vec_94703 (|v#Vec_94703| |T@[Int]$1_XUS_XUS|) (|l#Vec_94703| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_126706 0)) ((($Memory_126706 (|domain#$Memory_126706| |T@[Int]Bool|) (|contents#$Memory_126706| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_126487 0)) ((($Memory_126487 (|domain#$Memory_126487| |T@[Int]Bool|) (|contents#$Memory_126487| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_140007 0)) ((($Memory_140007 (|domain#$Memory_140007| |T@[Int]Bool|) (|contents#$Memory_140007| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_119525 0)) ((($Memory_119525 (|domain#$Memory_119525| |T@[Int]Bool|) (|contents#$Memory_119525| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_119461 0)) ((($Memory_119461 (|domain#$Memory_119461| |T@[Int]Bool|) (|contents#$Memory_119461| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_119397 0)) ((($Memory_119397 (|domain#$Memory_119397| |T@[Int]Bool|) (|contents#$Memory_119397| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_119805 0)) ((($Memory_119805 (|domain#$Memory_119805| |T@[Int]Bool|) (|contents#$Memory_119805| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_140324 0)) ((($Memory_140324 (|domain#$Memory_140324| |T@[Int]Bool|) (|contents#$Memory_140324| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_125662 0)) ((($Memory_125662 (|domain#$Memory_125662| |T@[Int]Bool|) (|contents#$Memory_125662| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_140233 0)) ((($Memory_140233 (|domain#$Memory_140233| |T@[Int]Bool|) (|contents#$Memory_140233| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_125571 0)) ((($Memory_125571 (|domain#$Memory_125571| |T@[Int]Bool|) (|contents#$Memory_125571| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_126782 0)) ((($Memory_126782 (|domain#$Memory_126782| |T@[Int]Bool|) (|contents#$Memory_126782| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_140142 0)) ((($Memory_140142 (|domain#$Memory_140142| |T@[Int]Bool|) (|contents#$Memory_140142| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_125480 0)) ((($Memory_125480 (|domain#$Memory_125480| |T@[Int]Bool|) (|contents#$Memory_125480| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_128382 0)) ((($Memory_128382 (|domain#$Memory_128382| |T@[Int]Bool|) (|contents#$Memory_128382| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_118409 0)) ((($Memory_118409 (|domain#$Memory_118409| |T@[Int]Bool|) (|contents#$Memory_118409| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_118664 0)) ((($Memory_118664 (|domain#$Memory_118664| |T@[Int]Bool|) (|contents#$Memory_118664| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_117237 0)) ((($Memory_117237 (|domain#$Memory_117237| |T@[Int]Bool|) (|contents#$Memory_117237| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_117528 0)) ((($Memory_117528 (|domain#$Memory_117528| |T@[Int]Bool|) (|contents#$Memory_117528| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_116706 0)) ((($Memory_116706 (|domain#$Memory_116706| |T@[Int]Bool|) (|contents#$Memory_116706| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_74190 0)) (((Vec_74190 (|v#Vec_74190| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_74190| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_74190) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_74151 0)) (((Vec_74151 (|v#Vec_74151| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_74151| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_74151) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_147611 0)) ((($Memory_147611 (|domain#$Memory_147611| |T@[Int]Bool|) (|contents#$Memory_147611| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_74151) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_22899 0)) (((Vec_22899 (|v#Vec_22899| |T@[Int]Int|) (|l#Vec_22899| Int) ) ) ))
(declare-sort |T@[Int]Vec_22899| 0)
(declare-datatypes ((T@Vec_74358 0)) (((Vec_74358 (|v#Vec_74358| |T@[Int]Vec_22899|) (|l#Vec_74358| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_74358) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_117400 0)) ((($Memory_117400 (|domain#$Memory_117400| |T@[Int]Bool|) (|contents#$Memory_117400| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_74358) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_117336 0)) ((($Memory_117336 (|domain#$Memory_117336| |T@[Int]Bool|) (|contents#$Memory_117336| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22899) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_22899) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_117464 0)) ((($Memory_117464 (|domain#$Memory_117464| |T@[Int]Bool|) (|contents#$Memory_117464| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey 0)) ((($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@Vec_22899) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-sort |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| 0)
(declare-datatypes ((T@$Memory_145758 0)) ((($Memory_145758 (|domain#$Memory_145758| |T@[Int]Bool|) (|contents#$Memory_145758| |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_22899) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_138898 0)) ((($Memory_138898 (|domain#$Memory_138898| |T@[Int]Bool|) (|contents#$Memory_138898| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_22899) (|$base_url#$1_DualAttestation_Credential| T@Vec_22899) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_22899) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_128561 0)) ((($Memory_128561 (|domain#$Memory_128561| |T@[Int]Bool|) (|contents#$Memory_128561| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_22899) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_74621 0)) (((Vec_74621 (|v#Vec_74621| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_74621| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_74621) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_127047 0)) ((($Memory_127047 (|domain#$Memory_127047| |T@[Int]Bool|) (|contents#$Memory_127047| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_22899) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_119233 0)) ((($Memory_119233 (|domain#$Memory_119233| |T@[Int]Bool|) (|contents#$Memory_119233| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_22899) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_119114 0)) ((($Memory_119114 (|domain#$Memory_119114| |T@[Int]Bool|) (|contents#$Memory_119114| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_22899) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_118995 0)) ((($Memory_118995 (|domain#$Memory_118995| |T@[Int]Bool|) (|contents#$Memory_118995| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_22899) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_22899) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_22899) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_74112 0)) (((Vec_74112 (|v#Vec_74112| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_74112| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_74112) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_74301 0)) (((Vec_74301 (|v#Vec_74301| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_74301| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_74301) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_117156 0)) ((($Memory_117156 (|domain#$Memory_117156| |T@[Int]Bool|) (|contents#$Memory_117156| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_22899) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_22899) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_116094 0)) ((($Memory_116094 (|domain#$Memory_116094| |T@[Int]Bool|) (|contents#$Memory_116094| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_22899) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_115131 0)) ((($Memory_115131 (|domain#$Memory_115131| |T@[Int]Bool|) (|contents#$Memory_115131| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_113898 0)) ((($Memory_113898 (|domain#$Memory_113898| |T@[Int]Bool|) (|contents#$Memory_113898| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_113710 0)) ((($Memory_113710 (|domain#$Memory_113710| |T@[Int]Bool|) (|contents#$Memory_113710| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_22899) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_22899) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_22899) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_22899) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_22899) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_22899) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_22899) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_22899) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_22899) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_22899) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22899) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_22899) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_22899) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_74026 0)) (((Multiset_74026 (|v#Multiset_74026| |T@[$EventRep]Int|) (|l#Multiset_74026| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_74026| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_74026|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_149579 0)) ((($Mutation_149579 (|l#$Mutation_149579| T@$Location) (|p#$Mutation_149579| T@Vec_22899) (|v#$Mutation_149579| T@$1_RecoveryAddress_RecoveryAddress) ) ) ))
(declare-datatypes ((T@$Mutation_145969 0)) ((($Mutation_145969 (|l#$Mutation_145969| T@$Location) (|p#$Mutation_145969| T@Vec_22899) (|v#$Mutation_145969| T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) ) ))
(declare-datatypes ((T@$Mutation_143161 0)) ((($Mutation_143161 (|l#$Mutation_143161| T@$Location) (|p#$Mutation_143161| T@Vec_22899) (|v#$Mutation_143161| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_143116 0)) ((($Mutation_143116 (|l#$Mutation_143116| T@$Location) (|p#$Mutation_143116| T@Vec_22899) (|v#$Mutation_143116| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_136774 0)) ((($Mutation_136774 (|l#$Mutation_136774| T@$Location) (|p#$Mutation_136774| T@Vec_22899) (|v#$Mutation_136774| T@$1_CRSN_CRSN) ) ) ))
(declare-datatypes ((T@$Mutation_131978 0)) ((($Mutation_131978 (|l#$Mutation_131978| T@$Location) (|p#$Mutation_131978| T@Vec_22899) (|v#$Mutation_131978| T@$1_BitVector_BitVector) ) ) ))
(declare-datatypes ((T@$Mutation_129472 0)) ((($Mutation_129472 (|l#$Mutation_129472| T@$Location) (|p#$Mutation_129472| T@Vec_22899) (|v#$Mutation_129472| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_106978 0)) ((($Mutation_106978 (|l#$Mutation_106978| T@$Location) (|p#$Mutation_106978| T@Vec_22899) (|v#$Mutation_106978| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_15038 0)) ((($Mutation_15038 (|l#$Mutation_15038| T@$Location) (|p#$Mutation_15038| T@Vec_22899) (|v#$Mutation_15038| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13929 0)) ((($Mutation_13929 (|l#$Mutation_13929| T@$Location) (|p#$Mutation_13929| T@Vec_22899) (|v#$Mutation_13929| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_100840 0)) ((($Mutation_100840 (|l#$Mutation_100840| T@$Location) (|p#$Mutation_100840| T@Vec_22899) (|v#$Mutation_100840| T@Vec_34773) ) ) ))
(declare-datatypes ((T@$Mutation_99130 0)) ((($Mutation_99130 (|l#$Mutation_99130| T@$Location) (|p#$Mutation_99130| T@Vec_22899) (|v#$Mutation_99130| T@Vec_22899) ) ) ))
(declare-datatypes ((T@$Mutation_98042 0)) ((($Mutation_98042 (|l#$Mutation_98042| T@$Location) (|p#$Mutation_98042| T@Vec_22899) (|v#$Mutation_98042| T@Vec_74358) ) ) ))
(declare-datatypes ((T@$Mutation_96333 0)) ((($Mutation_96333 (|l#$Mutation_96333| T@$Location) (|p#$Mutation_96333| T@Vec_22899) (|v#$Mutation_96333| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_95346 0)) ((($Mutation_95346 (|l#$Mutation_95346| T@$Location) (|p#$Mutation_95346| T@Vec_22899) (|v#$Mutation_95346| T@Vec_94703) ) ) ))
(declare-datatypes ((T@$Mutation_93653 0)) ((($Mutation_93653 (|l#$Mutation_93653| T@$Location) (|p#$Mutation_93653| T@Vec_22899) (|v#$Mutation_93653| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_92666 0)) ((($Mutation_92666 (|l#$Mutation_92666| T@$Location) (|p#$Mutation_92666| T@Vec_22899) (|v#$Mutation_92666| T@Vec_92023) ) ) ))
(declare-datatypes ((T@$Mutation_90973 0)) ((($Mutation_90973 (|l#$Mutation_90973| T@$Location) (|p#$Mutation_90973| T@Vec_22899) (|v#$Mutation_90973| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_89986 0)) ((($Mutation_89986 (|l#$Mutation_89986| T@$Location) (|p#$Mutation_89986| T@Vec_22899) (|v#$Mutation_89986| T@Vec_74112) ) ) ))
(declare-datatypes ((T@$Mutation_88331 0)) ((($Mutation_88331 (|l#$Mutation_88331| T@$Location) (|p#$Mutation_88331| T@Vec_22899) (|v#$Mutation_88331| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_87344 0)) ((($Mutation_87344 (|l#$Mutation_87344| T@$Location) (|p#$Mutation_87344| T@Vec_22899) (|v#$Mutation_87344| T@Vec_74621) ) ) ))
(declare-datatypes ((T@$Mutation_85666 0)) ((($Mutation_85666 (|l#$Mutation_85666| T@$Location) (|p#$Mutation_85666| T@Vec_22899) (|v#$Mutation_85666| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_84679 0)) ((($Mutation_84679 (|l#$Mutation_84679| T@$Location) (|p#$Mutation_84679| T@Vec_22899) (|v#$Mutation_84679| T@Vec_74301) ) ) ))
(declare-datatypes ((T@$Mutation_82879 0)) ((($Mutation_82879 (|l#$Mutation_82879| T@$Location) (|p#$Mutation_82879| T@Vec_22899) (|v#$Mutation_82879| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_81892 0)) ((($Mutation_81892 (|l#$Mutation_81892| T@$Location) (|p#$Mutation_81892| T@Vec_22899) (|v#$Mutation_81892| T@Vec_74190) ) ) ))
(declare-datatypes ((T@$Mutation_80227 0)) ((($Mutation_80227 (|l#$Mutation_80227| T@$Location) (|p#$Mutation_80227| T@Vec_22899) (|v#$Mutation_80227| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_79240 0)) ((($Mutation_79240 (|l#$Mutation_79240| T@$Location) (|p#$Mutation_79240| T@Vec_22899) (|v#$Mutation_79240| T@Vec_74151) ) ) ))
(declare-datatypes ((T@$Mutation_77527 0)) ((($Mutation_77527 (|l#$Mutation_77527| T@$Location) (|p#$Mutation_77527| T@Vec_22899) (|v#$Mutation_77527| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_76540 0)) ((($Mutation_76540 (|l#$Mutation_76540| T@$Location) (|p#$Mutation_76540| T@Vec_22899) (|v#$Mutation_76540| T@Vec_75895) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_75895 T@Vec_75895) Bool)
(declare-fun InRangeVec_65480 (T@Vec_75895 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_75895) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_75895 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_74151 T@Vec_74151) Bool)
(declare-fun InRangeVec_65681 (T@Vec_74151 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_74151) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_74151 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_74190 T@Vec_74190) Bool)
(declare-fun InRangeVec_65882 (T@Vec_74190 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_74190) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_74190 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_74301 T@Vec_74301) Bool)
(declare-fun InRangeVec_66083 (T@Vec_74301 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_22899 T@Vec_22899) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_74301) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_74301 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_74621 T@Vec_74621) Bool)
(declare-fun InRangeVec_66284 (T@Vec_74621 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_74621) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_74621 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_74112 T@Vec_74112) Bool)
(declare-fun InRangeVec_66485 (T@Vec_74112 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_74112) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_74112 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_92023 T@Vec_92023) Bool)
(declare-fun InRangeVec_66686 (T@Vec_92023 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_92023) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_92023 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_94703 T@Vec_94703) Bool)
(declare-fun InRangeVec_66887 (T@Vec_94703 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_94703) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_94703 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_74358 T@Vec_74358) Bool)
(declare-fun InRangeVec_97465 (T@Vec_74358 Int) Bool)
(declare-fun |Select__T@[Int]Vec_22899_| (|T@[Int]Vec_22899| Int) T@Vec_22899)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_74358) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_22899) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_74358 T@Vec_22899) Int)
(declare-fun |$IsEqual'vec'bool''| (T@Vec_34773 T@Vec_34773) Bool)
(declare-fun InRangeVec_13305 (T@Vec_34773 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_34773) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_34773 Bool) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_22899 T@Vec_22899) Bool)
(declare-fun InRangeVec_14414 (T@Vec_22899 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_22899) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_22899 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_22899 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_22899) T@Vec_22899)
(declare-fun $1_Hash_sha3 (T@Vec_22899) T@Vec_22899)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_22899) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_22899 T@Vec_22899 T@Vec_22899) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_74026_| (|T@[$1_Event_EventHandle]Multiset_74026| T@$1_Event_EventHandle) T@Multiset_74026)
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
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'#0''| (|T@$1_Diem_Diem'#0'|) Bool)
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
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
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
(declare-fun |$IsValid'$1_BitVector_BitVector'| (T@$1_BitVector_BitVector) Bool)
(declare-fun |$IsValid'$1_CRSN_CRSN'| (T@$1_CRSN_CRSN) Bool)
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
(declare-fun $1_Authenticator_spec_ed25519_authentication_key (T@Vec_22899) T@Vec_22899)
(declare-fun |$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| (T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) Bool)
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun IndexOfVec_22899 (T@Vec_22899 Int) Int)
(declare-fun IndexOfVec_74112 (T@Vec_74112 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_74151 (T@Vec_74151 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_74190 (T@Vec_74190 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_74301 (T@Vec_74301 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_74358 (T@Vec_74358 T@Vec_22899) Int)
(declare-fun IndexOfVec_74621 (T@Vec_74621 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_34773 (T@Vec_34773 Bool) Int)
(declare-fun IndexOfVec_75895 (T@Vec_75895 |T@#0|) Int)
(declare-fun IndexOfVec_92023 (T@Vec_92023 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_94703 (T@Vec_94703 T@$1_XUS_XUS) Int)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_74026| |T@[$1_Event_EventHandle]Multiset_74026|) |T@[$1_Event_EventHandle]Multiset_74026|)
(declare-fun |lambda#36| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(declare-fun |lambda#3| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#6| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#7| (Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| Int Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#8| (Int Int Int |T@[Int]$1_DiemAccount_KeyRotationCapability| |T@[Int]$1_DiemAccount_KeyRotationCapability| Int T@$1_DiemAccount_KeyRotationCapability) |T@[Int]$1_DiemAccount_KeyRotationCapability|)
(declare-fun |lambda#9| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#10| (Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| Int Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#11| (Int Int Int |T@[Int]$1_DiemAccount_WithdrawCapability| |T@[Int]$1_DiemAccount_WithdrawCapability| Int T@$1_DiemAccount_WithdrawCapability) |T@[Int]$1_DiemAccount_WithdrawCapability|)
(declare-fun |lambda#12| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#13| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#14| (Int Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_XDX_XDX| Int Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#25| (Int Int |T@[Int]$1_XUS_XUS| Int Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]Vec_22899| |T@[Int]Vec_22899| Int T@Vec_22899) |T@[Int]Vec_22899|)
(declare-fun |lambda#28| (Int Int |T@[Int]Vec_22899| Int Int T@Vec_22899) |T@[Int]Vec_22899|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]Vec_22899| |T@[Int]Vec_22899| Int T@Vec_22899) |T@[Int]Vec_22899|)
(declare-fun |lambda#30| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#31| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#32| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#33| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#34| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#35| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountAdministrationScriptsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountAdministrationScriptsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountAdministrationScriptsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountAdministrationScriptsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountAdministrationScriptsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountAdministrationScriptsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountAdministrationScriptsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountAdministrationScriptsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_75895) (v2 T@Vec_75895) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_75895| v1) (|l#Vec_75895| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_65480 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_75895| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_75895| v2) i@@0)))
 :qid |AccountAdministrationScriptsbpl.615:13|
 :skolemid |17|
))))
 :qid |AccountAdministrationScriptsbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_75895) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_75895| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_65480 v@@4 i@@1) true)
 :qid |AccountAdministrationScriptsbpl.621:13|
 :skolemid |19|
))))
 :qid |AccountAdministrationScriptsbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_75895) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_65480 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@5) i@@3) e))
 :qid |AccountAdministrationScriptsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_65480 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@5) j) e)))
 :qid |AccountAdministrationScriptsbpl.634:17|
 :skolemid |22|
)))))
 :qid |AccountAdministrationScriptsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_74151) (v2@@0 T@Vec_74151) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_74151| v1@@0) (|l#Vec_74151| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_65681 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v2@@0) i@@4)))
 :qid |AccountAdministrationScriptsbpl.796:13|
 :skolemid |24|
))))
 :qid |AccountAdministrationScriptsbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_74151) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_74151| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_65681 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@6) i@@5)))
 :qid |AccountAdministrationScriptsbpl.802:13|
 :skolemid |26|
))))
 :qid |AccountAdministrationScriptsbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_74151) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_65681 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@7) i@@7) e@@0))
 :qid |AccountAdministrationScriptsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_65681 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@7) j@@0) e@@0)))
 :qid |AccountAdministrationScriptsbpl.815:17|
 :skolemid |29|
)))))
 :qid |AccountAdministrationScriptsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_74190) (v2@@1 T@Vec_74190) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_74190| v1@@1) (|l#Vec_74190| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_65882 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v2@@1) i@@8)))
 :qid |AccountAdministrationScriptsbpl.977:13|
 :skolemid |31|
))))
 :qid |AccountAdministrationScriptsbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_74190) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_74190| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_65882 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@8) i@@9)))
 :qid |AccountAdministrationScriptsbpl.983:13|
 :skolemid |33|
))))
 :qid |AccountAdministrationScriptsbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_74190) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_65882 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@9) i@@11) e@@1))
 :qid |AccountAdministrationScriptsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_65882 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@9) j@@1) e@@1)))
 :qid |AccountAdministrationScriptsbpl.996:17|
 :skolemid |36|
)))))
 :qid |AccountAdministrationScriptsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_74301) (v2@@2 T@Vec_74301) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_74301| v1@@2) (|l#Vec_74301| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_66083 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v2@@2) i@@12)))))
 :qid |AccountAdministrationScriptsbpl.1158:13|
 :skolemid |38|
))))
 :qid |AccountAdministrationScriptsbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_74301) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_74301| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_66083 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@10) i@@13)))
 :qid |AccountAdministrationScriptsbpl.1164:13|
 :skolemid |40|
))))
 :qid |AccountAdministrationScriptsbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_74301) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_66083 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |AccountAdministrationScriptsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_66083 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |AccountAdministrationScriptsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |AccountAdministrationScriptsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_74621) (v2@@3 T@Vec_74621) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_74621| v1@@3) (|l#Vec_74621| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_66284 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v2@@3) i@@16))))
 :qid |AccountAdministrationScriptsbpl.1339:13|
 :skolemid |45|
))))
 :qid |AccountAdministrationScriptsbpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_74621) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_74621| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_66284 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@12) i@@17)))
 :qid |AccountAdministrationScriptsbpl.1345:13|
 :skolemid |47|
))))
 :qid |AccountAdministrationScriptsbpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_74621) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_66284 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |AccountAdministrationScriptsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_66284 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |AccountAdministrationScriptsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |AccountAdministrationScriptsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_74112) (v2@@4 T@Vec_74112) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_74112| v1@@4) (|l#Vec_74112| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_66485 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v2@@4) i@@20)))))
 :qid |AccountAdministrationScriptsbpl.1520:13|
 :skolemid |52|
))))
 :qid |AccountAdministrationScriptsbpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_74112) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_74112| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_66485 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@14) i@@21)))
 :qid |AccountAdministrationScriptsbpl.1526:13|
 :skolemid |54|
))))
 :qid |AccountAdministrationScriptsbpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_74112) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_66485 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |AccountAdministrationScriptsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_66485 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |AccountAdministrationScriptsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |AccountAdministrationScriptsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_92023) (v2@@5 T@Vec_92023) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@5 v2@@5)  (and (= (|l#Vec_92023| v1@@5) (|l#Vec_92023| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_66686 v1@@5 i@@24) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v1@@5) i@@24) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v2@@5) i@@24)))
 :qid |AccountAdministrationScriptsbpl.1701:13|
 :skolemid |59|
))))
 :qid |AccountAdministrationScriptsbpl.1699:36|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_92023) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_92023| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_66686 v@@16 i@@25) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@16) i@@25)))
 :qid |AccountAdministrationScriptsbpl.1707:13|
 :skolemid |61|
))))
 :qid |AccountAdministrationScriptsbpl.1705:36|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_92023) (e@@5 T@$1_XDX_XDX) ) (! (let ((i@@26 (|$IndexOfVec'$1_XDX_XDX'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_66686 v@@17 i@@27)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@17) i@@27) e@@5))
 :qid |AccountAdministrationScriptsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_66686 v@@17 i@@26)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@17) j@@5) e@@5)))
 :qid |AccountAdministrationScriptsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |AccountAdministrationScriptsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_94703) (v2@@6 T@Vec_94703) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@6 v2@@6)  (and (= (|l#Vec_94703| v1@@6) (|l#Vec_94703| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_66887 v1@@6 i@@28) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v1@@6) i@@28) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v2@@6) i@@28)))
 :qid |AccountAdministrationScriptsbpl.1882:13|
 :skolemid |66|
))))
 :qid |AccountAdministrationScriptsbpl.1880:36|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_94703) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_94703| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_66887 v@@18 i@@29) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@18) i@@29)))
 :qid |AccountAdministrationScriptsbpl.1888:13|
 :skolemid |68|
))))
 :qid |AccountAdministrationScriptsbpl.1886:36|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_94703) (e@@6 T@$1_XUS_XUS) ) (! (let ((i@@30 (|$IndexOfVec'$1_XUS_XUS'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_66887 v@@19 i@@31)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@19) i@@31) e@@6))
 :qid |AccountAdministrationScriptsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_66887 v@@19 i@@30)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@19) j@@6) e@@6)))
 :qid |AccountAdministrationScriptsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |AccountAdministrationScriptsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_74358) (v2@@7 T@Vec_74358) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@7 v2@@7)  (and (= (|l#Vec_74358| v1@@7) (|l#Vec_74358| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_97465 v1@@7 i@@32) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v1@@7) i@@32) (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v2@@7) i@@32)))
 :qid |AccountAdministrationScriptsbpl.2063:13|
 :skolemid |73|
))))
 :qid |AccountAdministrationScriptsbpl.2061:33|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_74358) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_74358| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_97465 v@@20 i@@33) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@20) i@@33)))
 :qid |AccountAdministrationScriptsbpl.2069:13|
 :skolemid |75|
))))
 :qid |AccountAdministrationScriptsbpl.2067:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_74358) (e@@7 T@Vec_22899) ) (! (let ((i@@34 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_97465 v@@21 i@@35)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@21) i@@35) e@@7))
 :qid |AccountAdministrationScriptsbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_97465 v@@21 i@@34)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@21) j@@7) e@@7)))
 :qid |AccountAdministrationScriptsbpl.2082:17|
 :skolemid |78|
)))))
 :qid |AccountAdministrationScriptsbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_34773) (v2@@8 T@Vec_34773) ) (! (= (|$IsEqual'vec'bool''| v1@@8 v2@@8)  (and (= (|l#Vec_34773| v1@@8) (|l#Vec_34773| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_13305 v1@@8 i@@36) (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v1@@8) i@@36) (|Select__T@[Int]Bool_| (|v#Vec_34773| v2@@8) i@@36)))
 :qid |AccountAdministrationScriptsbpl.2244:13|
 :skolemid |80|
))))
 :qid |AccountAdministrationScriptsbpl.2242:30|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'bool''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_34773) ) (! (= (|$IsValid'vec'bool''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_34773| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_13305 v@@22 i@@37) true)
 :qid |AccountAdministrationScriptsbpl.2250:13|
 :skolemid |82|
))))
 :qid |AccountAdministrationScriptsbpl.2248:30|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'bool''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_34773) (e@@8 Bool) ) (! (let ((i@@38 (|$IndexOfVec'bool'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_13305 v@@23 i@@39)) (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@23) i@@39) e@@8))
 :qid |AccountAdministrationScriptsbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_13305 v@@23 i@@38)) (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@23) j@@8) e@@8)))
 :qid |AccountAdministrationScriptsbpl.2263:17|
 :skolemid |85|
)))))
 :qid |AccountAdministrationScriptsbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'bool'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_22899) (v2@@9 T@Vec_22899) ) (! (= (|$IsEqual'vec'address''| v1@@9 v2@@9)  (and (= (|l#Vec_22899| v1@@9) (|l#Vec_22899| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_14414 v1@@9 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v1@@9) i@@40) (|Select__T@[Int]Int_| (|v#Vec_22899| v2@@9) i@@40)))
 :qid |AccountAdministrationScriptsbpl.2425:13|
 :skolemid |87|
))))
 :qid |AccountAdministrationScriptsbpl.2423:33|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'address''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_22899) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_22899| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_14414 v@@24 i@@41) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_22899| v@@24) i@@41)))
 :qid |AccountAdministrationScriptsbpl.2431:13|
 :skolemid |89|
))))
 :qid |AccountAdministrationScriptsbpl.2429:33|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_22899) (e@@9 Int) ) (! (let ((i@@42 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_14414 v@@25 i@@43)) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@25) i@@43) e@@9))
 :qid |AccountAdministrationScriptsbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_14414 v@@25 i@@42)) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@25) j@@9) e@@9)))
 :qid |AccountAdministrationScriptsbpl.2444:17|
 :skolemid |92|
)))))
 :qid |AccountAdministrationScriptsbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_22899) (v2@@10 T@Vec_22899) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10)  (and (= (|l#Vec_22899| v1@@10) (|l#Vec_22899| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_14414 v1@@10 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v1@@10) i@@44) (|Select__T@[Int]Int_| (|v#Vec_22899| v2@@10) i@@44)))
 :qid |AccountAdministrationScriptsbpl.2606:13|
 :skolemid |94|
))))
 :qid |AccountAdministrationScriptsbpl.2604:28|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'u8''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_22899) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_22899| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_14414 v@@26 i@@45) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_22899| v@@26) i@@45)))
 :qid |AccountAdministrationScriptsbpl.2612:13|
 :skolemid |96|
))))
 :qid |AccountAdministrationScriptsbpl.2610:28|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_22899) (e@@10 Int) ) (! (let ((i@@46 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_14414 v@@27 i@@47)) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@27) i@@47) e@@10))
 :qid |AccountAdministrationScriptsbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_14414 v@@27 i@@46)) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@27) j@@10) e@@10)))
 :qid |AccountAdministrationScriptsbpl.2625:17|
 :skolemid |99|
)))))
 :qid |AccountAdministrationScriptsbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_22899) (v2@@11 T@Vec_22899) ) (! (= (|$IsEqual'vec'u8''| v1@@11 v2@@11) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11)))
 :qid |AccountAdministrationScriptsbpl.2798:15|
 :skolemid |101|
 :pattern ( ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11))
)))
(assert (forall ((v1@@12 T@Vec_22899) (v2@@12 T@Vec_22899) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12)))
 :qid |AccountAdministrationScriptsbpl.2814:15|
 :skolemid |102|
 :pattern ( ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12))
)))
(assert (forall ((k1 T@Vec_22899) (k2 T@Vec_22899) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountAdministrationScriptsbpl.2885:15|
 :skolemid |103|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_22899) (s2 T@Vec_22899) (k1@@0 T@Vec_22899) (k2@@0 T@Vec_22899) (m1 T@Vec_22899) (m2 T@Vec_22899) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountAdministrationScriptsbpl.2888:15|
 :skolemid |104|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_74026_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_74026| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_74026| stream) v@@28) 0)
 :qid |AccountAdministrationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |AccountAdministrationScriptsbpl.2949:13|
 :skolemid |105|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountAdministrationScriptsbpl.2990:80|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@13 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@13 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13)))
 :qid |AccountAdministrationScriptsbpl.2996:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountAdministrationScriptsbpl.3046:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14)))
 :qid |AccountAdministrationScriptsbpl.3052:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountAdministrationScriptsbpl.3102:80|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@15 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@15 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@15)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15)))
 :qid |AccountAdministrationScriptsbpl.3108:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountAdministrationScriptsbpl.3158:79|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_AdminTransactionEvent) (v2@@16 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16)))
 :qid |AccountAdministrationScriptsbpl.3164:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountAdministrationScriptsbpl.3214:76|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_CreateAccountEvent) (v2@@17 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17)))
 :qid |AccountAdministrationScriptsbpl.3220:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountAdministrationScriptsbpl.3270:78|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@18 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18)))
 :qid |AccountAdministrationScriptsbpl.3276:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountAdministrationScriptsbpl.3326:74|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_SentPaymentEvent) (v2@@19 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@19))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19)))
 :qid |AccountAdministrationScriptsbpl.3332:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountAdministrationScriptsbpl.3382:69|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@20 T@$1_DiemBlock_NewBlockEvent) (v2@@20 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@20) (|$round#$1_DiemBlock_NewBlockEvent| v2@@20)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@20) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@20))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@20) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@20) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20)))
 :qid |AccountAdministrationScriptsbpl.3388:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountAdministrationScriptsbpl.3438:70|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@21 T@$1_DiemConfig_NewEpochEvent) (v2@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21)))
 :qid |AccountAdministrationScriptsbpl.3444:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountAdministrationScriptsbpl.3494:60|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@22 T@$1_Diem_BurnEvent) (v2@@22 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@22) (|$amount#$1_Diem_BurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@22) (|$currency_code#$1_Diem_BurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@22) (|$preburn_address#$1_Diem_BurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22)))
 :qid |AccountAdministrationScriptsbpl.3500:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountAdministrationScriptsbpl.3550:66|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@23 T@$1_Diem_CancelBurnEvent) (v2@@23 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@23) (|$amount#$1_Diem_CancelBurnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@23) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@23) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23)))
 :qid |AccountAdministrationScriptsbpl.3556:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountAdministrationScriptsbpl.3606:60|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@24 T@$1_Diem_MintEvent) (v2@@24 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@24) (|$amount#$1_Diem_MintEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@24) (|$currency_code#$1_Diem_MintEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24)))
 :qid |AccountAdministrationScriptsbpl.3612:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountAdministrationScriptsbpl.3662:63|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@25 T@$1_Diem_PreburnEvent) (v2@@25 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@25) (|$amount#$1_Diem_PreburnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@25) (|$currency_code#$1_Diem_PreburnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@25) (|$preburn_address#$1_Diem_PreburnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25)))
 :qid |AccountAdministrationScriptsbpl.3668:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountAdministrationScriptsbpl.3718:79|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26)))
 :qid |AccountAdministrationScriptsbpl.3724:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountAdministrationScriptsbpl.3774:82|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@27 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27)))
 :qid |AccountAdministrationScriptsbpl.3780:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountAdministrationScriptsbpl.3830:88|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28)))
 :qid |AccountAdministrationScriptsbpl.3836:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountAdministrationScriptsbpl.3886:72|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@29 T@$1_VASPDomain_VASPDomainEvent) (v2@@29 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@29)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@29)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@29))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29)))
 :qid |AccountAdministrationScriptsbpl.3892:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountAdministrationScriptsbpl.3971:61|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountAdministrationScriptsbpl.4060:36|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountAdministrationScriptsbpl.4513:71|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountAdministrationScriptsbpl.4654:46|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountAdministrationScriptsbpl.4666:64|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountAdministrationScriptsbpl.4678:75|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountAdministrationScriptsbpl.4690:72|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountAdministrationScriptsbpl.4718:55|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountAdministrationScriptsbpl.4741:46|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |AccountAdministrationScriptsbpl.4753:15|
 :skolemid |150|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountAdministrationScriptsbpl.4766:49|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountAdministrationScriptsbpl.4954:71|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountAdministrationScriptsbpl.4967:91|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountAdministrationScriptsbpl.4980:113|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |AccountAdministrationScriptsbpl.4993:75|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |AccountAdministrationScriptsbpl.5006:73|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |AccountAdministrationScriptsbpl.5026:48|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |AccountAdministrationScriptsbpl.5043:83|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |AccountAdministrationScriptsbpl.5057:48|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |AccountAdministrationScriptsbpl.5078:45|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |AccountAdministrationScriptsbpl.5092:51|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |AccountAdministrationScriptsbpl.5115:48|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |AccountAdministrationScriptsbpl.5133:49|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |AccountAdministrationScriptsbpl.5146:65|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |AccountAdministrationScriptsbpl.5218:45|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |AccountAdministrationScriptsbpl.5231:45|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@24) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@24)))
 :qid |AccountAdministrationScriptsbpl.5244:37|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@25) true)
 :qid |AccountAdministrationScriptsbpl.5257:55|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@25))
)))
(assert (forall ((s@@26 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@26)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@26)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@26))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@26))))
 :qid |AccountAdministrationScriptsbpl.5277:38|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@27)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@27)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@27))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@27))))
 :qid |AccountAdministrationScriptsbpl.5299:44|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@28)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@28))))
 :qid |AccountAdministrationScriptsbpl.5351:53|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@29)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@29))))
 :qid |AccountAdministrationScriptsbpl.5424:53|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@30)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@30)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@30))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@30))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@30))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@30))))
 :qid |AccountAdministrationScriptsbpl.5497:45|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@31) true)
 :qid |AccountAdministrationScriptsbpl.5534:55|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@32) true)
 :qid |AccountAdministrationScriptsbpl.5548:55|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@33) true)
 :qid |AccountAdministrationScriptsbpl.5562:47|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@34)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@34))))
 :qid |AccountAdministrationScriptsbpl.5579:38|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@35) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@35)))
 :qid |AccountAdministrationScriptsbpl.5593:48|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@36) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@36)))
 :qid |AccountAdministrationScriptsbpl.5607:48|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@37) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@37)))
 :qid |AccountAdministrationScriptsbpl.5621:40|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@38)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@38))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@38))))
 :qid |AccountAdministrationScriptsbpl.5641:41|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@39)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@39)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@39))))
 :qid |AccountAdministrationScriptsbpl.5660:57|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@39))
)))
(assert (forall ((s@@40 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@40) true)
 :qid |AccountAdministrationScriptsbpl.5875:68|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@41)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))))
 :qid |AccountAdministrationScriptsbpl.5897:66|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@42)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))))
 :qid |AccountAdministrationScriptsbpl.5923:66|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@43) true)
 :qid |AccountAdministrationScriptsbpl.5940:31|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@43))
)))
(assert (forall ((s@@44 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@44) true)
 :qid |AccountAdministrationScriptsbpl.5958:31|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@44))
)))
(assert (forall ((s@@45 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@45)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@45)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@45))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@45))))
 :qid |AccountAdministrationScriptsbpl.5977:35|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@46) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@46)))
 :qid |AccountAdministrationScriptsbpl.5998:45|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@46))
)))
(assert (forall ((s@@47 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@47)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@47))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@47))))
 :qid |AccountAdministrationScriptsbpl.6016:50|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@48) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@48)))
 :qid |AccountAdministrationScriptsbpl.6032:52|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@48))
)))
(assert (forall ((s@@49 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@49) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@49)))
 :qid |AccountAdministrationScriptsbpl.6045:46|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@49))
)))
(assert (forall ((s@@50 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@50) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@50)))
 :qid |AccountAdministrationScriptsbpl.6256:38|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@50))
)))
(assert (forall ((s@@51 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@51) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@51)))
 :qid |AccountAdministrationScriptsbpl.6270:39|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@51))
)))
(assert (forall ((s@@52 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52))))
 :qid |AccountAdministrationScriptsbpl.6297:65|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@53)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@53))))
 :qid |AccountAdministrationScriptsbpl.6325:60|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54))))
 :qid |AccountAdministrationScriptsbpl.6342:66|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@55)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@55)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@55))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@55))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@55))))
 :qid |AccountAdministrationScriptsbpl.6371:50|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@56) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@56)))
 :qid |AccountAdministrationScriptsbpl.6394:45|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@57)) true))
 :qid |AccountAdministrationScriptsbpl.6933:87|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |AccountAdministrationScriptsbpl.6947:47|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |AccountAdministrationScriptsbpl.6966:58|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |AccountAdministrationScriptsbpl.6982:39|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_BitVector_BitVector) ) (! (= (|$IsValid'$1_BitVector_BitVector'| s@@61)  (and (|$IsValid'u64'| (|$length#$1_BitVector_BitVector| s@@61)) (|$IsValid'vec'bool''| (|$bit_field#$1_BitVector_BitVector| s@@61))))
 :qid |AccountAdministrationScriptsbpl.6999:43|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_BitVector_BitVector'| s@@61))
)))
(assert (forall ((s@@62 T@$1_CRSN_CRSN) ) (! (= (|$IsValid'$1_CRSN_CRSN'| s@@62)  (and (and (|$IsValid'u64'| (|$min_nonce#$1_CRSN_CRSN| s@@62)) (|$IsValid'u64'| (|$size#$1_CRSN_CRSN| s@@62))) (|$IsValid'$1_BitVector_BitVector'| (|$slots#$1_CRSN_CRSN| s@@62))))
 :qid |AccountAdministrationScriptsbpl.8571:33|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_CRSN_CRSN'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@63)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@63)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@63))))
 :qid |AccountAdministrationScriptsbpl.9272:58|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@64)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@64)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@64))))
 :qid |AccountAdministrationScriptsbpl.9289:58|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@65) true)
 :qid |AccountAdministrationScriptsbpl.9304:51|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@66)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@66)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@66))))
 :qid |AccountAdministrationScriptsbpl.9321:60|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@67)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@67)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@67))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@67))))
 :qid |AccountAdministrationScriptsbpl.9420:47|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@68)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@68)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@68))))
 :qid |AccountAdministrationScriptsbpl.9446:63|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@69) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@69)))
 :qid |AccountAdministrationScriptsbpl.9461:57|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@69))
)))
(assert (forall ((s@@70 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@70) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@70)))
 :qid |AccountAdministrationScriptsbpl.9474:55|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@70))
)))
(assert (forall ((s@@71 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@71) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@71)))
 :qid |AccountAdministrationScriptsbpl.9488:55|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@71))
)))
(assert (forall ((s@@72 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@72) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@72)))
 :qid |AccountAdministrationScriptsbpl.9502:47|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@73)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@73)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@73))))
 :qid |AccountAdministrationScriptsbpl.9519:54|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@74) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@74)))
 :qid |AccountAdministrationScriptsbpl.9533:55|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@75) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@75)))
 :qid |AccountAdministrationScriptsbpl.9546:57|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@76)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@76)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@76))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@76))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@76))))
 :qid |AccountAdministrationScriptsbpl.9568:56|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@77)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@77)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@77))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@77))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@77))))
 :qid |AccountAdministrationScriptsbpl.9595:52|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@78) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@78)))
 :qid |AccountAdministrationScriptsbpl.9613:54|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@78))
)))
(assert (forall ((public_key T@Vec_22899) ) (! (let (($$res@@0 ($1_Authenticator_spec_ed25519_authentication_key public_key)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |AccountAdministrationScriptsbpl.11400:15|
 :skolemid |222|
)))
(assert (forall ((s@@79 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) (! (= (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@79)  (and (|$IsValid'vec'u8''| (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@79)) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@79))))
 :qid |AccountAdministrationScriptsbpl.11418:69|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@79))
)))
(assert (forall ((s@@80 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@80) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@80)))
 :qid |AccountAdministrationScriptsbpl.11963:55|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@81)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@81))))
 :qid |AccountAdministrationScriptsbpl.16317:47|
 :skolemid |491|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@82)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@82))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@82))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@82))))
 :qid |AccountAdministrationScriptsbpl.16341:47|
 :skolemid |492|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@83) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@83)))
 :qid |AccountAdministrationScriptsbpl.16359:49|
 :skolemid |493|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@84)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@84)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@84))))
 :qid |AccountAdministrationScriptsbpl.16401:49|
 :skolemid |494|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@85)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@85)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@85))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@85))))
 :qid |AccountAdministrationScriptsbpl.16430:48|
 :skolemid |495|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@86) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@86)))
 :qid |AccountAdministrationScriptsbpl.16446:47|
 :skolemid |496|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@86))
)))
(assert (forall ((v@@29 T@Vec_75895) (i@@48 Int) ) (! (= (InRangeVec_65480 v@@29 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_75895| v@@29))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_65480 v@@29 i@@48))
)))
(assert (forall ((v@@30 T@Vec_74151) (i@@49 Int) ) (! (= (InRangeVec_65681 v@@30 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_74151| v@@30))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_65681 v@@30 i@@49))
)))
(assert (forall ((v@@31 T@Vec_74190) (i@@50 Int) ) (! (= (InRangeVec_65882 v@@31 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_74190| v@@31))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_65882 v@@31 i@@50))
)))
(assert (forall ((v@@32 T@Vec_74301) (i@@51 Int) ) (! (= (InRangeVec_66083 v@@32 i@@51)  (and (>= i@@51 0) (< i@@51 (|l#Vec_74301| v@@32))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66083 v@@32 i@@51))
)))
(assert (forall ((v@@33 T@Vec_74621) (i@@52 Int) ) (! (= (InRangeVec_66284 v@@33 i@@52)  (and (>= i@@52 0) (< i@@52 (|l#Vec_74621| v@@33))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66284 v@@33 i@@52))
)))
(assert (forall ((v@@34 T@Vec_74112) (i@@53 Int) ) (! (= (InRangeVec_66485 v@@34 i@@53)  (and (>= i@@53 0) (< i@@53 (|l#Vec_74112| v@@34))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66485 v@@34 i@@53))
)))
(assert (forall ((v@@35 T@Vec_92023) (i@@54 Int) ) (! (= (InRangeVec_66686 v@@35 i@@54)  (and (>= i@@54 0) (< i@@54 (|l#Vec_92023| v@@35))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66686 v@@35 i@@54))
)))
(assert (forall ((v@@36 T@Vec_94703) (i@@55 Int) ) (! (= (InRangeVec_66887 v@@36 i@@55)  (and (>= i@@55 0) (< i@@55 (|l#Vec_94703| v@@36))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66887 v@@36 i@@55))
)))
(assert (forall ((v@@37 T@Vec_74358) (i@@56 Int) ) (! (= (InRangeVec_97465 v@@37 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_74358| v@@37))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_97465 v@@37 i@@56))
)))
(assert (forall ((v@@38 T@Vec_34773) (i@@57 Int) ) (! (= (InRangeVec_13305 v@@38 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_34773| v@@38))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_13305 v@@38 i@@57))
)))
(assert (forall ((v@@39 T@Vec_22899) (i@@58 Int) ) (! (= (InRangeVec_14414 v@@39 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_22899| v@@39))))
 :qid |AccountAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14414 v@@39 i@@58))
)))
(assert (forall ((v@@40 T@Vec_22899) (e@@11 Int) ) (! (let ((i@@59 (IndexOfVec_22899 v@@40 e@@11)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_14414 v@@40 i@@60) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@40) i@@60) e@@11))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_14414 v@@40 i@@59) (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@40) i@@59) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@59)) (not (= (|Select__T@[Int]Int_| (|v#Vec_22899| v@@40) j@@11) e@@11)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22899 v@@40 e@@11))
)))
(assert (forall ((v@@41 T@Vec_74112) (e@@12 T@$1_ValidatorConfig_Config) ) (! (let ((i@@61 (IndexOfVec_74112 v@@41 e@@12)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_66485 v@@41 i@@62) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@41) i@@62) e@@12))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_66485 v@@41 i@@61) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@41) i@@61) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@61)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74112| v@@41) j@@12) e@@12)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74112 v@@41 e@@12))
)))
(assert (forall ((v@@42 T@Vec_74151) (e@@13 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@63 (IndexOfVec_74151 v@@42 e@@13)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_65681 v@@42 i@@64) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@42) i@@64) e@@13))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_65681 v@@42 i@@63) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@42) i@@63) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@63)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74151| v@@42) j@@13) e@@13)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74151 v@@42 e@@13))
)))
(assert (forall ((v@@43 T@Vec_74190) (e@@14 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@65 (IndexOfVec_74190 v@@43 e@@14)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_65882 v@@43 i@@66) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@43) i@@66) e@@14))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_65882 v@@43 i@@65) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@43) i@@65) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@65)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74190| v@@43) j@@14) e@@14)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74190 v@@43 e@@14))
)))
(assert (forall ((v@@44 T@Vec_74301) (e@@15 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@67 (IndexOfVec_74301 v@@44 e@@15)))
(ite  (not (exists ((i@@68 Int) ) (!  (and (InRangeVec_66083 v@@44 i@@68) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@44) i@@68) e@@15))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@67 (- 0 1))  (and (and (InRangeVec_66083 v@@44 i@@67) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@44) i@@67) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@67)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74301| v@@44) j@@15) e@@15)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74301 v@@44 e@@15))
)))
(assert (forall ((v@@45 T@Vec_74358) (e@@16 T@Vec_22899) ) (! (let ((i@@69 (IndexOfVec_74358 v@@45 e@@16)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_97465 v@@45 i@@70) (= (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@45) i@@70) e@@16))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_97465 v@@45 i@@69) (= (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@45) i@@69) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@69)) (not (= (|Select__T@[Int]Vec_22899_| (|v#Vec_74358| v@@45) j@@16) e@@16)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74358 v@@45 e@@16))
)))
(assert (forall ((v@@46 T@Vec_74621) (e@@17 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@71 (IndexOfVec_74621 v@@46 e@@17)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_66284 v@@46 i@@72) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@46) i@@72) e@@17))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_66284 v@@46 i@@71) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@46) i@@71) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@71)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74621| v@@46) j@@17) e@@17)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74621 v@@46 e@@17))
)))
(assert (forall ((v@@47 T@Vec_34773) (e@@18 Bool) ) (! (let ((i@@73 (IndexOfVec_34773 v@@47 e@@18)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_13305 v@@47 i@@74) (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@47) i@@74) e@@18))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_13305 v@@47 i@@73) (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@47) i@@73) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@73)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_34773| v@@47) j@@18) e@@18)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_34773 v@@47 e@@18))
)))
(assert (forall ((v@@48 T@Vec_75895) (e@@19 |T@#0|) ) (! (let ((i@@75 (IndexOfVec_75895 v@@48 e@@19)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_65480 v@@48 i@@76) (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@48) i@@76) e@@19))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_65480 v@@48 i@@75) (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@48) i@@75) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@75)) (not (= (|Select__T@[Int]#0_| (|v#Vec_75895| v@@48) j@@19) e@@19)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_75895 v@@48 e@@19))
)))
(assert (forall ((v@@49 T@Vec_92023) (e@@20 T@$1_XDX_XDX) ) (! (let ((i@@77 (IndexOfVec_92023 v@@49 e@@20)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_66686 v@@49 i@@78) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@49) i@@78) e@@20))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_66686 v@@49 i@@77) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@49) i@@77) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@77)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_92023| v@@49) j@@20) e@@20)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_92023 v@@49 e@@20))
)))
(assert (forall ((v@@50 T@Vec_94703) (e@@21 T@$1_XUS_XUS) ) (! (let ((i@@79 (IndexOfVec_94703 v@@50 e@@21)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_66887 v@@50 i@@80) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@50) i@@80) e@@21))
 :qid |AccountAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_66887 v@@50 i@@79) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@50) i@@79) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@79)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_94703| v@@50) j@@21) e@@21)))
 :qid |AccountAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |AccountAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_94703 v@@50 e@@21))
)))
(assert (forall ((|l#0| Bool) (i@@81 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81) |l#0|)
 :qid |AccountAdministrationScriptsbpl.275:54|
 :skolemid |497|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_74026|) (|l#1| |T@[$1_Event_EventHandle]Multiset_74026|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_74026_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_74026| (|Select__T@[$1_Event_EventHandle]Multiset_74026_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_74026| (|Select__T@[$1_Event_EventHandle]Multiset_74026_| |l#1| handle@@0))))
(Multiset_74026 (|lambda#36| (|v#Multiset_74026| (|Select__T@[$1_Event_EventHandle]Multiset_74026_| |l#0@@0| handle@@0)) (|v#Multiset_74026| (|Select__T@[$1_Event_EventHandle]Multiset_74026_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountAdministrationScriptsbpl.2959:13|
 :skolemid |498|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_74026_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@82 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82) (ite  (and (>= i@@82 |l#0@@1|) (< i@@82 |l#1@@0|)) (ite (< i@@82 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@82) (|Select__T@[Int]#0_| |l#4| (- i@@82 |l#5|))) |l#6|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |499|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@83 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83) (ite  (and (<= |l#0@@2| i@@83) (< i@@83 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@83) |l#4@@0|)) |l#5@@0|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |500|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@22 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22) (ite  (and (>= j@@22 |l#0@@3|) (< j@@22 |l#1@@2|)) (ite (< j@@22 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@22) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@22 |l#5@@1|))) |l#6@@0|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |501|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@84 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84) (ite  (and (>= i@@84 |l#0@@4|) (< i@@84 |l#1@@3|)) (ite (< i@@84 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@84) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@84 |l#5@@2|))) |l#6@@1|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |502|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@85 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85) (ite  (and (<= |l#0@@5| i@@85) (< i@@85 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@85) |l#4@@3|)) |l#5@@3|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |503|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23) (ite  (and (>= j@@23 |l#0@@6|) (< j@@23 |l#1@@5|)) (ite (< j@@23 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@23) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@23 |l#5@@4|))) |l#6@@2|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |504|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@86 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86) (ite  (and (>= i@@86 |l#0@@7|) (< i@@86 |l#1@@6|)) (ite (< i@@86 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@86) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@86 |l#5@@5|))) |l#6@@3|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |505|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@87 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87) (ite  (and (<= |l#0@@8| i@@87) (< i@@87 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@87) |l#4@@6|)) |l#5@@6|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |506|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24) (ite  (and (>= j@@24 |l#0@@9|) (< j@@24 |l#1@@8|)) (ite (< j@@24 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@24) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@24 |l#5@@7|))) |l#6@@4|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |507|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@88 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88) (ite  (and (>= i@@88 |l#0@@10|) (< i@@88 |l#1@@9|)) (ite (< i@@88 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@88) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@88 |l#5@@8|))) |l#6@@5|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |508|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@89 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89) (ite  (and (<= |l#0@@11| i@@89) (< i@@89 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@89) |l#4@@9|)) |l#5@@9|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |509|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@25 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25) (ite  (and (>= j@@25 |l#0@@12|) (< j@@25 |l#1@@11|)) (ite (< j@@25 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@25) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@25 |l#5@@10|))) |l#6@@6|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |510|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@90 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90) (ite  (and (>= i@@90 |l#0@@13|) (< i@@90 |l#1@@12|)) (ite (< i@@90 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@90) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@90 |l#5@@11|))) |l#6@@7|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |511|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@91 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91) (ite  (and (<= |l#0@@14| i@@91) (< i@@91 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@91) |l#4@@12|)) |l#5@@12|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |512|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@26 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26) (ite  (and (>= j@@26 |l#0@@15|) (< j@@26 |l#1@@14|)) (ite (< j@@26 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@26) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@26 |l#5@@13|))) |l#6@@8|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |513|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@92 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92) (ite  (and (>= i@@92 |l#0@@16|) (< i@@92 |l#1@@15|)) (ite (< i@@92 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@92) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@92 |l#5@@14|))) |l#6@@9|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |514|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@93 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93) (ite  (and (<= |l#0@@17| i@@93) (< i@@93 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@93) |l#4@@15|)) |l#5@@15|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |515|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27) (ite  (and (>= j@@27 |l#0@@18|) (< j@@27 |l#1@@17|)) (ite (< j@@27 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@27) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@27 |l#5@@16|))) |l#6@@10|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |516|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_XDX_XDX|) (|l#4@@17| |T@[Int]$1_XDX_XDX|) (|l#5@@17| Int) (|l#6@@11| T@$1_XDX_XDX) (i@@94 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94) (ite  (and (>= i@@94 |l#0@@19|) (< i@@94 |l#1@@18|)) (ite (< i@@94 |l#2@@17|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@17| i@@94) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@17| (- i@@94 |l#5@@17|))) |l#6@@11|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |517|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_XDX_XDX|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@$1_XDX_XDX) (i@@95 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95) (ite  (and (<= |l#0@@20| i@@95) (< i@@95 |l#1@@19|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@18| (- (- |l#3@@18| i@@95) |l#4@@18|)) |l#5@@18|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |518|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_XDX_XDX|) (|l#4@@19| |T@[Int]$1_XDX_XDX|) (|l#5@@19| Int) (|l#6@@12| T@$1_XDX_XDX) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28) (ite  (and (>= j@@28 |l#0@@21|) (< j@@28 |l#1@@20|)) (ite (< j@@28 |l#2@@19|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@19| j@@28) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@19| (+ j@@28 |l#5@@19|))) |l#6@@12|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |519|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_XUS_XUS|) (|l#4@@20| |T@[Int]$1_XUS_XUS|) (|l#5@@20| Int) (|l#6@@13| T@$1_XUS_XUS) (i@@96 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96) (ite  (and (>= i@@96 |l#0@@22|) (< i@@96 |l#1@@21|)) (ite (< i@@96 |l#2@@20|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@20| i@@96) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@20| (- i@@96 |l#5@@20|))) |l#6@@13|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |520|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_XUS_XUS|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_XUS_XUS) (i@@97 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97) (ite  (and (<= |l#0@@23| i@@97) (< i@@97 |l#1@@22|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@21| (- (- |l#3@@21| i@@97) |l#4@@21|)) |l#5@@21|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |521|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_XUS_XUS|) (|l#4@@22| |T@[Int]$1_XUS_XUS|) (|l#5@@22| Int) (|l#6@@14| T@$1_XUS_XUS) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29) (ite  (and (>= j@@29 |l#0@@24|) (< j@@29 |l#1@@23|)) (ite (< j@@29 |l#2@@22|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@22| j@@29) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@22| (+ j@@29 |l#5@@22|))) |l#6@@14|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |522|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]Vec_22899|) (|l#4@@23| |T@[Int]Vec_22899|) (|l#5@@23| Int) (|l#6@@15| T@Vec_22899) (i@@98 Int) ) (! (= (|Select__T@[Int]Vec_22899_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98) (ite  (and (>= i@@98 |l#0@@25|) (< i@@98 |l#1@@24|)) (ite (< i@@98 |l#2@@23|) (|Select__T@[Int]Vec_22899_| |l#3@@23| i@@98) (|Select__T@[Int]Vec_22899_| |l#4@@23| (- i@@98 |l#5@@23|))) |l#6@@15|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |523|
 :pattern ( (|Select__T@[Int]Vec_22899_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]Vec_22899|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@Vec_22899) (i@@99 Int) ) (! (= (|Select__T@[Int]Vec_22899_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99) (ite  (and (<= |l#0@@26| i@@99) (< i@@99 |l#1@@25|)) (|Select__T@[Int]Vec_22899_| |l#2@@24| (- (- |l#3@@24| i@@99) |l#4@@24|)) |l#5@@24|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |524|
 :pattern ( (|Select__T@[Int]Vec_22899_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]Vec_22899|) (|l#4@@25| |T@[Int]Vec_22899|) (|l#5@@25| Int) (|l#6@@16| T@Vec_22899) (j@@30 Int) ) (! (= (|Select__T@[Int]Vec_22899_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30) (ite  (and (>= j@@30 |l#0@@27|) (< j@@30 |l#1@@26|)) (ite (< j@@30 |l#2@@25|) (|Select__T@[Int]Vec_22899_| |l#3@@25| j@@30) (|Select__T@[Int]Vec_22899_| |l#4@@25| (+ j@@30 |l#5@@25|))) |l#6@@16|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |525|
 :pattern ( (|Select__T@[Int]Vec_22899_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]Bool|) (|l#4@@26| |T@[Int]Bool|) (|l#5@@26| Int) (|l#6@@17| Bool) (i@@100 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100) (ite  (and (>= i@@100 |l#0@@28|) (< i@@100 |l#1@@27|)) (ite (< i@@100 |l#2@@26|) (|Select__T@[Int]Bool_| |l#3@@26| i@@100) (|Select__T@[Int]Bool_| |l#4@@26| (- i@@100 |l#5@@26|))) |l#6@@17|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |526|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]Bool|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| Bool) (i@@101 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101) (ite  (and (<= |l#0@@29| i@@101) (< i@@101 |l#1@@28|)) (|Select__T@[Int]Bool_| |l#2@@27| (- (- |l#3@@27| i@@101) |l#4@@27|)) |l#5@@27|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |527|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]Bool|) (|l#4@@28| |T@[Int]Bool|) (|l#5@@28| Int) (|l#6@@18| Bool) (j@@31 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31) (ite  (and (>= j@@31 |l#0@@30|) (< j@@31 |l#1@@29|)) (ite (< j@@31 |l#2@@28|) (|Select__T@[Int]Bool_| |l#3@@28| j@@31) (|Select__T@[Int]Bool_| |l#4@@28| (+ j@@31 |l#5@@28|))) |l#6@@18|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |528|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]Int|) (|l#4@@29| |T@[Int]Int|) (|l#5@@29| Int) (|l#6@@19| Int) (i@@102 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102) (ite  (and (>= i@@102 |l#0@@31|) (< i@@102 |l#1@@30|)) (ite (< i@@102 |l#2@@29|) (|Select__T@[Int]Int_| |l#3@@29| i@@102) (|Select__T@[Int]Int_| |l#4@@29| (- i@@102 |l#5@@29|))) |l#6@@19|))
 :qid |AccountAdministrationScriptsbpl.73:19|
 :skolemid |529|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]Int|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| Int) (i@@103 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103) (ite  (and (<= |l#0@@32| i@@103) (< i@@103 |l#1@@31|)) (|Select__T@[Int]Int_| |l#2@@30| (- (- |l#3@@30| i@@103) |l#4@@30|)) |l#5@@30|))
 :qid |AccountAdministrationScriptsbpl.82:30|
 :skolemid |530|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]Int|) (|l#4@@31| |T@[Int]Int|) (|l#5@@31| Int) (|l#6@@20| Int) (j@@32 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32) (ite  (and (>= j@@32 |l#0@@33|) (< j@@32 |l#1@@32|)) (ite (< j@@32 |l#2@@31|) (|Select__T@[Int]Int_| |l#3@@31| j@@32) (|Select__T@[Int]Int_| |l#4@@31| (+ j@@32 |l#5@@31|))) |l#6@@20|))
 :qid |AccountAdministrationScriptsbpl.63:20|
 :skolemid |531|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32))
)))
(assert (forall ((|l#0@@34| |T@[$EventRep]Int|) (|l#1@@33| |T@[$EventRep]Int|) (v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51) (- (|Select__T@[$EventRep]Int_| |l#0@@34| v@@51) (|Select__T@[$EventRep]Int_| |l#1@@33| v@@51)))
 :qid |AccountAdministrationScriptsbpl.154:29|
 :skolemid |532|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51))
)))
; Valid

