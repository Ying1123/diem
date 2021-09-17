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
(declare-datatypes ((T@$Memory_242387 0)) ((($Memory_242387 (|domain#$Memory_242387| |T@[Int]Bool|) (|contents#$Memory_242387| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_204552 0)) (((Vec_204552 (|v#Vec_204552| |T@[Int]#0|) (|l#Vec_204552| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_252141 0)) ((($Memory_252141 (|domain#$Memory_252141| |T@[Int]Bool|) (|contents#$Memory_252141| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_252070 0)) ((($Memory_252070 (|domain#$Memory_252070| |T@[Int]Bool|) (|contents#$Memory_252070| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_251827 0)) ((($Memory_251827 (|domain#$Memory_251827| |T@[Int]Bool|) (|contents#$Memory_251827| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_251756 0)) ((($Memory_251756 (|domain#$Memory_251756| |T@[Int]Bool|) (|contents#$Memory_251756| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_251685 0)) ((($Memory_251685 (|domain#$Memory_251685| |T@[Int]Bool|) (|contents#$Memory_251685| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_263753 0)) ((($Memory_263753 (|domain#$Memory_263753| |T@[Int]Bool|) (|contents#$Memory_263753| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_251517 0)) ((($Memory_251517 (|domain#$Memory_251517| |T@[Int]Bool|) (|contents#$Memory_251517| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_264008 0)) ((($Memory_264008 (|domain#$Memory_264008| |T@[Int]Bool|) (|contents#$Memory_264008| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_264108 0)) ((($Memory_264108 (|domain#$Memory_264108| |T@[Int]Bool|) (|contents#$Memory_264108| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_263436 0)) ((($Memory_263436 (|domain#$Memory_263436| |T@[Int]Bool|) (|contents#$Memory_263436| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_228768 0)) (((Vec_228768 (|v#Vec_228768| |T@[Int]$1_XDX_XDX|) (|l#Vec_228768| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_231448 0)) (((Vec_231448 (|v#Vec_231448| |T@[Int]$1_XUS_XUS|) (|l#Vec_231448| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_374945 0)) ((($Memory_374945 (|domain#$Memory_374945| |T@[Int]Bool|) (|contents#$Memory_374945| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_374658 0)) ((($Memory_374658 (|domain#$Memory_374658| |T@[Int]Bool|) (|contents#$Memory_374658| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251349 0)) ((($Memory_251349 (|domain#$Memory_251349| |T@[Int]Bool|) (|contents#$Memory_251349| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251110 0)) ((($Memory_251110 (|domain#$Memory_251110| |T@[Int]Bool|) (|contents#$Memory_251110| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_251999 0)) ((($Memory_251999 (|domain#$Memory_251999| |T@[Int]Bool|) (|contents#$Memory_251999| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_360639 0)) ((($Memory_360639 (|domain#$Memory_360639| |T@[Int]Bool|) (|contents#$Memory_360639| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_360575 0)) ((($Memory_360575 (|domain#$Memory_360575| |T@[Int]Bool|) (|contents#$Memory_360575| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_360511 0)) ((($Memory_360511 (|domain#$Memory_360511| |T@[Int]Bool|) (|contents#$Memory_360511| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_361006 0)) ((($Memory_361006 (|domain#$Memory_361006| |T@[Int]Bool|) (|contents#$Memory_361006| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_360919 0)) ((($Memory_360919 (|domain#$Memory_360919| |T@[Int]Bool|) (|contents#$Memory_360919| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_388841 0)) ((($Memory_388841 (|domain#$Memory_388841| |T@[Int]Bool|) (|contents#$Memory_388841| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_366833 0)) ((($Memory_366833 (|domain#$Memory_366833| |T@[Int]Bool|) (|contents#$Memory_366833| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_263668 0)) ((($Memory_263668 (|domain#$Memory_263668| |T@[Int]Bool|) (|contents#$Memory_263668| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_366752 0)) ((($Memory_366752 (|domain#$Memory_366752| |T@[Int]Bool|) (|contents#$Memory_366752| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_251181 0)) ((($Memory_251181 (|domain#$Memory_251181| |T@[Int]Bool|) (|contents#$Memory_251181| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_263608 0)) ((($Memory_263608 (|domain#$Memory_263608| |T@[Int]Bool|) (|contents#$Memory_263608| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_366671 0)) ((($Memory_366671 (|domain#$Memory_366671| |T@[Int]Bool|) (|contents#$Memory_366671| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251420 0)) ((($Memory_251420 (|domain#$Memory_251420| |T@[Int]Bool|) (|contents#$Memory_251420| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_273880 0)) ((($Memory_273880 (|domain#$Memory_273880| |T@[Int]Bool|) (|contents#$Memory_273880| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_273793 0)) ((($Memory_273793 (|domain#$Memory_273793| |T@[Int]Bool|) (|contents#$Memory_273793| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_273706 0)) ((($Memory_273706 (|domain#$Memory_273706| |T@[Int]Bool|) (|contents#$Memory_273706| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_273619 0)) ((($Memory_273619 (|domain#$Memory_273619| |T@[Int]Bool|) (|contents#$Memory_273619| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_273532 0)) ((($Memory_273532 (|domain#$Memory_273532| |T@[Int]Bool|) (|contents#$Memory_273532| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_273445 0)) ((($Memory_273445 (|domain#$Memory_273445| |T@[Int]Bool|) (|contents#$Memory_273445| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_273358 0)) ((($Memory_273358 (|domain#$Memory_273358| |T@[Int]Bool|) (|contents#$Memory_273358| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_250871 0)) ((($Memory_250871 (|domain#$Memory_250871| |T@[Int]Bool|) (|contents#$Memory_250871| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_272142 0)) ((($Memory_272142 (|domain#$Memory_272142| |T@[Int]Bool|) (|contents#$Memory_272142| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_250712 0)) ((($Memory_250712 (|domain#$Memory_250712| |T@[Int]Bool|) (|contents#$Memory_250712| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_272061 0)) ((($Memory_272061 (|domain#$Memory_272061| |T@[Int]Bool|) (|contents#$Memory_272061| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_250303 0)) ((($Memory_250303 (|domain#$Memory_250303| |T@[Int]Bool|) (|contents#$Memory_250303| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_250619 0)) ((($Memory_250619 (|domain#$Memory_250619| |T@[Int]Bool|) (|contents#$Memory_250619| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_202698 0)) (((Vec_202698 (|v#Vec_202698| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_202698| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_202698) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_202659 0)) (((Vec_202659 (|v#Vec_202659| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_202659| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_202659) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_394718 0)) ((($Memory_394718 (|domain#$Memory_394718| |T@[Int]Bool|) (|contents#$Memory_394718| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_202659) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_30471 0)) (((Vec_30471 (|v#Vec_30471| |T@[Int]Int|) (|l#Vec_30471| Int) ) ) ))
(declare-sort |T@[Int]Vec_30471| 0)
(declare-datatypes ((T@Vec_202897 0)) (((Vec_202897 (|v#Vec_202897| |T@[Int]Vec_30471|) (|l#Vec_202897| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_202897) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_251601 0)) ((($Memory_251601 (|domain#$Memory_251601| |T@[Int]Bool|) (|contents#$Memory_251601| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_202897) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_250942 0)) ((($Memory_250942 (|domain#$Memory_250942| |T@[Int]Bool|) (|contents#$Memory_250942| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_30471) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_30471) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_252225 0)) ((($Memory_252225 (|domain#$Memory_252225| |T@[Int]Bool|) (|contents#$Memory_252225| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_30471) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_271928 0)) ((($Memory_271928 (|domain#$Memory_271928| |T@[Int]Bool|) (|contents#$Memory_271928| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_30471) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_263336 0)) ((($Memory_263336 (|domain#$Memory_263336| |T@[Int]Bool|) (|contents#$Memory_263336| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_30471) (|$base_url#$1_DualAttestation_Credential| T@Vec_30471) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_30471) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_263223 0)) ((($Memory_263223 (|domain#$Memory_263223| |T@[Int]Bool|) (|contents#$Memory_263223| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_203324 0)) (((Vec_203324 (|v#Vec_203324| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_203324| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_203324) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_263521 0)) ((($Memory_263521 (|domain#$Memory_263521| |T@[Int]Bool|) (|contents#$Memory_263521| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_203182 0)) (((Vec_203182 (|v#Vec_203182| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_203182| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_203182) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_367317 0)) ((($Memory_367317 (|domain#$Memory_367317| |T@[Int]Bool|) (|contents#$Memory_367317| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_203143 0)) (((Vec_203143 (|v#Vec_203143| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_203143| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_203143) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_367200 0)) ((($Memory_367200 (|domain#$Memory_367200| |T@[Int]Bool|) (|contents#$Memory_367200| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_203104 0)) (((Vec_203104 (|v#Vec_203104| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_203104| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_203104) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_367083 0)) ((($Memory_367083 (|domain#$Memory_367083| |T@[Int]Bool|) (|contents#$Memory_367083| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_30471) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_360210 0)) ((($Memory_360210 (|domain#$Memory_360210| |T@[Int]Bool|) (|contents#$Memory_360210| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_30471) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251265 0)) ((($Memory_251265 (|domain#$Memory_251265| |T@[Int]Bool|) (|contents#$Memory_251265| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_30471) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251026 0)) ((($Memory_251026 (|domain#$Memory_251026| |T@[Int]Bool|) (|contents#$Memory_251026| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_30471) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_30471) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_202620 0)) (((Vec_202620 (|v#Vec_202620| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_202620| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_202620) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_202840 0)) (((Vec_202840 (|v#Vec_202840| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_202840| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_202840) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_250798 0)) ((($Memory_250798 (|domain#$Memory_250798| |T@[Int]Bool|) (|contents#$Memory_250798| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_260857 0)) ((($Memory_260857 (|domain#$Memory_260857| |T@[Int]Bool|) (|contents#$Memory_260857| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_258720 0)) ((($Memory_258720 (|domain#$Memory_258720| |T@[Int]Bool|) (|contents#$Memory_258720| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_250432 0)) ((($Memory_250432 (|domain#$Memory_250432| |T@[Int]Bool|) (|contents#$Memory_250432| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_249750 0)) ((($Memory_249750 (|domain#$Memory_249750| |T@[Int]Bool|) (|contents#$Memory_249750| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_30471) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_30471) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_30471) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_30471) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_30471) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_30471) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_30471) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_30471) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_30471) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_30471) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_202527 0)) (((Multiset_202527 (|v#Multiset_202527| |T@[$EventRep]Int|) (|l#Multiset_202527| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_202527| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_202527|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_492569 0)) ((($Mutation_492569 (|l#$Mutation_492569| T@$Location) (|p#$Mutation_492569| T@Vec_30471) (|v#$Mutation_492569| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_492524 0)) ((($Mutation_492524 (|l#$Mutation_492524| T@$Location) (|p#$Mutation_492524| T@Vec_30471) (|v#$Mutation_492524| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_380054 0)) ((($Mutation_380054 (|l#$Mutation_380054| T@$Location) (|p#$Mutation_380054| T@Vec_30471) (|v#$Mutation_380054| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_98607 0)) ((($Mutation_98607 (|l#$Mutation_98607| T@$Location) (|p#$Mutation_98607| T@Vec_30471) (|v#$Mutation_98607| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_372811 0)) ((($Mutation_372811 (|l#$Mutation_372811| T@$Location) (|p#$Mutation_372811| T@Vec_30471) (|v#$Mutation_372811| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_358899 0)) ((($Mutation_358899 (|l#$Mutation_358899| T@$Location) (|p#$Mutation_358899| T@Vec_30471) (|v#$Mutation_358899| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_284641 0)) ((($Mutation_284641 (|l#$Mutation_284641| T@$Location) (|p#$Mutation_284641| T@Vec_30471) (|v#$Mutation_284641| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-datatypes ((T@$Mutation_284595 0)) ((($Mutation_284595 (|l#$Mutation_284595| T@$Location) (|p#$Mutation_284595| T@Vec_30471) (|v#$Mutation_284595| |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$Mutation_281991 0)) ((($Mutation_281991 (|l#$Mutation_281991| T@$Location) (|p#$Mutation_281991| T@Vec_30471) (|v#$Mutation_281991| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_281945 0)) ((($Mutation_281945 (|l#$Mutation_281945| T@$Location) (|p#$Mutation_281945| T@Vec_30471) (|v#$Mutation_281945| |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_279341 0)) ((($Mutation_279341 (|l#$Mutation_279341| T@$Location) (|p#$Mutation_279341| T@Vec_30471) (|v#$Mutation_279341| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-datatypes ((T@$Mutation_279295 0)) ((($Mutation_279295 (|l#$Mutation_279295| T@$Location) (|p#$Mutation_279295| T@Vec_30471) (|v#$Mutation_279295| |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_276691 0)) ((($Mutation_276691 (|l#$Mutation_276691| T@$Location) (|p#$Mutation_276691| T@Vec_30471) (|v#$Mutation_276691| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_276645 0)) ((($Mutation_276645 (|l#$Mutation_276645| T@$Location) (|p#$Mutation_276645| T@Vec_30471) (|v#$Mutation_276645| |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$Mutation_273959 0)) ((($Mutation_273959 (|l#$Mutation_273959| T@$Location) (|p#$Mutation_273959| T@Vec_30471) (|v#$Mutation_273959| |T@$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_266060 0)) ((($Mutation_266060 (|l#$Mutation_266060| T@$Location) (|p#$Mutation_266060| T@Vec_30471) (|v#$Mutation_266060| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_262434 0)) ((($Mutation_262434 (|l#$Mutation_262434| T@$Location) (|p#$Mutation_262434| T@Vec_30471) (|v#$Mutation_262434| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_262393 0)) ((($Mutation_262393 (|l#$Mutation_262393| T@$Location) (|p#$Mutation_262393| T@Vec_30471) (|v#$Mutation_262393| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_250245 0)) ((($Mutation_250245 (|l#$Mutation_250245| T@$Location) (|p#$Mutation_250245| T@Vec_30471) (|v#$Mutation_250245| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_243018 0)) ((($Mutation_243018 (|l#$Mutation_243018| T@$Location) (|p#$Mutation_243018| T@Vec_30471) (|v#$Mutation_243018| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_30471) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_235875 0)) ((($Mutation_235875 (|l#$Mutation_235875| T@$Location) (|p#$Mutation_235875| T@Vec_30471) (|v#$Mutation_235875| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$Mutation_234787 0)) ((($Mutation_234787 (|l#$Mutation_234787| T@$Location) (|p#$Mutation_234787| T@Vec_30471) (|v#$Mutation_234787| T@Vec_202897) ) ) ))
(declare-datatypes ((T@$Mutation_233078 0)) ((($Mutation_233078 (|l#$Mutation_233078| T@$Location) (|p#$Mutation_233078| T@Vec_30471) (|v#$Mutation_233078| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_232091 0)) ((($Mutation_232091 (|l#$Mutation_232091| T@$Location) (|p#$Mutation_232091| T@Vec_30471) (|v#$Mutation_232091| T@Vec_231448) ) ) ))
(declare-datatypes ((T@$Mutation_230398 0)) ((($Mutation_230398 (|l#$Mutation_230398| T@$Location) (|p#$Mutation_230398| T@Vec_30471) (|v#$Mutation_230398| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_229411 0)) ((($Mutation_229411 (|l#$Mutation_229411| T@$Location) (|p#$Mutation_229411| T@Vec_30471) (|v#$Mutation_229411| T@Vec_228768) ) ) ))
(declare-datatypes ((T@$Mutation_227718 0)) ((($Mutation_227718 (|l#$Mutation_227718| T@$Location) (|p#$Mutation_227718| T@Vec_30471) (|v#$Mutation_227718| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_226731 0)) ((($Mutation_226731 (|l#$Mutation_226731| T@$Location) (|p#$Mutation_226731| T@Vec_30471) (|v#$Mutation_226731| T@Vec_202620) ) ) ))
(declare-datatypes ((T@$Mutation_225076 0)) ((($Mutation_225076 (|l#$Mutation_225076| T@$Location) (|p#$Mutation_225076| T@Vec_30471) (|v#$Mutation_225076| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_224089 0)) ((($Mutation_224089 (|l#$Mutation_224089| T@$Location) (|p#$Mutation_224089| T@Vec_30471) (|v#$Mutation_224089| T@Vec_203324) ) ) ))
(declare-datatypes ((T@$Mutation_222411 0)) ((($Mutation_222411 (|l#$Mutation_222411| T@$Location) (|p#$Mutation_222411| T@Vec_30471) (|v#$Mutation_222411| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_221424 0)) ((($Mutation_221424 (|l#$Mutation_221424| T@$Location) (|p#$Mutation_221424| T@Vec_30471) (|v#$Mutation_221424| T@Vec_203104) ) ) ))
(declare-datatypes ((T@$Mutation_219715 0)) ((($Mutation_219715 (|l#$Mutation_219715| T@$Location) (|p#$Mutation_219715| T@Vec_30471) (|v#$Mutation_219715| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_218728 0)) ((($Mutation_218728 (|l#$Mutation_218728| T@$Location) (|p#$Mutation_218728| T@Vec_30471) (|v#$Mutation_218728| T@Vec_203143) ) ) ))
(declare-datatypes ((T@$Mutation_217019 0)) ((($Mutation_217019 (|l#$Mutation_217019| T@$Location) (|p#$Mutation_217019| T@Vec_30471) (|v#$Mutation_217019| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_216032 0)) ((($Mutation_216032 (|l#$Mutation_216032| T@$Location) (|p#$Mutation_216032| T@Vec_30471) (|v#$Mutation_216032| T@Vec_203182) ) ) ))
(declare-datatypes ((T@$Mutation_214323 0)) ((($Mutation_214323 (|l#$Mutation_214323| T@$Location) (|p#$Mutation_214323| T@Vec_30471) (|v#$Mutation_214323| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_213336 0)) ((($Mutation_213336 (|l#$Mutation_213336| T@$Location) (|p#$Mutation_213336| T@Vec_30471) (|v#$Mutation_213336| T@Vec_202840) ) ) ))
(declare-datatypes ((T@$Mutation_211536 0)) ((($Mutation_211536 (|l#$Mutation_211536| T@$Location) (|p#$Mutation_211536| T@Vec_30471) (|v#$Mutation_211536| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_210549 0)) ((($Mutation_210549 (|l#$Mutation_210549| T@$Location) (|p#$Mutation_210549| T@Vec_30471) (|v#$Mutation_210549| T@Vec_202698) ) ) ))
(declare-datatypes ((T@$Mutation_208884 0)) ((($Mutation_208884 (|l#$Mutation_208884| T@$Location) (|p#$Mutation_208884| T@Vec_30471) (|v#$Mutation_208884| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_207897 0)) ((($Mutation_207897 (|l#$Mutation_207897| T@$Location) (|p#$Mutation_207897| T@Vec_30471) (|v#$Mutation_207897| T@Vec_202659) ) ) ))
(declare-datatypes ((T@$Mutation_206184 0)) ((($Mutation_206184 (|l#$Mutation_206184| T@$Location) (|p#$Mutation_206184| T@Vec_30471) (|v#$Mutation_206184| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_205197 0)) ((($Mutation_205197 (|l#$Mutation_205197| T@$Location) (|p#$Mutation_205197| T@Vec_30471) (|v#$Mutation_205197| T@Vec_204552) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_204552 T@Vec_204552) Bool)
(declare-fun InRangeVec_182440 (T@Vec_204552 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_204552) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_204552 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_202659 T@Vec_202659) Bool)
(declare-fun InRangeVec_182641 (T@Vec_202659 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_202659) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_202659 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_202698 T@Vec_202698) Bool)
(declare-fun InRangeVec_182842 (T@Vec_202698 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_202698) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_202698 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_202840 T@Vec_202840) Bool)
(declare-fun InRangeVec_183043 (T@Vec_202840 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_30471 T@Vec_30471) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_202840) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_202840 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_203182 T@Vec_203182) Bool)
(declare-fun InRangeVec_183244 (T@Vec_203182 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_203182) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_203182 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_203143 T@Vec_203143) Bool)
(declare-fun InRangeVec_183445 (T@Vec_203143 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_203143) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_203143 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_203104 T@Vec_203104) Bool)
(declare-fun InRangeVec_183646 (T@Vec_203104 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_203104) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_203104 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_203324 T@Vec_203324) Bool)
(declare-fun InRangeVec_183847 (T@Vec_203324 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_203324) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_203324 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_202620 T@Vec_202620) Bool)
(declare-fun InRangeVec_184048 (T@Vec_202620 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_202620) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_202620 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_228768 T@Vec_228768) Bool)
(declare-fun InRangeVec_184249 (T@Vec_228768 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_228768) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_228768 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_231448 T@Vec_231448) Bool)
(declare-fun InRangeVec_184450 (T@Vec_231448 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_231448) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_231448 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_202897 T@Vec_202897) Bool)
(declare-fun InRangeVec_234210 (T@Vec_202897 Int) Bool)
(declare-fun |Select__T@[Int]Vec_30471_| (|T@[Int]Vec_30471| Int) T@Vec_30471)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_202897) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_30471) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_202897 T@Vec_30471) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_30471 T@Vec_30471) Bool)
(declare-fun InRangeVec_16728 (T@Vec_30471 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_30471) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_30471 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_30471 T@Vec_30471) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_30471) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_30471 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_30471 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_30471) T@Vec_30471)
(declare-fun $1_Hash_sha3 (T@Vec_30471) T@Vec_30471)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_30471) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_30471 T@Vec_30471 T@Vec_30471) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_202527_| (|T@[$1_Event_EventHandle]Multiset_202527| T@$1_Event_EventHandle) T@Multiset_202527)
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
(declare-fun |$IsValid'$1_Option_Option'u64''| (|T@$1_Option_Option'u64'|) Bool)
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
(declare-fun $choice_0 (T@Vec_202840 Int) Int)
(declare-fun IndexOfVec_30471 (T@Vec_30471 Int) Int)
(declare-fun IndexOfVec_202620 (T@Vec_202620 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_202659 (T@Vec_202659 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_202698 (T@Vec_202698 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_202840 (T@Vec_202840 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_202897 (T@Vec_202897 T@Vec_30471) Int)
(declare-fun IndexOfVec_203104 (T@Vec_203104 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_203143 (T@Vec_203143 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_203182 (T@Vec_203182 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_203324 (T@Vec_203324 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_204552 (T@Vec_204552 |T@#0|) Int)
(declare-fun IndexOfVec_228768 (T@Vec_228768 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_231448 (T@Vec_231448 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_202527| |T@[$1_Event_EventHandle]Multiset_202527|) |T@[$1_Event_EventHandle]Multiset_202527|)
(declare-fun |lambda#42| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#25| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#28| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#30| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#31| (Int Int |T@[Int]$1_XDX_XDX| Int Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#32| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#33| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#34| (Int Int |T@[Int]$1_XUS_XUS| Int Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#35| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_30471| |T@[Int]Vec_30471| Int T@Vec_30471) |T@[Int]Vec_30471|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_30471| Int Int T@Vec_30471) |T@[Int]Vec_30471|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_30471| |T@[Int]Vec_30471| Int T@Vec_30471) |T@[Int]Vec_30471|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#43| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemSystembpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemSystembpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemSystembpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemSystembpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemSystembpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemSystembpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemSystembpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemSystembpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_204552) (v2 T@Vec_204552) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_204552| v1) (|l#Vec_204552| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_182440 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_204552| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_204552| v2) i@@0)))
 :qid |DiemSystembpl.615:13|
 :skolemid |17|
))))
 :qid |DiemSystembpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_204552) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_204552| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_182440 v@@4 i@@1) true)
 :qid |DiemSystembpl.621:13|
 :skolemid |19|
))))
 :qid |DiemSystembpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_204552) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_182440 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@5) i@@3) e))
 :qid |DiemSystembpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_182440 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@5) j) e)))
 :qid |DiemSystembpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemSystembpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_202659) (v2@@0 T@Vec_202659) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_202659| v1@@0) (|l#Vec_202659| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_182641 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v2@@0) i@@4)))
 :qid |DiemSystembpl.796:13|
 :skolemid |24|
))))
 :qid |DiemSystembpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_202659) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_202659| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_182641 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@6) i@@5)))
 :qid |DiemSystembpl.802:13|
 :skolemid |26|
))))
 :qid |DiemSystembpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_202659) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_182641 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@7) i@@7) e@@0))
 :qid |DiemSystembpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_182641 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@7) j@@0) e@@0)))
 :qid |DiemSystembpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemSystembpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_202698) (v2@@1 T@Vec_202698) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_202698| v1@@1) (|l#Vec_202698| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_182842 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v2@@1) i@@8)))
 :qid |DiemSystembpl.977:13|
 :skolemid |31|
))))
 :qid |DiemSystembpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_202698) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_202698| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_182842 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@8) i@@9)))
 :qid |DiemSystembpl.983:13|
 :skolemid |33|
))))
 :qid |DiemSystembpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_202698) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_182842 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@9) i@@11) e@@1))
 :qid |DiemSystembpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_182842 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@9) j@@1) e@@1)))
 :qid |DiemSystembpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemSystembpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_202840) (v2@@2 T@Vec_202840) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_202840| v1@@2) (|l#Vec_202840| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_183043 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12)))))
 :qid |DiemSystembpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemSystembpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_202840) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_202840| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_183043 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@10) i@@13)))
 :qid |DiemSystembpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemSystembpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_202840) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_183043 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemSystembpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_183043 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemSystembpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemSystembpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_203182) (v2@@3 T@Vec_203182) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_203182| v1@@3) (|l#Vec_203182| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_183244 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v2@@3) i@@16)))))
 :qid |DiemSystembpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemSystembpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_203182) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_203182| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_183244 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@12) i@@17)))
 :qid |DiemSystembpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemSystembpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_203182) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_183244 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemSystembpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_183244 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemSystembpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemSystembpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_203143) (v2@@4 T@Vec_203143) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_203143| v1@@4) (|l#Vec_203143| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_183445 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v2@@4) i@@20)))))
 :qid |DiemSystembpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemSystembpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_203143) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_203143| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_183445 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@14) i@@21)))
 :qid |DiemSystembpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemSystembpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_203143) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_183445 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemSystembpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_183445 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemSystembpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemSystembpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_203104) (v2@@5 T@Vec_203104) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_203104| v1@@5) (|l#Vec_203104| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_183646 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v2@@5) i@@24)))))
 :qid |DiemSystembpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemSystembpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_203104) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_203104| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_183646 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@16) i@@25)))
 :qid |DiemSystembpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemSystembpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_203104) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_183646 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemSystembpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_183646 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemSystembpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemSystembpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_203324) (v2@@6 T@Vec_203324) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_203324| v1@@6) (|l#Vec_203324| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_183847 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v2@@6) i@@28))))
 :qid |DiemSystembpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemSystembpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_203324) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_203324| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_183847 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@18) i@@29)))
 :qid |DiemSystembpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemSystembpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_203324) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_183847 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |DiemSystembpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_183847 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |DiemSystembpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemSystembpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_202620) (v2@@7 T@Vec_202620) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_202620| v1@@7) (|l#Vec_202620| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_184048 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v2@@7) i@@32)))))
 :qid |DiemSystembpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemSystembpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_202620) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_202620| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_184048 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@20) i@@33)))
 :qid |DiemSystembpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemSystembpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_202620) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_184048 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |DiemSystembpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_184048 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |DiemSystembpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemSystembpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_228768) (v2@@8 T@Vec_228768) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_228768| v1@@8) (|l#Vec_228768| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_184249 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v2@@8) i@@36)))
 :qid |DiemSystembpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemSystembpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_228768) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_228768| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_184249 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@22) i@@37)))
 :qid |DiemSystembpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemSystembpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_228768) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_184249 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@23) i@@39) e@@8))
 :qid |DiemSystembpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_184249 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@23) j@@8) e@@8)))
 :qid |DiemSystembpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemSystembpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_231448) (v2@@9 T@Vec_231448) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_231448| v1@@9) (|l#Vec_231448| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_184450 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v2@@9) i@@40)))
 :qid |DiemSystembpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemSystembpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_231448) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_231448| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_184450 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@24) i@@41)))
 :qid |DiemSystembpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemSystembpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_231448) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_184450 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@25) i@@43) e@@9))
 :qid |DiemSystembpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_184450 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@25) j@@9) e@@9)))
 :qid |DiemSystembpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemSystembpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_202897) (v2@@10 T@Vec_202897) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_202897| v1@@10) (|l#Vec_202897| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_234210 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v1@@10) i@@44) (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v2@@10) i@@44)))
 :qid |DiemSystembpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemSystembpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_202897) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_202897| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_234210 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@26) i@@45)))
 :qid |DiemSystembpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemSystembpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_202897) (e@@10 T@Vec_30471) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_234210 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@27) i@@47) e@@10))
 :qid |DiemSystembpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_234210 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@27) j@@10) e@@10)))
 :qid |DiemSystembpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemSystembpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_30471) (v2@@11 T@Vec_30471) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_30471| v1@@11) (|l#Vec_30471| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_30471| v2@@11) i@@48)))
 :qid |DiemSystembpl.2787:13|
 :skolemid |101|
))))
 :qid |DiemSystembpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_30471) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_30471| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_30471| v@@28) i@@49)))
 :qid |DiemSystembpl.2793:13|
 :skolemid |103|
))))
 :qid |DiemSystembpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_30471) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@29) i@@51) e@@11))
 :qid |DiemSystembpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@29) j@@11) e@@11)))
 :qid |DiemSystembpl.2806:17|
 :skolemid |106|
)))))
 :qid |DiemSystembpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_30471) (v2@@12 T@Vec_30471) ) (! (= (|$IsEqual'vec'u64''| v1@@12 v2@@12)  (and (= (|l#Vec_30471| v1@@12) (|l#Vec_30471| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_30471| v2@@12) i@@52)))
 :qid |DiemSystembpl.2968:13|
 :skolemid |108|
))))
 :qid |DiemSystembpl.2966:29|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u64''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_30471) ) (! (= (|$IsValid'vec'u64''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_30471| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_30471| v@@30) i@@53)))
 :qid |DiemSystembpl.2974:13|
 :skolemid |110|
))))
 :qid |DiemSystembpl.2972:29|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u64''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_30471) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u64'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@31) i@@55) e@@12))
 :qid |DiemSystembpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@31) j@@12) e@@12)))
 :qid |DiemSystembpl.2987:17|
 :skolemid |113|
)))))
 :qid |DiemSystembpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u64'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_30471) (v2@@13 T@Vec_30471) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13)  (and (= (|l#Vec_30471| v1@@13) (|l#Vec_30471| v2@@13)) (forall ((i@@56 Int) ) (!  (=> (InRangeVec_16728 v1@@13 i@@56) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v1@@13) i@@56) (|Select__T@[Int]Int_| (|v#Vec_30471| v2@@13) i@@56)))
 :qid |DiemSystembpl.3149:13|
 :skolemid |115|
))))
 :qid |DiemSystembpl.3147:28|
 :skolemid |116|
 :pattern ( (|$IsEqual'vec'u8''| v1@@13 v2@@13))
)))
(assert (forall ((v@@32 T@Vec_30471) ) (! (= (|$IsValid'vec'u8''| v@@32)  (and (|$IsValid'u64'| (|l#Vec_30471| v@@32)) (forall ((i@@57 Int) ) (!  (=> (InRangeVec_16728 v@@32 i@@57) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_30471| v@@32) i@@57)))
 :qid |DiemSystembpl.3155:13|
 :skolemid |117|
))))
 :qid |DiemSystembpl.3153:28|
 :skolemid |118|
 :pattern ( (|$IsValid'vec'u8''| v@@32))
)))
(assert (forall ((v@@33 T@Vec_30471) (e@@13 Int) ) (! (let ((i@@58 (|$IndexOfVec'u8'| v@@33 e@@13)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (InRangeVec_16728 v@@33 i@@59)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@33) i@@59) e@@13))
 :qid |DiemSystembpl.3160:13|
 :skolemid |119|
))) (= i@@58 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@58) (InRangeVec_16728 v@@33 i@@58)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@33) i@@58) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@13) (>= j@@13 0)) (< j@@13 i@@58)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@33) j@@13) e@@13)))
 :qid |DiemSystembpl.3168:17|
 :skolemid |120|
)))))
 :qid |DiemSystembpl.3164:15|
 :skolemid |121|
 :pattern ( (|$IndexOfVec'u8'| v@@33 e@@13))
)))
(assert (forall ((v1@@14 T@Vec_30471) (v2@@14 T@Vec_30471) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14)))
 :qid |DiemSystembpl.3341:15|
 :skolemid |122|
 :pattern ( ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14))
)))
(assert (forall ((v1@@15 T@Vec_30471) (v2@@15 T@Vec_30471) ) (! (= (|$IsEqual'vec'u8''| v1@@15 v2@@15) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15)))
 :qid |DiemSystembpl.3357:15|
 :skolemid |123|
 :pattern ( ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15))
)))
(assert (forall ((k1 T@Vec_30471) (k2 T@Vec_30471) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemSystembpl.3428:15|
 :skolemid |124|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_30471) (s2 T@Vec_30471) (k1@@0 T@Vec_30471) (k2@@0 T@Vec_30471) (m1 T@Vec_30471) (m2 T@Vec_30471) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemSystembpl.3431:15|
 :skolemid |125|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_202527_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_202527| stream) 0) (forall ((v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_202527| stream) v@@34) 0)
 :qid |DiemSystembpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystembpl.3492:13|
 :skolemid |126|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemSystembpl.3533:80|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@16)))
 :qid |DiemSystembpl.3539:15|
 :skolemid |129|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemSystembpl.3589:82|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@17 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@17 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@17)))
 :qid |DiemSystembpl.3595:15|
 :skolemid |131|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@17))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemSystembpl.3645:80|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@18 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@18 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@18)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@18))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@18))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@18)))
 :qid |DiemSystembpl.3651:15|
 :skolemid |133|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@18))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemSystembpl.3701:79|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_AdminTransactionEvent) (v2@@19 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@19)))
 :qid |DiemSystembpl.3707:15|
 :skolemid |135|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@19))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemSystembpl.3757:76|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_CreateAccountEvent) (v2@@20 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@20 v2@@20) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@20)))
 :qid |DiemSystembpl.3763:15|
 :skolemid |137|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@20))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemSystembpl.3813:78|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@21 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@21)))
 :qid |DiemSystembpl.3819:15|
 :skolemid |139|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemSystembpl.3869:74|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@22 T@$1_DiemAccount_SentPaymentEvent) (v2@@22 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@22))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@22))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@22))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@22)))
 :qid |DiemSystembpl.3875:15|
 :skolemid |141|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@22))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemSystembpl.3925:69|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@23 T@$1_DiemBlock_NewBlockEvent) (v2@@23 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@23) (|$round#$1_DiemBlock_NewBlockEvent| v2@@23)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@23) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@23))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@23) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@23))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@23) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@23))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@23) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@23)))
 :qid |DiemSystembpl.3931:15|
 :skolemid |143|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@23) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@23))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemSystembpl.3981:70|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@24 T@$1_DiemConfig_NewEpochEvent) (v2@@24 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@24 v2@@24) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@24)))
 :qid |DiemSystembpl.3987:15|
 :skolemid |145|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@24))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemSystembpl.4037:60|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@25 T@$1_Diem_BurnEvent) (v2@@25 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@25) (|$amount#$1_Diem_BurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@25) (|$currency_code#$1_Diem_BurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@25) (|$preburn_address#$1_Diem_BurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@25)))
 :qid |DiemSystembpl.4043:15|
 :skolemid |147|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@25))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemSystembpl.4093:66|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@26 T@$1_Diem_CancelBurnEvent) (v2@@26 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@26) (|$amount#$1_Diem_CancelBurnEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@26) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@26))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@26) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@26)))
 :qid |DiemSystembpl.4099:15|
 :skolemid |149|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@26))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemSystembpl.4149:60|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@27 T@$1_Diem_MintEvent) (v2@@27 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@27) (|$amount#$1_Diem_MintEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@27) (|$currency_code#$1_Diem_MintEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@27) (|$ToEventRep'$1_Diem_MintEvent'| v2@@27)))
 :qid |DiemSystembpl.4155:15|
 :skolemid |151|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@27) (|$ToEventRep'$1_Diem_MintEvent'| v2@@27))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemSystembpl.4205:63|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@28 T@$1_Diem_PreburnEvent) (v2@@28 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@28) (|$amount#$1_Diem_PreburnEvent| v2@@28)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@28) (|$currency_code#$1_Diem_PreburnEvent| v2@@28))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@28) (|$preburn_address#$1_Diem_PreburnEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@28) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@28)))
 :qid |DiemSystembpl.4211:15|
 :skolemid |153|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@28) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@28))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemSystembpl.4261:79|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@29 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@29 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@29) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@29)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@29) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@29))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@29) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@29)))
 :qid |DiemSystembpl.4267:15|
 :skolemid |155|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@29) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@29))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemSystembpl.4317:82|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@30 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@30) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@30)))
 :qid |DiemSystembpl.4323:15|
 :skolemid |157|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@30))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemSystembpl.4373:88|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@31 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@31 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@31) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@31)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@31) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@31))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@31)))
 :qid |DiemSystembpl.4379:15|
 :skolemid |159|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@31))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemSystembpl.4429:72|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@32 T@$1_VASPDomain_VASPDomainEvent) (v2@@32 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@32) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@32)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@32)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@32)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@32) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@32))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@32) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@32)))
 :qid |DiemSystembpl.4435:15|
 :skolemid |161|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@32) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@32))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemSystembpl.4514:61|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemSystembpl.5329:36|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemSystembpl.6830:71|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@2) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@2)))
 :qid |DiemSystembpl.7264:42|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemSystembpl.7276:46|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemSystembpl.7288:64|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemSystembpl.7300:75|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemSystembpl.7312:72|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemSystembpl.7360:55|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemSystembpl.7383:46|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemSystembpl.9127:49|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemSystembpl.9227:71|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemSystembpl.9240:91|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemSystembpl.9253:113|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@13) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@13)))
 :qid |DiemSystembpl.9266:89|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@14)))
 :qid |DiemSystembpl.9279:75|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@15)))
 :qid |DiemSystembpl.9292:73|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@16) true)
 :qid |DiemSystembpl.9306:49|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@17)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@17)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@17))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@17))))
 :qid |DiemSystembpl.9326:48|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@18) true)
 :qid |DiemSystembpl.9343:57|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@19) true)
 :qid |DiemSystembpl.9357:83|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@20) true)
 :qid |DiemSystembpl.9371:103|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@21) true)
 :qid |DiemSystembpl.9385:125|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@22) true)
 :qid |DiemSystembpl.9399:101|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@23) true)
 :qid |DiemSystembpl.9413:87|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@24) true)
 :qid |DiemSystembpl.9427:85|
 :skolemid |280|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@25) true)
 :qid |DiemSystembpl.9441:61|
 :skolemid |281|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@26) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@26)))
 :qid |DiemSystembpl.9455:48|
 :skolemid |282|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@27)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@27)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@27))))
 :qid |DiemSystembpl.18069:45|
 :skolemid |576|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@27))
)))
(assert (forall ((s@@28 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@28) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@28)))
 :qid |DiemSystembpl.18083:51|
 :skolemid |577|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@28))
)))
(assert (forall ((s@@29 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@29)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@29)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@29))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@29))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@29))))
 :qid |DiemSystembpl.18106:48|
 :skolemid |578|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@29))
)))
(assert (forall ((s@@30 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@30) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@30)))
 :qid |DiemSystembpl.24887:49|
 :skolemid |841|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@30))
)))
(assert (forall ((s@@31 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@31) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@31)))
 :qid |DiemSystembpl.24900:65|
 :skolemid |842|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@32) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@32)))
 :qid |DiemSystembpl.25441:45|
 :skolemid |843|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@33) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@33)))
 :qid |DiemSystembpl.25454:45|
 :skolemid |844|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@34) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@34)))
 :qid |DiemSystembpl.25467:37|
 :skolemid |845|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@35) true)
 :qid |DiemSystembpl.25480:55|
 :skolemid |846|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@36) true)
 :qid |DiemSystembpl.25494:55|
 :skolemid |847|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@37)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@37))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@37))))
 :qid |DiemSystembpl.25514:38|
 :skolemid |848|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@38)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@38))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@38))))
 :qid |DiemSystembpl.25536:44|
 :skolemid |849|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))))
 :qid |DiemSystembpl.25588:53|
 :skolemid |850|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@40)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))))
 :qid |DiemSystembpl.25661:53|
 :skolemid |851|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@41)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@41)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@41))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@41))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@41))))
 :qid |DiemSystembpl.25734:45|
 :skolemid |852|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@42) true)
 :qid |DiemSystembpl.25771:55|
 :skolemid |853|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@43) true)
 :qid |DiemSystembpl.25785:55|
 :skolemid |854|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@44) true)
 :qid |DiemSystembpl.25799:47|
 :skolemid |855|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@45)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@45))))
 :qid |DiemSystembpl.25816:38|
 :skolemid |856|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@46) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@46)))
 :qid |DiemSystembpl.25830:48|
 :skolemid |857|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@47) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@47)))
 :qid |DiemSystembpl.25844:48|
 :skolemid |858|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@48) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@48)))
 :qid |DiemSystembpl.25858:40|
 :skolemid |859|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@48))
)))
(assert (forall ((s@@49 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@49)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@49)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@49))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@49))))
 :qid |DiemSystembpl.25878:41|
 :skolemid |860|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@50)))
 :qid |DiemSystembpl.25894:53|
 :skolemid |861|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@51) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@51)))
 :qid |DiemSystembpl.25907:53|
 :skolemid |862|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@52) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@52)))
 :qid |DiemSystembpl.25920:45|
 :skolemid |863|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@53))))
 :qid |DiemSystembpl.25936:60|
 :skolemid |864|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@54)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@54)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@54))))
 :qid |DiemSystembpl.25953:60|
 :skolemid |865|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@55)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@55)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@55))))
 :qid |DiemSystembpl.25970:52|
 :skolemid |866|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@55))
)))
(assert (forall ((s@@56 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@56)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@56)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@56))))
 :qid |DiemSystembpl.25987:57|
 :skolemid |867|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@57) true)
 :qid |DiemSystembpl.28160:68|
 :skolemid |868|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@58))))
 :qid |DiemSystembpl.28182:66|
 :skolemid |869|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@59)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@59)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@59))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@59))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@59))))
 :qid |DiemSystembpl.28208:66|
 :skolemid |870|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@60))))
 :qid |DiemSystembpl.28237:56|
 :skolemid |871|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@61))))
 :qid |DiemSystembpl.28267:56|
 :skolemid |872|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |DiemSystembpl.28701:31|
 :skolemid |873|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |DiemSystembpl.29031:31|
 :skolemid |874|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |DiemSystembpl.29050:35|
 :skolemid |875|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |DiemSystembpl.29464:45|
 :skolemid |876|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |DiemSystembpl.29482:50|
 :skolemid |877|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |DiemSystembpl.29498:52|
 :skolemid |878|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |DiemSystembpl.29511:46|
 :skolemid |879|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |DiemSystembpl.29892:38|
 :skolemid |880|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |DiemSystembpl.29906:39|
 :skolemid |881|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |DiemSystembpl.30593:65|
 :skolemid |882|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@72))))
 :qid |DiemSystembpl.30961:60|
 :skolemid |883|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73))))
 :qid |DiemSystembpl.30978:66|
 :skolemid |884|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@74)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@74))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@74))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@74))))
 :qid |DiemSystembpl.31007:50|
 :skolemid |885|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@75) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@75)))
 :qid |DiemSystembpl.31030:45|
 :skolemid |886|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@76)) true))
 :qid |DiemSystembpl.31603:87|
 :skolemid |887|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@77)))
 :qid |DiemSystembpl.31804:47|
 :skolemid |888|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@78)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@78))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@78))))
 :qid |DiemSystembpl.31823:58|
 :skolemid |889|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@79) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@79)))
 :qid |DiemSystembpl.31839:39|
 :skolemid |890|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@80))))
 :qid |DiemSystembpl.31861:58|
 :skolemid |891|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81))))
 :qid |DiemSystembpl.31878:58|
 :skolemid |892|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82) true)
 :qid |DiemSystembpl.31893:51|
 :skolemid |893|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82))
)))
(assert (forall ((s@@83 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83))))
 :qid |DiemSystembpl.31910:60|
 :skolemid |894|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@84)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@84))))
 :qid |DiemSystembpl.32196:47|
 :skolemid |895|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@85))))
 :qid |DiemSystembpl.32222:63|
 :skolemid |896|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@86)))
 :qid |DiemSystembpl.32237:57|
 :skolemid |897|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@87)))
 :qid |DiemSystembpl.32250:55|
 :skolemid |898|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@88)))
 :qid |DiemSystembpl.32264:55|
 :skolemid |899|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88))
)))
(assert (forall ((s@@89 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@89) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@89)))
 :qid |DiemSystembpl.32278:47|
 :skolemid |900|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@90)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@90)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@90))))
 :qid |DiemSystembpl.32295:54|
 :skolemid |901|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@91) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@91)))
 :qid |DiemSystembpl.32309:55|
 :skolemid |902|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@92) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@92)))
 :qid |DiemSystembpl.32322:57|
 :skolemid |903|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@93))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@93))))
 :qid |DiemSystembpl.32344:56|
 :skolemid |904|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@94)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@94)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@94))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@94))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@94))))
 :qid |DiemSystembpl.32371:52|
 :skolemid |905|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@95) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@95)))
 :qid |DiemSystembpl.32389:54|
 :skolemid |906|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@95))
)))
(assert (forall ((s@@96 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@96) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@96)))
 :qid |DiemSystembpl.49413:55|
 :skolemid |1854|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@97)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@97)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@97))))
 :qid |DiemSystembpl.49434:47|
 :skolemid |1855|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@98)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@98)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@98))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@98))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@98))))
 :qid |DiemSystembpl.49458:47|
 :skolemid |1856|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@99) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@99)))
 :qid |DiemSystembpl.49692:63|
 :skolemid |1857|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@100) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@100)))
 :qid |DiemSystembpl.50027:49|
 :skolemid |1858|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@101)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@101)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@101))))
 :qid |DiemSystembpl.50069:49|
 :skolemid |1859|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@102)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@102)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@102))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@102))))
 :qid |DiemSystembpl.50098:48|
 :skolemid |1860|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@102))
)))
(assert (forall ((s@@103 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@103) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@103)))
 :qid |DiemSystembpl.50383:47|
 :skolemid |1861|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@103))
)))
(assert (forall ((validators T@Vec_202840) (addr Int) ) (!  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| validators) (|$IsValid'address'| addr)) (=> (exists ((i@@60 Int) ) (!  (and (and (|$IsValid'num'| i@@60) ($InRange ($Range 0 (|l#Vec_202840| validators)) i@@60)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| validators) i@@60)) addr))
 :qid |DiemSystembpl.52087:13|
 :skolemid |1952|
)) (let ((i@@61 ($choice_0 validators addr)))
 (and (and (and (|$IsValid'num'| i@@61) ($InRange ($Range 0 (|l#Vec_202840| validators)) i@@61)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| validators) i@@61)) addr)) (let (($$c i@@61))
(forall ((i@@62 Int) ) (!  (=> (< i@@62 $$c) (not (and (and (|$IsValid'num'| i@@62) ($InRange ($Range 0 (|l#Vec_202840| validators)) i@@62)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| validators) i@@62)) addr))))
 :qid |DiemSystembpl.52089:32|
 :skolemid |1953|
)))))))
 :qid |DiemSystembpl.52086:15|
 :skolemid |1954|
)))
(assert (forall ((v@@35 T@Vec_204552) (i@@63 Int) ) (! (= (InRangeVec_182440 v@@35 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_204552| v@@35))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_182440 v@@35 i@@63))
)))
(assert (forall ((v@@36 T@Vec_202659) (i@@64 Int) ) (! (= (InRangeVec_182641 v@@36 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_202659| v@@36))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_182641 v@@36 i@@64))
)))
(assert (forall ((v@@37 T@Vec_202698) (i@@65 Int) ) (! (= (InRangeVec_182842 v@@37 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_202698| v@@37))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_182842 v@@37 i@@65))
)))
(assert (forall ((v@@38 T@Vec_202840) (i@@66 Int) ) (! (= (InRangeVec_183043 v@@38 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_202840| v@@38))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183043 v@@38 i@@66))
)))
(assert (forall ((v@@39 T@Vec_203182) (i@@67 Int) ) (! (= (InRangeVec_183244 v@@39 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_203182| v@@39))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183244 v@@39 i@@67))
)))
(assert (forall ((v@@40 T@Vec_203143) (i@@68 Int) ) (! (= (InRangeVec_183445 v@@40 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_203143| v@@40))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183445 v@@40 i@@68))
)))
(assert (forall ((v@@41 T@Vec_203104) (i@@69 Int) ) (! (= (InRangeVec_183646 v@@41 i@@69)  (and (>= i@@69 0) (< i@@69 (|l#Vec_203104| v@@41))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183646 v@@41 i@@69))
)))
(assert (forall ((v@@42 T@Vec_203324) (i@@70 Int) ) (! (= (InRangeVec_183847 v@@42 i@@70)  (and (>= i@@70 0) (< i@@70 (|l#Vec_203324| v@@42))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183847 v@@42 i@@70))
)))
(assert (forall ((v@@43 T@Vec_202620) (i@@71 Int) ) (! (= (InRangeVec_184048 v@@43 i@@71)  (and (>= i@@71 0) (< i@@71 (|l#Vec_202620| v@@43))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_184048 v@@43 i@@71))
)))
(assert (forall ((v@@44 T@Vec_228768) (i@@72 Int) ) (! (= (InRangeVec_184249 v@@44 i@@72)  (and (>= i@@72 0) (< i@@72 (|l#Vec_228768| v@@44))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_184249 v@@44 i@@72))
)))
(assert (forall ((v@@45 T@Vec_231448) (i@@73 Int) ) (! (= (InRangeVec_184450 v@@45 i@@73)  (and (>= i@@73 0) (< i@@73 (|l#Vec_231448| v@@45))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_184450 v@@45 i@@73))
)))
(assert (forall ((v@@46 T@Vec_202897) (i@@74 Int) ) (! (= (InRangeVec_234210 v@@46 i@@74)  (and (>= i@@74 0) (< i@@74 (|l#Vec_202897| v@@46))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_234210 v@@46 i@@74))
)))
(assert (forall ((v@@47 T@Vec_30471) (i@@75 Int) ) (! (= (InRangeVec_16728 v@@47 i@@75)  (and (>= i@@75 0) (< i@@75 (|l#Vec_30471| v@@47))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@47 i@@75))
)))
(assert (forall ((v@@48 T@Vec_30471) (e@@14 Int) ) (! (let ((i@@76 (IndexOfVec_30471 v@@48 e@@14)))
(ite  (not (exists ((i@@77 Int) ) (!  (and (InRangeVec_16728 v@@48 i@@77) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@48) i@@77) e@@14))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@76 (- 0 1))  (and (and (InRangeVec_16728 v@@48 i@@76) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@48) i@@76) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@76)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@48) j@@14) e@@14)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_30471 v@@48 e@@14))
)))
(assert (forall ((v@@49 T@Vec_202620) (e@@15 T@$1_ValidatorConfig_Config) ) (! (let ((i@@78 (IndexOfVec_202620 v@@49 e@@15)))
(ite  (not (exists ((i@@79 Int) ) (!  (and (InRangeVec_184048 v@@49 i@@79) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@49) i@@79) e@@15))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@78 (- 0 1))  (and (and (InRangeVec_184048 v@@49 i@@78) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@49) i@@78) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@78)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@49) j@@15) e@@15)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_202620 v@@49 e@@15))
)))
(assert (forall ((v@@50 T@Vec_202659) (e@@16 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@80 (IndexOfVec_202659 v@@50 e@@16)))
(ite  (not (exists ((i@@81 Int) ) (!  (and (InRangeVec_182641 v@@50 i@@81) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@50) i@@81) e@@16))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@80 (- 0 1))  (and (and (InRangeVec_182641 v@@50 i@@80) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@50) i@@80) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@80)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@50) j@@16) e@@16)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_202659 v@@50 e@@16))
)))
(assert (forall ((v@@51 T@Vec_202698) (e@@17 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@82 (IndexOfVec_202698 v@@51 e@@17)))
(ite  (not (exists ((i@@83 Int) ) (!  (and (InRangeVec_182842 v@@51 i@@83) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@51) i@@83) e@@17))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@82 (- 0 1))  (and (and (InRangeVec_182842 v@@51 i@@82) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@51) i@@82) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@82)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@51) j@@17) e@@17)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_202698 v@@51 e@@17))
)))
(assert (forall ((v@@52 T@Vec_202840) (e@@18 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@84 (IndexOfVec_202840 v@@52 e@@18)))
(ite  (not (exists ((i@@85 Int) ) (!  (and (InRangeVec_183043 v@@52 i@@85) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@52) i@@85) e@@18))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@84 (- 0 1))  (and (and (InRangeVec_183043 v@@52 i@@84) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@52) i@@84) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@84)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@52) j@@18) e@@18)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_202840 v@@52 e@@18))
)))
(assert (forall ((v@@53 T@Vec_202897) (e@@19 T@Vec_30471) ) (! (let ((i@@86 (IndexOfVec_202897 v@@53 e@@19)))
(ite  (not (exists ((i@@87 Int) ) (!  (and (InRangeVec_234210 v@@53 i@@87) (= (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@53) i@@87) e@@19))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@86 (- 0 1))  (and (and (InRangeVec_234210 v@@53 i@@86) (= (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@53) i@@86) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@86)) (not (= (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@53) j@@19) e@@19)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_202897 v@@53 e@@19))
)))
(assert (forall ((v@@54 T@Vec_203104) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@88 (IndexOfVec_203104 v@@54 e@@20)))
(ite  (not (exists ((i@@89 Int) ) (!  (and (InRangeVec_183646 v@@54 i@@89) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@54) i@@89) e@@20))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@88 (- 0 1))  (and (and (InRangeVec_183646 v@@54 i@@88) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@54) i@@88) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@88)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@54) j@@20) e@@20)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_203104 v@@54 e@@20))
)))
(assert (forall ((v@@55 T@Vec_203143) (e@@21 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@90 (IndexOfVec_203143 v@@55 e@@21)))
(ite  (not (exists ((i@@91 Int) ) (!  (and (InRangeVec_183445 v@@55 i@@91) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@55) i@@91) e@@21))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@90 (- 0 1))  (and (and (InRangeVec_183445 v@@55 i@@90) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@55) i@@90) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@90)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@55) j@@21) e@@21)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_203143 v@@55 e@@21))
)))
(assert (forall ((v@@56 T@Vec_203182) (e@@22 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@92 (IndexOfVec_203182 v@@56 e@@22)))
(ite  (not (exists ((i@@93 Int) ) (!  (and (InRangeVec_183244 v@@56 i@@93) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@56) i@@93) e@@22))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@92 (- 0 1))  (and (and (InRangeVec_183244 v@@56 i@@92) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@56) i@@92) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@92)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@56) j@@22) e@@22)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_203182 v@@56 e@@22))
)))
(assert (forall ((v@@57 T@Vec_203324) (e@@23 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@94 (IndexOfVec_203324 v@@57 e@@23)))
(ite  (not (exists ((i@@95 Int) ) (!  (and (InRangeVec_183847 v@@57 i@@95) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@57) i@@95) e@@23))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@94 (- 0 1))  (and (and (InRangeVec_183847 v@@57 i@@94) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@57) i@@94) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@94)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@57) j@@23) e@@23)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_203324 v@@57 e@@23))
)))
(assert (forall ((v@@58 T@Vec_204552) (e@@24 |T@#0|) ) (! (let ((i@@96 (IndexOfVec_204552 v@@58 e@@24)))
(ite  (not (exists ((i@@97 Int) ) (!  (and (InRangeVec_182440 v@@58 i@@97) (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@58) i@@97) e@@24))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@96 (- 0 1))  (and (and (InRangeVec_182440 v@@58 i@@96) (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@58) i@@96) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@96)) (not (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@58) j@@24) e@@24)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_204552 v@@58 e@@24))
)))
(assert (forall ((v@@59 T@Vec_228768) (e@@25 T@$1_XDX_XDX) ) (! (let ((i@@98 (IndexOfVec_228768 v@@59 e@@25)))
(ite  (not (exists ((i@@99 Int) ) (!  (and (InRangeVec_184249 v@@59 i@@99) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@59) i@@99) e@@25))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@98 (- 0 1))  (and (and (InRangeVec_184249 v@@59 i@@98) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@59) i@@98) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@98)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@59) j@@25) e@@25)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_228768 v@@59 e@@25))
)))
(assert (forall ((v@@60 T@Vec_231448) (e@@26 T@$1_XUS_XUS) ) (! (let ((i@@100 (IndexOfVec_231448 v@@60 e@@26)))
(ite  (not (exists ((i@@101 Int) ) (!  (and (InRangeVec_184450 v@@60 i@@101) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@60) i@@101) e@@26))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@100 (- 0 1))  (and (and (InRangeVec_184450 v@@60 i@@100) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@60) i@@100) e@@26)) (forall ((j@@26 Int) ) (!  (=> (and (>= j@@26 0) (< j@@26 i@@100)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@60) j@@26) e@@26)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_231448 v@@60 e@@26))
)))
(assert (forall ((|l#0| Bool) (i@@102 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@102) |l#0|)
 :qid |DiemSystembpl.275:54|
 :skolemid |1955|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@102))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_202527|) (|l#1| |T@[$1_Event_EventHandle]Multiset_202527|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_202527_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_202527| (|Select__T@[$1_Event_EventHandle]Multiset_202527_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_202527| (|Select__T@[$1_Event_EventHandle]Multiset_202527_| |l#1| handle@@0))))
(Multiset_202527 (|lambda#42| (|v#Multiset_202527| (|Select__T@[$1_Event_EventHandle]Multiset_202527_| |l#0@@0| handle@@0)) (|v#Multiset_202527| (|Select__T@[$1_Event_EventHandle]Multiset_202527_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemSystembpl.3502:13|
 :skolemid |1956|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_202527_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@103 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@103) (ite  (and (>= i@@103 |l#0@@1|) (< i@@103 |l#1@@0|)) (ite (< i@@103 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@103) (|Select__T@[Int]#0_| |l#4| (- i@@103 |l#5|))) |l#6|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1957|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@103))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@104 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@104) (ite  (and (<= |l#0@@2| i@@104) (< i@@104 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@104) |l#4@@0|)) |l#5@@0|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1958|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@104))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@27 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27) (ite  (and (>= j@@27 |l#0@@3|) (< j@@27 |l#1@@2|)) (ite (< j@@27 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@27) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@27 |l#5@@1|))) |l#6@@0|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1959|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@105) (ite  (and (>= i@@105 |l#0@@4|) (< i@@105 |l#1@@3|)) (ite (< i@@105 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@105) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@105 |l#5@@2|))) |l#6@@1|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1960|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@105))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@106) (ite  (and (<= |l#0@@5| i@@106) (< i@@106 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@106) |l#4@@3|)) |l#5@@3|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1961|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@106))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28) (ite  (and (>= j@@28 |l#0@@6|) (< j@@28 |l#1@@5|)) (ite (< j@@28 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@28) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@28 |l#5@@4|))) |l#6@@2|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1962|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@107) (ite  (and (>= i@@107 |l#0@@7|) (< i@@107 |l#1@@6|)) (ite (< i@@107 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@107) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@107 |l#5@@5|))) |l#6@@3|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1963|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@107))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@108) (ite  (and (<= |l#0@@8| i@@108) (< i@@108 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@108) |l#4@@6|)) |l#5@@6|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1964|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@108))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29) (ite  (and (>= j@@29 |l#0@@9|) (< j@@29 |l#1@@8|)) (ite (< j@@29 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@29) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@29 |l#5@@7|))) |l#6@@4|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1965|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@109) (ite  (and (>= i@@109 |l#0@@10|) (< i@@109 |l#1@@9|)) (ite (< i@@109 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@109) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@109 |l#5@@8|))) |l#6@@5|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1966|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@109))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@110) (ite  (and (<= |l#0@@11| i@@110) (< i@@110 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@110) |l#4@@9|)) |l#5@@9|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1967|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@110))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30) (ite  (and (>= j@@30 |l#0@@12|) (< j@@30 |l#1@@11|)) (ite (< j@@30 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@30) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@30 |l#5@@10|))) |l#6@@6|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1968|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@111) (ite  (and (>= i@@111 |l#0@@13|) (< i@@111 |l#1@@12|)) (ite (< i@@111 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@111) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@111 |l#5@@11|))) |l#6@@7|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1969|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@111))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@112) (ite  (and (<= |l#0@@14| i@@112) (< i@@112 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@112) |l#4@@12|)) |l#5@@12|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1970|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@112))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31) (ite  (and (>= j@@31 |l#0@@15|) (< j@@31 |l#1@@14|)) (ite (< j@@31 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@31 |l#5@@13|))) |l#6@@8|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1971|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@113) (ite  (and (>= i@@113 |l#0@@16|) (< i@@113 |l#1@@15|)) (ite (< i@@113 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@113) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@113 |l#5@@14|))) |l#6@@9|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1972|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@113))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@114) (ite  (and (<= |l#0@@17| i@@114) (< i@@114 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@114) |l#4@@15|)) |l#5@@15|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1973|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@114))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32) (ite  (and (>= j@@32 |l#0@@18|) (< j@@32 |l#1@@17|)) (ite (< j@@32 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@32 |l#5@@16|))) |l#6@@10|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1974|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@115) (ite  (and (>= i@@115 |l#0@@19|) (< i@@115 |l#1@@18|)) (ite (< i@@115 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@115) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@115 |l#5@@17|))) |l#6@@11|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1975|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@115))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@116) (ite  (and (<= |l#0@@20| i@@116) (< i@@116 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@116) |l#4@@18|)) |l#5@@18|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1976|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@116))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33) (ite  (and (>= j@@33 |l#0@@21|) (< j@@33 |l#1@@20|)) (ite (< j@@33 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@33) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@33 |l#5@@19|))) |l#6@@12|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1977|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@117) (ite  (and (>= i@@117 |l#0@@22|) (< i@@117 |l#1@@21|)) (ite (< i@@117 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@117) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@117 |l#5@@20|))) |l#6@@13|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1978|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@117))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@118 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@118) (ite  (and (<= |l#0@@23| i@@118) (< i@@118 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@118) |l#4@@21|)) |l#5@@21|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1979|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@118))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34) (ite  (and (>= j@@34 |l#0@@24|) (< j@@34 |l#1@@23|)) (ite (< j@@34 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@34) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@34 |l#5@@22|))) |l#6@@14|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1980|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@119 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@119) (ite  (and (>= i@@119 |l#0@@25|) (< i@@119 |l#1@@24|)) (ite (< i@@119 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@119) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@119 |l#5@@23|))) |l#6@@15|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1981|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@119))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@120 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@120) (ite  (and (<= |l#0@@26| i@@120) (< i@@120 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@120) |l#4@@24|)) |l#5@@24|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1982|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@120))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35) (ite  (and (>= j@@35 |l#0@@27|) (< j@@35 |l#1@@26|)) (ite (< j@@35 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@35) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@35 |l#5@@25|))) |l#6@@16|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1983|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@121 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@121) (ite  (and (>= i@@121 |l#0@@28|) (< i@@121 |l#1@@27|)) (ite (< i@@121 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@121) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@121 |l#5@@26|))) |l#6@@17|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1984|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@121))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@122 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@122) (ite  (and (<= |l#0@@29| i@@122) (< i@@122 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@122) |l#4@@27|)) |l#5@@27|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1985|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@122))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36) (ite  (and (>= j@@36 |l#0@@30|) (< j@@36 |l#1@@29|)) (ite (< j@@36 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@36) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@36 |l#5@@28|))) |l#6@@18|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1986|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@123 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@123) (ite  (and (>= i@@123 |l#0@@31|) (< i@@123 |l#1@@30|)) (ite (< i@@123 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@123) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@123 |l#5@@29|))) |l#6@@19|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1987|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@123))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@124 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@124) (ite  (and (<= |l#0@@32| i@@124) (< i@@124 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@124) |l#4@@30|)) |l#5@@30|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1988|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@124))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@37 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37) (ite  (and (>= j@@37 |l#0@@33|) (< j@@37 |l#1@@32|)) (ite (< j@@37 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@37) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@37 |l#5@@31|))) |l#6@@20|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1989|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_30471|) (|l#4@@32| |T@[Int]Vec_30471|) (|l#5@@32| Int) (|l#6@@21| T@Vec_30471) (i@@125 Int) ) (! (= (|Select__T@[Int]Vec_30471_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@125) (ite  (and (>= i@@125 |l#0@@34|) (< i@@125 |l#1@@33|)) (ite (< i@@125 |l#2@@32|) (|Select__T@[Int]Vec_30471_| |l#3@@32| i@@125) (|Select__T@[Int]Vec_30471_| |l#4@@32| (- i@@125 |l#5@@32|))) |l#6@@21|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1990|
 :pattern ( (|Select__T@[Int]Vec_30471_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@125))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_30471|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_30471) (i@@126 Int) ) (! (= (|Select__T@[Int]Vec_30471_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@126) (ite  (and (<= |l#0@@35| i@@126) (< i@@126 |l#1@@34|)) (|Select__T@[Int]Vec_30471_| |l#2@@33| (- (- |l#3@@33| i@@126) |l#4@@33|)) |l#5@@33|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1991|
 :pattern ( (|Select__T@[Int]Vec_30471_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@126))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_30471|) (|l#4@@34| |T@[Int]Vec_30471|) (|l#5@@34| Int) (|l#6@@22| T@Vec_30471) (j@@38 Int) ) (! (= (|Select__T@[Int]Vec_30471_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38) (ite  (and (>= j@@38 |l#0@@36|) (< j@@38 |l#1@@35|)) (ite (< j@@38 |l#2@@34|) (|Select__T@[Int]Vec_30471_| |l#3@@34| j@@38) (|Select__T@[Int]Vec_30471_| |l#4@@34| (+ j@@38 |l#5@@34|))) |l#6@@22|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1992|
 :pattern ( (|Select__T@[Int]Vec_30471_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@127 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@127) (ite  (and (>= i@@127 |l#0@@37|) (< i@@127 |l#1@@36|)) (ite (< i@@127 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@127) (|Select__T@[Int]Int_| |l#4@@35| (- i@@127 |l#5@@35|))) |l#6@@23|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1993|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@127))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@128 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@128) (ite  (and (<= |l#0@@38| i@@128) (< i@@128 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@128) |l#4@@36|)) |l#5@@36|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1994|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@128))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@39 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39) (ite  (and (>= j@@39 |l#0@@39|) (< j@@39 |l#1@@38|)) (ite (< j@@39 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@39) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@39 |l#5@@37|))) |l#6@@24|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1995|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@61 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@61) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@61) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@61)))
 :qid |DiemSystembpl.154:29|
 :skolemid |1996|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@61))
)))
(assert (forall ((|l#0@@41| Int) (|l#1@@40| Int) (|l#2@@38| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@38| Int) (|l#4@@38| T@$1_DiemSystem_ValidatorInfo) (k Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#43| |l#0@@41| |l#1@@40| |l#2@@38| |l#3@@38| |l#4@@38|) k) (ite  (and (<= |l#0@@41| k) (< k |l#1@@40|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@38| (+ |l#3@@38| k)) |l#4@@38|))
 :qid |DiemSystembpl.90:14|
 :skolemid |1997|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#43| |l#0@@41| |l#1@@40| |l#2@@38| |l#3@@38| |l#4@@38|) k))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| () T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t25@1 () T@$Mutation_262393)
(declare-fun $t26@0 () T@$1_ValidatorConfig_Config)
(declare-fun _$t2 () T@Vec_30471)
(declare-fun _$t3 () T@Vec_30471)
(declare-fun _$t4 () T@Vec_30471)
(declare-fun $t27 () |T@$1_Option_Option'$1_ValidatorConfig_Config'|)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_Config|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_Config)) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|Store__T@[Int]$1_ValidatorConfig_Config_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_Config|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_Config)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|Store__T@[Int]$1_ValidatorConfig_Config_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_Config_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_184068 (T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun DefaultVecElem_184068 () T@$1_ValidatorConfig_Config)
(declare-fun $t28@0 () T@$Mutation_266060)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t28@1 () T@$Mutation_266060)
(declare-fun $t25@2 () T@$Mutation_262393)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory@0 () T@$Memory_260857)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_260857)
(declare-fun |Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int T@$1_ValidatorConfig_ValidatorConfig) |T@[Int]$1_ValidatorConfig_ValidatorConfig|)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_ValidatorConfig_ValidatorConfig)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_250432)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_250798)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t15@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t25 () T@$Mutation_262393)
(declare-fun $t25@0 () T@$Mutation_262393)
(declare-fun MapConstVec_16957 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_16957 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_ValidatorConfig_exists_config$0$$t1@1 () Bool)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$modifies () |T@[Int]Bool|)
(declare-fun $t24 () Int)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun $t21 () Int)
(declare-fun $t16@0 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t14 () Bool)
(declare-fun $t13 () Int)
(declare-fun $t12 () Int)
(declare-fun $t15 () Int)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t11 () T@$Mutation_262393)
(declare-fun $t28 () T@$Mutation_266060)
(push 1)
(set-info :boogie-vc-id $1_ValidatorConfig_set_config$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 855230) (let ((anon29_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| (|v#$Mutation_262393| $t25@1))) (=> (and (and (and (= |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0| |$temp_0'$1_ValidatorConfig_ValidatorConfig'@0|) (= $t26@0 ($1_ValidatorConfig_Config _$t2 _$t3 _$t4))) (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| $t27) (<= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t27)) 1))) (and (and (|$IsEqual'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| $t27) (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$1_Option_Option'$1_ValidatorConfig_Config'| (Vec_202620 (|Store__T@[Int]$1_ValidatorConfig_Config_| (MapConstVec_184068 DefaultVecElem_184068) 0 $t26@0) 1)))) (= $t28@0 ($Mutation_266060 (|l#$Mutation_262393| $t25@1) (let ((l (|l#Vec_30471| (|p#$Mutation_262393| $t25@1))))
(Vec_30471 (|Store__T@[Int]Int_| (|v#Vec_30471| (|p#$Mutation_262393| $t25@1)) l 0) (+ l 1))) (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_262393| $t25@1))))) (and (= $t28@1 ($Mutation_266060 (|l#$Mutation_266060| $t28@0) (|p#$Mutation_266060| $t28@0) $t27)) (= $t25@2 ($Mutation_262393 (|l#$Mutation_262393| $t25@1) (|p#$Mutation_262393| $t25@1) ($1_ValidatorConfig_ValidatorConfig (|v#$Mutation_266060| $t28@1) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_262393| $t25@1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_262393| $t25@1)))))))) (and (=> (= (ControlFlow 0 518503) (- 0 856234)) (<= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_262393| $t25@2)))) 1)) (=> (<= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_262393| $t25@2)))) 1) (and (=> (= (ControlFlow 0 518503) (- 0 856247)) (<= (|l#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_262393| $t25@2)))) 1)) (=> (<= (|l#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|v#$Mutation_262393| $t25@2)))) 1) (=> (= $1_ValidatorConfig_ValidatorConfig_$memory@0 ($Memory_260857 (|Store__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_262393| $t25@2)) true) (|Store__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) (|a#$Global| (|l#$Mutation_262393| $t25@2)) (|v#$Mutation_262393| $t25@2)))) (and (=> (= (ControlFlow 0 518503) (- 0 856291)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) a)) (=> (not (|$IsEqual'vec'address''| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) a))) (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) a))))) (and ($1_Signer_is_txn_signer_addr a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) a) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) a)) 3))))))
 :qid |DiemSystembpl.8488:15|
 :skolemid |217|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) a@@0)) (=> (not (|$IsEqual'vec'address''| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) a@@0))) (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) a@@0))))) (and ($1_Signer_is_txn_signer_addr a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) a@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) a@@0)) 3))))))
 :qid |DiemSystembpl.8488:15|
 :skolemid |217|
)) (and (=> (= (ControlFlow 0 518503) (- 0 856349)) (forall ((validator Int) ) (!  (=> (|$IsValid'address'| validator) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) validator) (not (= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) validator)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) validator) (not (= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) validator)))) 0)))))
 :qid |DiemSystembpl.8494:15|
 :skolemid |218|
))) (=> (forall ((validator@@0 Int) ) (!  (=> (|$IsValid'address'| validator@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@0) (not (= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) validator@@0)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) validator@@0) (not (= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) validator@@0)))) 0)))))
 :qid |DiemSystembpl.8494:15|
 :skolemid |218|
)) (and (=> (= (ControlFlow 0 518503) (- 0 856373)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@0)) 3))))
 :qid |DiemSystembpl.8500:15|
 :skolemid |219|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@1)) 3))))
 :qid |DiemSystembpl.8500:15|
 :skolemid |219|
)) (and (=> (= (ControlFlow 0 518503) (- 0 856398)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |DiemSystembpl.8506:15|
 :skolemid |220|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |DiemSystembpl.8506:15|
 :skolemid |220|
)) (and (=> (= (ControlFlow 0 518503) (- 0 856423)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@4) (not (= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@4)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@4)) 3))))
 :qid |DiemSystembpl.8512:15|
 :skolemid |221|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@5) (not (= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@5)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@5)) 3))))
 :qid |DiemSystembpl.8512:15|
 :skolemid |221|
)) (and (=> (= (ControlFlow 0 518503) (- 0 856448)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= (|l#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@6))))) (|l#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@7))))))) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (let (($range_0 ($Range 0 (|l#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@9 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@9))))))))
(exists (($i_1 Int) ) (!  (and ($InRange $range_0 $i_1) (let ((i@@129 $i_1))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@10 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@10))))) i@@129)) addr@@8) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))) i@@129))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))) i@@129)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))) i@@129))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))) i@@129))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))) i@@129))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12))))) i@@129)))))))))
 :qid |DiemSystembpl.8518:823|
 :skolemid |222|
))) (exists ((a@@1 Int) ) (!  (and (|$IsValid'address'| a@@1) (and ($1_Signer_is_txn_signer_addr a@@1) (= (let ((t_ref (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@8)))
(|Select__T@[Int]Int_| (|v#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref))) 0)) a@@1)))
 :qid |DiemSystembpl.8519:674|
 :skolemid |223|
))))
 :qid |DiemSystembpl.8518:592|
 :skolemid |224|
)))) (=> (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= (|l#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))) (|l#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14))))))) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (let (($range_0@@0 ($Range 0 (|l#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16))))))))
(exists (($i_1@@0 Int) ) (!  (and ($InRange $range_0@@0 $i_1@@0) (let ((i@@130 $i_1@@0))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) i@@130)) addr@@15) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@18 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@18))))) i@@130))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@19 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@19))))) i@@130)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@18 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@18))))) i@@130))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@19 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@19))))) i@@130))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@18 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@18))))) i@@130))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@19 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_250798| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@19))))) i@@130)))))))))
 :qid |DiemSystembpl.8518:823|
 :skolemid |222|
))) (exists ((a@@2 Int) ) (!  (and (|$IsValid'address'| a@@2) (and ($1_Signer_is_txn_signer_addr a@@2) (= (let ((t_ref@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@15)))
(|Select__T@[Int]Int_| (|v#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@0))) 0)) a@@2)))
 :qid |DiemSystembpl.8519:674|
 :skolemid |223|
))))
 :qid |DiemSystembpl.8518:592|
 :skolemid |224|
))) (and (=> (= (ControlFlow 0 518503) (- 0 856589)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (= (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@20)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@20)) 3))))
 :qid |DiemSystembpl.8525:15|
 :skolemid |225|
))) (=> (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (= (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) addr@@21)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@21)) 3))))
 :qid |DiemSystembpl.8525:15|
 :skolemid |225|
)) (and (=> (= (ControlFlow 0 518503) (- 0 856617)) (not (not (= (|$addr#$signer| _$t0) (let ((t_ref@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@1))) 0)))))) (=> (not (not (= (|$addr#$signer| _$t0) (let ((t_ref@@2 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@2))) 0))))) (and (=> (= (ControlFlow 0 518503) (- 0 856633)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t2)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t2))) (and (=> (= (ControlFlow 0 518503) (- 0 856643)) (not (not (not (= (|l#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))))) (=> (not (not (not (= (|l#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0)))) (and (=> (= (ControlFlow 0 518503) (- 0 856654)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (and (=> (= (ControlFlow 0 518503) (- 0 856665)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1) (not (= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1) (not (= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1)))) 0))) (=> (= (ControlFlow 0 518503) (- 0 856672)) (and (and (|$IsEqual'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1))) (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (Vec_202620 (|Store__T@[Int]$1_ValidatorConfig_Config_| (MapConstVec_184068 DefaultVecElem_184068) 0 ($1_ValidatorConfig_Config _$t2 _$t3 _$t4)) 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))))) (|$IsEqual'vec'address''| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1))) (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (Vec_202620 (|Store__T@[Int]$1_ValidatorConfig_Config_| (MapConstVec_184068 DefaultVecElem_184068) 0 ($1_ValidatorConfig_Config _$t2 _$t3 _$t4)) 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))))))) (|$IsEqual'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory@0) _$t1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| ($1_ValidatorConfig_ValidatorConfig (|$1_Option_Option'$1_ValidatorConfig_Config'| (Vec_202620 (|Store__T@[Int]$1_ValidatorConfig_Config_| (MapConstVec_184068 DefaultVecElem_184068) 0 ($1_ValidatorConfig_Config _$t2 _$t3 _$t4)) 1)) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))))))))))))))))))))))))))))))))))))))))
(let ((anon26_Then_correct true))
(let ((anon24_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 517661) (- 0 856032)) (or (or (or (not (= (|$addr#$signer| _$t0) (let ((t_ref@@3 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@3))) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2))) (not (not (= (|l#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) (=> (or (or (or (not (= (|$addr#$signer| _$t0) (let ((t_ref@@4 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@4))) 0)))) (not ($1_Signature_$ed25519_validate_pubkey _$t2))) (not (not (= (|l#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (=> (= (ControlFlow 0 517661) (- 0 856066)) (or (or (or (and (not (= (|$addr#$signer| _$t0) (let ((t_ref@@5 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@5))) 0)))) (= 7 $t15@0)) (and (not ($1_Signature_$ed25519_validate_pubkey _$t2)) (= 7 $t15@0))) (and (not (not (= (|l#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (= 7 $t15@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= 5 $t15@0))))))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t15@0 $abort_code@1) (= (ControlFlow 0 518517) 517661))) L7_correct)))
(let ((anon28_Then$1_correct  (=> (= $t25@1 $t25) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 518569) 518517) anon29_Then_correct) (=> (= (ControlFlow 0 518569) 518503) anon29_Else_correct))))))
(let ((anon28_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= (ControlFlow 0 518567) 518569)) anon28_Then$1_correct)))
(let ((anon28_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1) (=> (and (and (= $t25@0 ($Mutation_262393 ($Global _$t1) (Vec_30471 (MapConstVec_16957 DefaultVecElem_16957) 0) (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (= $t25@1 $t25@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 517948) 518517) anon29_Then_correct) (=> (= (ControlFlow 0 517948) 518503) anon29_Else_correct))))))
(let ((anon27_Then_correct  (=> inline$$1_ValidatorConfig_exists_config$0$$t1@1 (and (=> (= (ControlFlow 0 517926) (- 0 855904)) (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1)) (=> (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1) (and (=> (= (ControlFlow 0 517926) 518567) anon28_Then_correct) (=> (= (ControlFlow 0 517926) 517948) anon28_Else_correct)))))))
(let ((anon27_Else_correct  (=> (and (and (not inline$$1_ValidatorConfig_exists_config$0$$t1@1) (= $t24 $t24)) (and (= $t15@0 $t24) (= (ControlFlow 0 517916) 517661))) L7_correct)))
(let ((anon26_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t24) (= $t24 5)) (and (= $t24 $t24) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1))) (and (=> (= (ControlFlow 0 517900) 517926) anon27_Then_correct) (=> (= (ControlFlow 0 517900) 517916) anon27_Else_correct))))))
(let ((inline$$1_ValidatorConfig_exists_config$0$anon0_correct  (=> (= _$t1 _$t1) (=> (and (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= inline$$1_ValidatorConfig_exists_config$0$$t1@1 inline$$1_ValidatorConfig_exists_config$0$$t1@1)) (and (=> (= (ControlFlow 0 517858) 518583) anon26_Then_correct) (=> (= (ControlFlow 0 517858) 517900) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (= (ControlFlow 0 517864) 517858)) inline$$1_ValidatorConfig_exists_config$0$anon0_correct)))
(let ((anon25_Else_correct  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= $t21 $t21)) (and (= $t15@0 $t21) (= (ControlFlow 0 517757) 517661))) L7_correct)))
(let ((anon24_Else_correct  (=> (and (not false) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t21) (= $t21 7)) (and (= $t21 $t21) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 517741) 517864) anon25_Then_correct) (=> (= (ControlFlow 0 517741) 517757) anon25_Else_correct))))))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t2)) (and (=> (= (ControlFlow 0 517695) 518597) anon24_Then_correct) (=> (= (ControlFlow 0 517695) 517741) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (and $t16@0 (= (ControlFlow 0 517701) 517695)) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (and (and (not $t16@0) (= $t18 $t18)) (and (= $t15@0 $t18) (= (ControlFlow 0 517537) 517661))) L7_correct)))
(let ((anon22_Else_correct  (=> (not $t14) (=> (and (and (and (|$IsValid'address'| $t13) (= $t13 (let ((t_ref@@6 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(|Select__T@[Int]Int_| (|v#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@6))) 0)))) (and (= $t16@0 (= $t12 $t13)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t18) (= $t18 7)) (and (= $t18 $t18) (= $t16@0 $t16@0)))) (and (=> (= (ControlFlow 0 517521) 517701) anon23_Then_correct) (=> (= (ControlFlow 0 517521) 517537) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> $t14 (=> (and (and (or (and (not (not (= (|l#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (= 7 $t15)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= 5 $t15))) (= $t15 $t15)) (and (= $t15@0 $t15) (= (ControlFlow 0 518643) 517661))) L7_correct))))
(let ((anon0$1_correct  (=> (and (and (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@22)) 3))))
 :qid |DiemSystembpl.8172:20|
 :skolemid |212|
)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@23)) 3))))
 :qid |DiemSystembpl.8176:20|
 :skolemid |213|
))) (and (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@24) (not (= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@24)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@24)) 3))))
 :qid |DiemSystembpl.8180:20|
 :skolemid |214|
)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@25)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_250432| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_250432| $1_Roles_RoleId_$memory) addr@@25)) 3))))
 :qid |DiemSystembpl.8184:20|
 :skolemid |215|
)))) (=> (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'address'| _$t1) (|$IsValid'vec'u8''| _$t2))) (and (and (|$IsValid'vec'u8''| _$t3) (|$IsValid'vec'u8''| _$t4)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc) (and (<= (|l#Vec_202620| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc))) 1) (<= (|l#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc))) 1))))
 :qid |DiemSystembpl.8202:20|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0))
)) (|Select__T@[Int]Bool_| $1_ValidatorConfig_ValidatorConfig_$modifies _$t1)))) (and (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= _$t3 _$t3))) (and (and (= _$t4 _$t4) (|$IsValid'address'| $t12)) (and (= $t12 (|$addr#$signer| _$t0)) (= $t14  (or (not (not (= (|l#Vec_30471| (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_260857| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))))))) (and (=> (= (ControlFlow 0 517463) 518643) anon22_Then_correct) (=> (= (ControlFlow 0 517463) 517521) anon22_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_202527_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_202527| stream@@0) 0) (forall ((v@@62 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_202527| stream@@0) v@@62) 0)
 :qid |DiemSystembpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystembpl.3492:13|
 :skolemid |126|
))) (= (ControlFlow 0 517195) 517463)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_30471| (|p#$Mutation_262393| $t11)) 0) (= (|l#Vec_30471| (|p#$Mutation_262393| $t25)) 0)) (and (= (|l#Vec_30471| (|p#$Mutation_266060| $t28)) 0) (= (ControlFlow 0 517205) 517195))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 855230) 517205) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_242387 0)) ((($Memory_242387 (|domain#$Memory_242387| |T@[Int]Bool|) (|contents#$Memory_242387| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_204552 0)) (((Vec_204552 (|v#Vec_204552| |T@[Int]#0|) (|l#Vec_204552| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_252141 0)) ((($Memory_252141 (|domain#$Memory_252141| |T@[Int]Bool|) (|contents#$Memory_252141| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_252070 0)) ((($Memory_252070 (|domain#$Memory_252070| |T@[Int]Bool|) (|contents#$Memory_252070| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_251827 0)) ((($Memory_251827 (|domain#$Memory_251827| |T@[Int]Bool|) (|contents#$Memory_251827| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_251756 0)) ((($Memory_251756 (|domain#$Memory_251756| |T@[Int]Bool|) (|contents#$Memory_251756| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_251685 0)) ((($Memory_251685 (|domain#$Memory_251685| |T@[Int]Bool|) (|contents#$Memory_251685| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_263753 0)) ((($Memory_263753 (|domain#$Memory_263753| |T@[Int]Bool|) (|contents#$Memory_263753| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_251517 0)) ((($Memory_251517 (|domain#$Memory_251517| |T@[Int]Bool|) (|contents#$Memory_251517| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_264008 0)) ((($Memory_264008 (|domain#$Memory_264008| |T@[Int]Bool|) (|contents#$Memory_264008| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_264108 0)) ((($Memory_264108 (|domain#$Memory_264108| |T@[Int]Bool|) (|contents#$Memory_264108| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_263436 0)) ((($Memory_263436 (|domain#$Memory_263436| |T@[Int]Bool|) (|contents#$Memory_263436| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_228768 0)) (((Vec_228768 (|v#Vec_228768| |T@[Int]$1_XDX_XDX|) (|l#Vec_228768| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_231448 0)) (((Vec_231448 (|v#Vec_231448| |T@[Int]$1_XUS_XUS|) (|l#Vec_231448| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_374945 0)) ((($Memory_374945 (|domain#$Memory_374945| |T@[Int]Bool|) (|contents#$Memory_374945| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_374658 0)) ((($Memory_374658 (|domain#$Memory_374658| |T@[Int]Bool|) (|contents#$Memory_374658| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251349 0)) ((($Memory_251349 (|domain#$Memory_251349| |T@[Int]Bool|) (|contents#$Memory_251349| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251110 0)) ((($Memory_251110 (|domain#$Memory_251110| |T@[Int]Bool|) (|contents#$Memory_251110| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_251999 0)) ((($Memory_251999 (|domain#$Memory_251999| |T@[Int]Bool|) (|contents#$Memory_251999| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_360639 0)) ((($Memory_360639 (|domain#$Memory_360639| |T@[Int]Bool|) (|contents#$Memory_360639| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_360575 0)) ((($Memory_360575 (|domain#$Memory_360575| |T@[Int]Bool|) (|contents#$Memory_360575| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_360511 0)) ((($Memory_360511 (|domain#$Memory_360511| |T@[Int]Bool|) (|contents#$Memory_360511| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_361006 0)) ((($Memory_361006 (|domain#$Memory_361006| |T@[Int]Bool|) (|contents#$Memory_361006| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_360919 0)) ((($Memory_360919 (|domain#$Memory_360919| |T@[Int]Bool|) (|contents#$Memory_360919| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_388841 0)) ((($Memory_388841 (|domain#$Memory_388841| |T@[Int]Bool|) (|contents#$Memory_388841| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_366833 0)) ((($Memory_366833 (|domain#$Memory_366833| |T@[Int]Bool|) (|contents#$Memory_366833| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_263668 0)) ((($Memory_263668 (|domain#$Memory_263668| |T@[Int]Bool|) (|contents#$Memory_263668| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_366752 0)) ((($Memory_366752 (|domain#$Memory_366752| |T@[Int]Bool|) (|contents#$Memory_366752| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_251181 0)) ((($Memory_251181 (|domain#$Memory_251181| |T@[Int]Bool|) (|contents#$Memory_251181| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_263608 0)) ((($Memory_263608 (|domain#$Memory_263608| |T@[Int]Bool|) (|contents#$Memory_263608| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_366671 0)) ((($Memory_366671 (|domain#$Memory_366671| |T@[Int]Bool|) (|contents#$Memory_366671| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251420 0)) ((($Memory_251420 (|domain#$Memory_251420| |T@[Int]Bool|) (|contents#$Memory_251420| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_273880 0)) ((($Memory_273880 (|domain#$Memory_273880| |T@[Int]Bool|) (|contents#$Memory_273880| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_273793 0)) ((($Memory_273793 (|domain#$Memory_273793| |T@[Int]Bool|) (|contents#$Memory_273793| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_273706 0)) ((($Memory_273706 (|domain#$Memory_273706| |T@[Int]Bool|) (|contents#$Memory_273706| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_273619 0)) ((($Memory_273619 (|domain#$Memory_273619| |T@[Int]Bool|) (|contents#$Memory_273619| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_273532 0)) ((($Memory_273532 (|domain#$Memory_273532| |T@[Int]Bool|) (|contents#$Memory_273532| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_273445 0)) ((($Memory_273445 (|domain#$Memory_273445| |T@[Int]Bool|) (|contents#$Memory_273445| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_273358 0)) ((($Memory_273358 (|domain#$Memory_273358| |T@[Int]Bool|) (|contents#$Memory_273358| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_250871 0)) ((($Memory_250871 (|domain#$Memory_250871| |T@[Int]Bool|) (|contents#$Memory_250871| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_272142 0)) ((($Memory_272142 (|domain#$Memory_272142| |T@[Int]Bool|) (|contents#$Memory_272142| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_250712 0)) ((($Memory_250712 (|domain#$Memory_250712| |T@[Int]Bool|) (|contents#$Memory_250712| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_272061 0)) ((($Memory_272061 (|domain#$Memory_272061| |T@[Int]Bool|) (|contents#$Memory_272061| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_250303 0)) ((($Memory_250303 (|domain#$Memory_250303| |T@[Int]Bool|) (|contents#$Memory_250303| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_250619 0)) ((($Memory_250619 (|domain#$Memory_250619| |T@[Int]Bool|) (|contents#$Memory_250619| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_202698 0)) (((Vec_202698 (|v#Vec_202698| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_202698| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_202698) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_202659 0)) (((Vec_202659 (|v#Vec_202659| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_202659| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_202659) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_394718 0)) ((($Memory_394718 (|domain#$Memory_394718| |T@[Int]Bool|) (|contents#$Memory_394718| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_202659) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_30471 0)) (((Vec_30471 (|v#Vec_30471| |T@[Int]Int|) (|l#Vec_30471| Int) ) ) ))
(declare-sort |T@[Int]Vec_30471| 0)
(declare-datatypes ((T@Vec_202897 0)) (((Vec_202897 (|v#Vec_202897| |T@[Int]Vec_30471|) (|l#Vec_202897| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_202897) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_251601 0)) ((($Memory_251601 (|domain#$Memory_251601| |T@[Int]Bool|) (|contents#$Memory_251601| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_202897) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_250942 0)) ((($Memory_250942 (|domain#$Memory_250942| |T@[Int]Bool|) (|contents#$Memory_250942| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_30471) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_30471) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_252225 0)) ((($Memory_252225 (|domain#$Memory_252225| |T@[Int]Bool|) (|contents#$Memory_252225| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_30471) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_271928 0)) ((($Memory_271928 (|domain#$Memory_271928| |T@[Int]Bool|) (|contents#$Memory_271928| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_30471) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_263336 0)) ((($Memory_263336 (|domain#$Memory_263336| |T@[Int]Bool|) (|contents#$Memory_263336| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_30471) (|$base_url#$1_DualAttestation_Credential| T@Vec_30471) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_30471) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_263223 0)) ((($Memory_263223 (|domain#$Memory_263223| |T@[Int]Bool|) (|contents#$Memory_263223| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_203324 0)) (((Vec_203324 (|v#Vec_203324| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_203324| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_203324) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_263521 0)) ((($Memory_263521 (|domain#$Memory_263521| |T@[Int]Bool|) (|contents#$Memory_263521| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_203182 0)) (((Vec_203182 (|v#Vec_203182| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_203182| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_203182) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_367317 0)) ((($Memory_367317 (|domain#$Memory_367317| |T@[Int]Bool|) (|contents#$Memory_367317| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_203143 0)) (((Vec_203143 (|v#Vec_203143| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_203143| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_203143) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_367200 0)) ((($Memory_367200 (|domain#$Memory_367200| |T@[Int]Bool|) (|contents#$Memory_367200| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_203104 0)) (((Vec_203104 (|v#Vec_203104| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_203104| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_203104) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_367083 0)) ((($Memory_367083 (|domain#$Memory_367083| |T@[Int]Bool|) (|contents#$Memory_367083| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_30471) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_360210 0)) ((($Memory_360210 (|domain#$Memory_360210| |T@[Int]Bool|) (|contents#$Memory_360210| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_30471) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251265 0)) ((($Memory_251265 (|domain#$Memory_251265| |T@[Int]Bool|) (|contents#$Memory_251265| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_30471) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251026 0)) ((($Memory_251026 (|domain#$Memory_251026| |T@[Int]Bool|) (|contents#$Memory_251026| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_30471) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_30471) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_202620 0)) (((Vec_202620 (|v#Vec_202620| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_202620| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_202620) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_202840 0)) (((Vec_202840 (|v#Vec_202840| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_202840| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_202840) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_250798 0)) ((($Memory_250798 (|domain#$Memory_250798| |T@[Int]Bool|) (|contents#$Memory_250798| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_260857 0)) ((($Memory_260857 (|domain#$Memory_260857| |T@[Int]Bool|) (|contents#$Memory_260857| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_30471) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_258720 0)) ((($Memory_258720 (|domain#$Memory_258720| |T@[Int]Bool|) (|contents#$Memory_258720| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_250432 0)) ((($Memory_250432 (|domain#$Memory_250432| |T@[Int]Bool|) (|contents#$Memory_250432| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_249750 0)) ((($Memory_249750 (|domain#$Memory_249750| |T@[Int]Bool|) (|contents#$Memory_249750| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_30471) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_30471) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_30471) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_30471) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_30471) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_30471) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_30471) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_30471) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_30471) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_30471) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_202527 0)) (((Multiset_202527 (|v#Multiset_202527| |T@[$EventRep]Int|) (|l#Multiset_202527| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_202527| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_202527|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_492569 0)) ((($Mutation_492569 (|l#$Mutation_492569| T@$Location) (|p#$Mutation_492569| T@Vec_30471) (|v#$Mutation_492569| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_492524 0)) ((($Mutation_492524 (|l#$Mutation_492524| T@$Location) (|p#$Mutation_492524| T@Vec_30471) (|v#$Mutation_492524| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_380054 0)) ((($Mutation_380054 (|l#$Mutation_380054| T@$Location) (|p#$Mutation_380054| T@Vec_30471) (|v#$Mutation_380054| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_98607 0)) ((($Mutation_98607 (|l#$Mutation_98607| T@$Location) (|p#$Mutation_98607| T@Vec_30471) (|v#$Mutation_98607| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_372811 0)) ((($Mutation_372811 (|l#$Mutation_372811| T@$Location) (|p#$Mutation_372811| T@Vec_30471) (|v#$Mutation_372811| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_358899 0)) ((($Mutation_358899 (|l#$Mutation_358899| T@$Location) (|p#$Mutation_358899| T@Vec_30471) (|v#$Mutation_358899| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_284641 0)) ((($Mutation_284641 (|l#$Mutation_284641| T@$Location) (|p#$Mutation_284641| T@Vec_30471) (|v#$Mutation_284641| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-datatypes ((T@$Mutation_284595 0)) ((($Mutation_284595 (|l#$Mutation_284595| T@$Location) (|p#$Mutation_284595| T@Vec_30471) (|v#$Mutation_284595| |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$Mutation_281991 0)) ((($Mutation_281991 (|l#$Mutation_281991| T@$Location) (|p#$Mutation_281991| T@Vec_30471) (|v#$Mutation_281991| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_281945 0)) ((($Mutation_281945 (|l#$Mutation_281945| T@$Location) (|p#$Mutation_281945| T@Vec_30471) (|v#$Mutation_281945| |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_279341 0)) ((($Mutation_279341 (|l#$Mutation_279341| T@$Location) (|p#$Mutation_279341| T@Vec_30471) (|v#$Mutation_279341| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-datatypes ((T@$Mutation_279295 0)) ((($Mutation_279295 (|l#$Mutation_279295| T@$Location) (|p#$Mutation_279295| T@Vec_30471) (|v#$Mutation_279295| |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_276691 0)) ((($Mutation_276691 (|l#$Mutation_276691| T@$Location) (|p#$Mutation_276691| T@Vec_30471) (|v#$Mutation_276691| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_276645 0)) ((($Mutation_276645 (|l#$Mutation_276645| T@$Location) (|p#$Mutation_276645| T@Vec_30471) (|v#$Mutation_276645| |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$Mutation_273959 0)) ((($Mutation_273959 (|l#$Mutation_273959| T@$Location) (|p#$Mutation_273959| T@Vec_30471) (|v#$Mutation_273959| |T@$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_266060 0)) ((($Mutation_266060 (|l#$Mutation_266060| T@$Location) (|p#$Mutation_266060| T@Vec_30471) (|v#$Mutation_266060| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_262434 0)) ((($Mutation_262434 (|l#$Mutation_262434| T@$Location) (|p#$Mutation_262434| T@Vec_30471) (|v#$Mutation_262434| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_262393 0)) ((($Mutation_262393 (|l#$Mutation_262393| T@$Location) (|p#$Mutation_262393| T@Vec_30471) (|v#$Mutation_262393| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_250245 0)) ((($Mutation_250245 (|l#$Mutation_250245| T@$Location) (|p#$Mutation_250245| T@Vec_30471) (|v#$Mutation_250245| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_243018 0)) ((($Mutation_243018 (|l#$Mutation_243018| T@$Location) (|p#$Mutation_243018| T@Vec_30471) (|v#$Mutation_243018| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_30471) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_235875 0)) ((($Mutation_235875 (|l#$Mutation_235875| T@$Location) (|p#$Mutation_235875| T@Vec_30471) (|v#$Mutation_235875| T@Vec_30471) ) ) ))
(declare-datatypes ((T@$Mutation_234787 0)) ((($Mutation_234787 (|l#$Mutation_234787| T@$Location) (|p#$Mutation_234787| T@Vec_30471) (|v#$Mutation_234787| T@Vec_202897) ) ) ))
(declare-datatypes ((T@$Mutation_233078 0)) ((($Mutation_233078 (|l#$Mutation_233078| T@$Location) (|p#$Mutation_233078| T@Vec_30471) (|v#$Mutation_233078| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_232091 0)) ((($Mutation_232091 (|l#$Mutation_232091| T@$Location) (|p#$Mutation_232091| T@Vec_30471) (|v#$Mutation_232091| T@Vec_231448) ) ) ))
(declare-datatypes ((T@$Mutation_230398 0)) ((($Mutation_230398 (|l#$Mutation_230398| T@$Location) (|p#$Mutation_230398| T@Vec_30471) (|v#$Mutation_230398| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_229411 0)) ((($Mutation_229411 (|l#$Mutation_229411| T@$Location) (|p#$Mutation_229411| T@Vec_30471) (|v#$Mutation_229411| T@Vec_228768) ) ) ))
(declare-datatypes ((T@$Mutation_227718 0)) ((($Mutation_227718 (|l#$Mutation_227718| T@$Location) (|p#$Mutation_227718| T@Vec_30471) (|v#$Mutation_227718| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_226731 0)) ((($Mutation_226731 (|l#$Mutation_226731| T@$Location) (|p#$Mutation_226731| T@Vec_30471) (|v#$Mutation_226731| T@Vec_202620) ) ) ))
(declare-datatypes ((T@$Mutation_225076 0)) ((($Mutation_225076 (|l#$Mutation_225076| T@$Location) (|p#$Mutation_225076| T@Vec_30471) (|v#$Mutation_225076| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_224089 0)) ((($Mutation_224089 (|l#$Mutation_224089| T@$Location) (|p#$Mutation_224089| T@Vec_30471) (|v#$Mutation_224089| T@Vec_203324) ) ) ))
(declare-datatypes ((T@$Mutation_222411 0)) ((($Mutation_222411 (|l#$Mutation_222411| T@$Location) (|p#$Mutation_222411| T@Vec_30471) (|v#$Mutation_222411| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_221424 0)) ((($Mutation_221424 (|l#$Mutation_221424| T@$Location) (|p#$Mutation_221424| T@Vec_30471) (|v#$Mutation_221424| T@Vec_203104) ) ) ))
(declare-datatypes ((T@$Mutation_219715 0)) ((($Mutation_219715 (|l#$Mutation_219715| T@$Location) (|p#$Mutation_219715| T@Vec_30471) (|v#$Mutation_219715| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_218728 0)) ((($Mutation_218728 (|l#$Mutation_218728| T@$Location) (|p#$Mutation_218728| T@Vec_30471) (|v#$Mutation_218728| T@Vec_203143) ) ) ))
(declare-datatypes ((T@$Mutation_217019 0)) ((($Mutation_217019 (|l#$Mutation_217019| T@$Location) (|p#$Mutation_217019| T@Vec_30471) (|v#$Mutation_217019| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_216032 0)) ((($Mutation_216032 (|l#$Mutation_216032| T@$Location) (|p#$Mutation_216032| T@Vec_30471) (|v#$Mutation_216032| T@Vec_203182) ) ) ))
(declare-datatypes ((T@$Mutation_214323 0)) ((($Mutation_214323 (|l#$Mutation_214323| T@$Location) (|p#$Mutation_214323| T@Vec_30471) (|v#$Mutation_214323| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_213336 0)) ((($Mutation_213336 (|l#$Mutation_213336| T@$Location) (|p#$Mutation_213336| T@Vec_30471) (|v#$Mutation_213336| T@Vec_202840) ) ) ))
(declare-datatypes ((T@$Mutation_211536 0)) ((($Mutation_211536 (|l#$Mutation_211536| T@$Location) (|p#$Mutation_211536| T@Vec_30471) (|v#$Mutation_211536| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_210549 0)) ((($Mutation_210549 (|l#$Mutation_210549| T@$Location) (|p#$Mutation_210549| T@Vec_30471) (|v#$Mutation_210549| T@Vec_202698) ) ) ))
(declare-datatypes ((T@$Mutation_208884 0)) ((($Mutation_208884 (|l#$Mutation_208884| T@$Location) (|p#$Mutation_208884| T@Vec_30471) (|v#$Mutation_208884| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_207897 0)) ((($Mutation_207897 (|l#$Mutation_207897| T@$Location) (|p#$Mutation_207897| T@Vec_30471) (|v#$Mutation_207897| T@Vec_202659) ) ) ))
(declare-datatypes ((T@$Mutation_206184 0)) ((($Mutation_206184 (|l#$Mutation_206184| T@$Location) (|p#$Mutation_206184| T@Vec_30471) (|v#$Mutation_206184| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_205197 0)) ((($Mutation_205197 (|l#$Mutation_205197| T@$Location) (|p#$Mutation_205197| T@Vec_30471) (|v#$Mutation_205197| T@Vec_204552) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_204552 T@Vec_204552) Bool)
(declare-fun InRangeVec_182440 (T@Vec_204552 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_204552) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_204552 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_202659 T@Vec_202659) Bool)
(declare-fun InRangeVec_182641 (T@Vec_202659 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_202659) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_202659 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_202698 T@Vec_202698) Bool)
(declare-fun InRangeVec_182842 (T@Vec_202698 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_202698) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_202698 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_202840 T@Vec_202840) Bool)
(declare-fun InRangeVec_183043 (T@Vec_202840 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_30471 T@Vec_30471) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_202840) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_202840 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_203182 T@Vec_203182) Bool)
(declare-fun InRangeVec_183244 (T@Vec_203182 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_203182) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_203182 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_203143 T@Vec_203143) Bool)
(declare-fun InRangeVec_183445 (T@Vec_203143 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_203143) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_203143 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_203104 T@Vec_203104) Bool)
(declare-fun InRangeVec_183646 (T@Vec_203104 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_203104) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_203104 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_203324 T@Vec_203324) Bool)
(declare-fun InRangeVec_183847 (T@Vec_203324 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_203324) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_203324 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_202620 T@Vec_202620) Bool)
(declare-fun InRangeVec_184048 (T@Vec_202620 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_202620) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_202620 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_228768 T@Vec_228768) Bool)
(declare-fun InRangeVec_184249 (T@Vec_228768 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_228768) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_228768 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_231448 T@Vec_231448) Bool)
(declare-fun InRangeVec_184450 (T@Vec_231448 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_231448) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_231448 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_202897 T@Vec_202897) Bool)
(declare-fun InRangeVec_234210 (T@Vec_202897 Int) Bool)
(declare-fun |Select__T@[Int]Vec_30471_| (|T@[Int]Vec_30471| Int) T@Vec_30471)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_202897) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_30471) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_202897 T@Vec_30471) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_30471 T@Vec_30471) Bool)
(declare-fun InRangeVec_16728 (T@Vec_30471 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_30471) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_30471 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_30471 T@Vec_30471) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_30471) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_30471 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_30471 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_30471) T@Vec_30471)
(declare-fun $1_Hash_sha3 (T@Vec_30471) T@Vec_30471)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_30471) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_30471 T@Vec_30471 T@Vec_30471) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_202527_| (|T@[$1_Event_EventHandle]Multiset_202527| T@$1_Event_EventHandle) T@Multiset_202527)
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
(declare-fun |$IsValid'$1_Option_Option'u64''| (|T@$1_Option_Option'u64'|) Bool)
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
(declare-fun $choice_0 (T@Vec_202840 Int) Int)
(declare-fun IndexOfVec_30471 (T@Vec_30471 Int) Int)
(declare-fun IndexOfVec_202620 (T@Vec_202620 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_202659 (T@Vec_202659 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_202698 (T@Vec_202698 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_202840 (T@Vec_202840 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_202897 (T@Vec_202897 T@Vec_30471) Int)
(declare-fun IndexOfVec_203104 (T@Vec_203104 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_203143 (T@Vec_203143 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_203182 (T@Vec_203182 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_203324 (T@Vec_203324 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_204552 (T@Vec_204552 |T@#0|) Int)
(declare-fun IndexOfVec_228768 (T@Vec_228768 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_231448 (T@Vec_231448 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_202527| |T@[$1_Event_EventHandle]Multiset_202527|) |T@[$1_Event_EventHandle]Multiset_202527|)
(declare-fun |lambda#42| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#15| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#16| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#17| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'#0'| |T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int |T@$1_Diem_PreburnWithMetadata'#0'|) |T@[Int]$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |lambda#18| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#19| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#22| (Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#25| (Int Int |T@[Int]$1_VASPDomain_VASPDomain| Int Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]$1_VASPDomain_VASPDomain| |T@[Int]$1_VASPDomain_VASPDomain| Int T@$1_VASPDomain_VASPDomain) |T@[Int]$1_VASPDomain_VASPDomain|)
(declare-fun |lambda#27| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#28| (Int Int |T@[Int]$1_ValidatorConfig_Config| Int Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#29| (Int Int Int |T@[Int]$1_ValidatorConfig_Config| |T@[Int]$1_ValidatorConfig_Config| Int T@$1_ValidatorConfig_Config) |T@[Int]$1_ValidatorConfig_Config|)
(declare-fun |lambda#30| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#31| (Int Int |T@[Int]$1_XDX_XDX| Int Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#32| (Int Int Int |T@[Int]$1_XDX_XDX| |T@[Int]$1_XDX_XDX| Int T@$1_XDX_XDX) |T@[Int]$1_XDX_XDX|)
(declare-fun |lambda#33| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#34| (Int Int |T@[Int]$1_XUS_XUS| Int Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#35| (Int Int Int |T@[Int]$1_XUS_XUS| |T@[Int]$1_XUS_XUS| Int T@$1_XUS_XUS) |T@[Int]$1_XUS_XUS|)
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_30471| |T@[Int]Vec_30471| Int T@Vec_30471) |T@[Int]Vec_30471|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_30471| Int Int T@Vec_30471) |T@[Int]Vec_30471|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_30471| |T@[Int]Vec_30471| Int T@Vec_30471) |T@[Int]Vec_30471|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#43| (Int Int |T@[Int]$1_DiemSystem_ValidatorInfo| Int T@$1_DiemSystem_ValidatorInfo) |T@[Int]$1_DiemSystem_ValidatorInfo|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemSystembpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemSystembpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemSystembpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemSystembpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemSystembpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemSystembpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemSystembpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemSystembpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_204552) (v2 T@Vec_204552) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_204552| v1) (|l#Vec_204552| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_182440 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_204552| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_204552| v2) i@@0)))
 :qid |DiemSystembpl.615:13|
 :skolemid |17|
))))
 :qid |DiemSystembpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_204552) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_204552| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_182440 v@@4 i@@1) true)
 :qid |DiemSystembpl.621:13|
 :skolemid |19|
))))
 :qid |DiemSystembpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_204552) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_182440 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@5) i@@3) e))
 :qid |DiemSystembpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_182440 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@5) j) e)))
 :qid |DiemSystembpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemSystembpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_202659) (v2@@0 T@Vec_202659) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_202659| v1@@0) (|l#Vec_202659| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_182641 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v2@@0) i@@4)))
 :qid |DiemSystembpl.796:13|
 :skolemid |24|
))))
 :qid |DiemSystembpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_202659) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_202659| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_182641 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@6) i@@5)))
 :qid |DiemSystembpl.802:13|
 :skolemid |26|
))))
 :qid |DiemSystembpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_202659) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_182641 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@7) i@@7) e@@0))
 :qid |DiemSystembpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_182641 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@7) j@@0) e@@0)))
 :qid |DiemSystembpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemSystembpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_202698) (v2@@1 T@Vec_202698) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_202698| v1@@1) (|l#Vec_202698| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_182842 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v2@@1) i@@8)))
 :qid |DiemSystembpl.977:13|
 :skolemid |31|
))))
 :qid |DiemSystembpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_202698) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_202698| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_182842 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@8) i@@9)))
 :qid |DiemSystembpl.983:13|
 :skolemid |33|
))))
 :qid |DiemSystembpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_202698) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_182842 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@9) i@@11) e@@1))
 :qid |DiemSystembpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_182842 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@9) j@@1) e@@1)))
 :qid |DiemSystembpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemSystembpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_202840) (v2@@2 T@Vec_202840) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_202840| v1@@2) (|l#Vec_202840| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_183043 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v2@@2) i@@12)))))
 :qid |DiemSystembpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemSystembpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_202840) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_202840| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_183043 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@10) i@@13)))
 :qid |DiemSystembpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemSystembpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_202840) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_183043 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemSystembpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_183043 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemSystembpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemSystembpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_203182) (v2@@3 T@Vec_203182) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_203182| v1@@3) (|l#Vec_203182| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_183244 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v2@@3) i@@16)))))
 :qid |DiemSystembpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemSystembpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_203182) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_203182| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_183244 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@12) i@@17)))
 :qid |DiemSystembpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemSystembpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_203182) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_183244 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemSystembpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_183244 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemSystembpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemSystembpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_203143) (v2@@4 T@Vec_203143) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_203143| v1@@4) (|l#Vec_203143| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_183445 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v2@@4) i@@20)))))
 :qid |DiemSystembpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemSystembpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_203143) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_203143| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_183445 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@14) i@@21)))
 :qid |DiemSystembpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemSystembpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_203143) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_183445 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemSystembpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_183445 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemSystembpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemSystembpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_203104) (v2@@5 T@Vec_203104) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_203104| v1@@5) (|l#Vec_203104| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_183646 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v2@@5) i@@24)))))
 :qid |DiemSystembpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemSystembpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_203104) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_203104| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_183646 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@16) i@@25)))
 :qid |DiemSystembpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemSystembpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_203104) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_183646 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemSystembpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_183646 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemSystembpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemSystembpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_203324) (v2@@6 T@Vec_203324) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_203324| v1@@6) (|l#Vec_203324| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_183847 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v2@@6) i@@28))))
 :qid |DiemSystembpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemSystembpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_203324) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_203324| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_183847 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@18) i@@29)))
 :qid |DiemSystembpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemSystembpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_203324) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_183847 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |DiemSystembpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_183847 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |DiemSystembpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemSystembpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_202620) (v2@@7 T@Vec_202620) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_202620| v1@@7) (|l#Vec_202620| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_184048 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v2@@7) i@@32)))))
 :qid |DiemSystembpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemSystembpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_202620) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_202620| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_184048 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@20) i@@33)))
 :qid |DiemSystembpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemSystembpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_202620) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_184048 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |DiemSystembpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_184048 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |DiemSystembpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemSystembpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_228768) (v2@@8 T@Vec_228768) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_228768| v1@@8) (|l#Vec_228768| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_184249 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v2@@8) i@@36)))
 :qid |DiemSystembpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemSystembpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_228768) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_228768| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_184249 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@22) i@@37)))
 :qid |DiemSystembpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemSystembpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_228768) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_184249 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@23) i@@39) e@@8))
 :qid |DiemSystembpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_184249 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@23) j@@8) e@@8)))
 :qid |DiemSystembpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemSystembpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_231448) (v2@@9 T@Vec_231448) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_231448| v1@@9) (|l#Vec_231448| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_184450 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v2@@9) i@@40)))
 :qid |DiemSystembpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemSystembpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_231448) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_231448| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_184450 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@24) i@@41)))
 :qid |DiemSystembpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemSystembpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_231448) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_184450 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@25) i@@43) e@@9))
 :qid |DiemSystembpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_184450 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@25) j@@9) e@@9)))
 :qid |DiemSystembpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemSystembpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_202897) (v2@@10 T@Vec_202897) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_202897| v1@@10) (|l#Vec_202897| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_234210 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v1@@10) i@@44) (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v2@@10) i@@44)))
 :qid |DiemSystembpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemSystembpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_202897) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_202897| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_234210 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@26) i@@45)))
 :qid |DiemSystembpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemSystembpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_202897) (e@@10 T@Vec_30471) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_234210 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@27) i@@47) e@@10))
 :qid |DiemSystembpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_234210 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@27) j@@10) e@@10)))
 :qid |DiemSystembpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemSystembpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_30471) (v2@@11 T@Vec_30471) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_30471| v1@@11) (|l#Vec_30471| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_30471| v2@@11) i@@48)))
 :qid |DiemSystembpl.2787:13|
 :skolemid |101|
))))
 :qid |DiemSystembpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_30471) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_30471| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_30471| v@@28) i@@49)))
 :qid |DiemSystembpl.2793:13|
 :skolemid |103|
))))
 :qid |DiemSystembpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_30471) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@29) i@@51) e@@11))
 :qid |DiemSystembpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@29) j@@11) e@@11)))
 :qid |DiemSystembpl.2806:17|
 :skolemid |106|
)))))
 :qid |DiemSystembpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_30471) (v2@@12 T@Vec_30471) ) (! (= (|$IsEqual'vec'u64''| v1@@12 v2@@12)  (and (= (|l#Vec_30471| v1@@12) (|l#Vec_30471| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_30471| v2@@12) i@@52)))
 :qid |DiemSystembpl.2968:13|
 :skolemid |108|
))))
 :qid |DiemSystembpl.2966:29|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u64''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_30471) ) (! (= (|$IsValid'vec'u64''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_30471| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_30471| v@@30) i@@53)))
 :qid |DiemSystembpl.2974:13|
 :skolemid |110|
))))
 :qid |DiemSystembpl.2972:29|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u64''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_30471) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u64'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@31) i@@55) e@@12))
 :qid |DiemSystembpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@31) j@@12) e@@12)))
 :qid |DiemSystembpl.2987:17|
 :skolemid |113|
)))))
 :qid |DiemSystembpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u64'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_30471) (v2@@13 T@Vec_30471) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13)  (and (= (|l#Vec_30471| v1@@13) (|l#Vec_30471| v2@@13)) (forall ((i@@56 Int) ) (!  (=> (InRangeVec_16728 v1@@13 i@@56) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v1@@13) i@@56) (|Select__T@[Int]Int_| (|v#Vec_30471| v2@@13) i@@56)))
 :qid |DiemSystembpl.3149:13|
 :skolemid |115|
))))
 :qid |DiemSystembpl.3147:28|
 :skolemid |116|
 :pattern ( (|$IsEqual'vec'u8''| v1@@13 v2@@13))
)))
(assert (forall ((v@@32 T@Vec_30471) ) (! (= (|$IsValid'vec'u8''| v@@32)  (and (|$IsValid'u64'| (|l#Vec_30471| v@@32)) (forall ((i@@57 Int) ) (!  (=> (InRangeVec_16728 v@@32 i@@57) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_30471| v@@32) i@@57)))
 :qid |DiemSystembpl.3155:13|
 :skolemid |117|
))))
 :qid |DiemSystembpl.3153:28|
 :skolemid |118|
 :pattern ( (|$IsValid'vec'u8''| v@@32))
)))
(assert (forall ((v@@33 T@Vec_30471) (e@@13 Int) ) (! (let ((i@@58 (|$IndexOfVec'u8'| v@@33 e@@13)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (InRangeVec_16728 v@@33 i@@59)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@33) i@@59) e@@13))
 :qid |DiemSystembpl.3160:13|
 :skolemid |119|
))) (= i@@58 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@58) (InRangeVec_16728 v@@33 i@@58)) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@33) i@@58) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@13) (>= j@@13 0)) (< j@@13 i@@58)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@33) j@@13) e@@13)))
 :qid |DiemSystembpl.3168:17|
 :skolemid |120|
)))))
 :qid |DiemSystembpl.3164:15|
 :skolemid |121|
 :pattern ( (|$IndexOfVec'u8'| v@@33 e@@13))
)))
(assert (forall ((v1@@14 T@Vec_30471) (v2@@14 T@Vec_30471) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14)))
 :qid |DiemSystembpl.3341:15|
 :skolemid |122|
 :pattern ( ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14))
)))
(assert (forall ((v1@@15 T@Vec_30471) (v2@@15 T@Vec_30471) ) (! (= (|$IsEqual'vec'u8''| v1@@15 v2@@15) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15)))
 :qid |DiemSystembpl.3357:15|
 :skolemid |123|
 :pattern ( ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15))
)))
(assert (forall ((k1 T@Vec_30471) (k2 T@Vec_30471) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemSystembpl.3428:15|
 :skolemid |124|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_30471) (s2 T@Vec_30471) (k1@@0 T@Vec_30471) (k2@@0 T@Vec_30471) (m1 T@Vec_30471) (m2 T@Vec_30471) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemSystembpl.3431:15|
 :skolemid |125|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_202527_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_202527| stream) 0) (forall ((v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_202527| stream) v@@34) 0)
 :qid |DiemSystembpl.159:13|
 :skolemid |4|
))))
 :qid |DiemSystembpl.3492:13|
 :skolemid |126|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemSystembpl.3533:80|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@16)))
 :qid |DiemSystembpl.3539:15|
 :skolemid |129|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemSystembpl.3589:82|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@17 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@17 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@17)))
 :qid |DiemSystembpl.3595:15|
 :skolemid |131|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@17))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemSystembpl.3645:80|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@18 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@18 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@18)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@18))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@18) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@18))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@18)))
 :qid |DiemSystembpl.3651:15|
 :skolemid |133|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@18) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@18))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemSystembpl.3701:79|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_AdminTransactionEvent) (v2@@19 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@19)))
 :qid |DiemSystembpl.3707:15|
 :skolemid |135|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@19))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemSystembpl.3757:76|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_CreateAccountEvent) (v2@@20 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@20 v2@@20) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@20)))
 :qid |DiemSystembpl.3763:15|
 :skolemid |137|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@20))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemSystembpl.3813:78|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@21 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@21)))
 :qid |DiemSystembpl.3819:15|
 :skolemid |139|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemSystembpl.3869:74|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@22 T@$1_DiemAccount_SentPaymentEvent) (v2@@22 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@22))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@22))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@22) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@22))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@22)))
 :qid |DiemSystembpl.3875:15|
 :skolemid |141|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@22))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemSystembpl.3925:69|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@23 T@$1_DiemBlock_NewBlockEvent) (v2@@23 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@23) (|$round#$1_DiemBlock_NewBlockEvent| v2@@23)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@23) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@23))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@23) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@23))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@23) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@23))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@23) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@23)))
 :qid |DiemSystembpl.3931:15|
 :skolemid |143|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@23) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@23))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemSystembpl.3981:70|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@24 T@$1_DiemConfig_NewEpochEvent) (v2@@24 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@24 v2@@24) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@24)))
 :qid |DiemSystembpl.3987:15|
 :skolemid |145|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@24))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemSystembpl.4037:60|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@25 T@$1_Diem_BurnEvent) (v2@@25 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@25) (|$amount#$1_Diem_BurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@25) (|$currency_code#$1_Diem_BurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@25) (|$preburn_address#$1_Diem_BurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@25)))
 :qid |DiemSystembpl.4043:15|
 :skolemid |147|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@25))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemSystembpl.4093:66|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@26 T@$1_Diem_CancelBurnEvent) (v2@@26 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@26) (|$amount#$1_Diem_CancelBurnEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@26) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@26))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@26) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@26)))
 :qid |DiemSystembpl.4099:15|
 :skolemid |149|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@26))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemSystembpl.4149:60|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@27 T@$1_Diem_MintEvent) (v2@@27 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@27) (|$amount#$1_Diem_MintEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@27) (|$currency_code#$1_Diem_MintEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@27) (|$ToEventRep'$1_Diem_MintEvent'| v2@@27)))
 :qid |DiemSystembpl.4155:15|
 :skolemid |151|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@27) (|$ToEventRep'$1_Diem_MintEvent'| v2@@27))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemSystembpl.4205:63|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@28 T@$1_Diem_PreburnEvent) (v2@@28 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@28) (|$amount#$1_Diem_PreburnEvent| v2@@28)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@28) (|$currency_code#$1_Diem_PreburnEvent| v2@@28))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@28) (|$preburn_address#$1_Diem_PreburnEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@28) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@28)))
 :qid |DiemSystembpl.4211:15|
 :skolemid |153|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@28) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@28))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemSystembpl.4261:79|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@29 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@29 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@29) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@29)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@29) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@29))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@29) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@29)))
 :qid |DiemSystembpl.4267:15|
 :skolemid |155|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@29) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@29))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemSystembpl.4317:82|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@30 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@30) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@30)))
 :qid |DiemSystembpl.4323:15|
 :skolemid |157|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@30))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemSystembpl.4373:88|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@31 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@31 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@31) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@31)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@31) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@31))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@31)))
 :qid |DiemSystembpl.4379:15|
 :skolemid |159|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@31))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemSystembpl.4429:72|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@32 T@$1_VASPDomain_VASPDomainEvent) (v2@@32 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@32) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@32)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@32)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@32)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@32) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@32))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@32) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@32)))
 :qid |DiemSystembpl.4435:15|
 :skolemid |161|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@32) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@32))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemSystembpl.4514:61|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemSystembpl.5329:36|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemSystembpl.6830:71|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@2) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@2)))
 :qid |DiemSystembpl.7264:42|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemSystembpl.7276:46|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemSystembpl.7288:64|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemSystembpl.7300:75|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemSystembpl.7312:72|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemSystembpl.7360:55|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemSystembpl.7383:46|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemSystembpl.9127:49|
 :skolemid |265|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemSystembpl.9227:71|
 :skolemid |266|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemSystembpl.9240:91|
 :skolemid |267|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemSystembpl.9253:113|
 :skolemid |268|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@13) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@13)))
 :qid |DiemSystembpl.9266:89|
 :skolemid |269|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@14)))
 :qid |DiemSystembpl.9279:75|
 :skolemid |270|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@15)))
 :qid |DiemSystembpl.9292:73|
 :skolemid |271|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@16) true)
 :qid |DiemSystembpl.9306:49|
 :skolemid |272|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@17)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@17)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@17))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@17))))
 :qid |DiemSystembpl.9326:48|
 :skolemid |273|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@18) true)
 :qid |DiemSystembpl.9343:57|
 :skolemid |274|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@19) true)
 :qid |DiemSystembpl.9357:83|
 :skolemid |275|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@20) true)
 :qid |DiemSystembpl.9371:103|
 :skolemid |276|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@21) true)
 :qid |DiemSystembpl.9385:125|
 :skolemid |277|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@22) true)
 :qid |DiemSystembpl.9399:101|
 :skolemid |278|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@23) true)
 :qid |DiemSystembpl.9413:87|
 :skolemid |279|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@24) true)
 :qid |DiemSystembpl.9427:85|
 :skolemid |280|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@25) true)
 :qid |DiemSystembpl.9441:61|
 :skolemid |281|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@26) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@26)))
 :qid |DiemSystembpl.9455:48|
 :skolemid |282|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@27)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@27)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@27))))
 :qid |DiemSystembpl.18069:45|
 :skolemid |576|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@27))
)))
(assert (forall ((s@@28 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@28) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@28)))
 :qid |DiemSystembpl.18083:51|
 :skolemid |577|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@28))
)))
(assert (forall ((s@@29 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@29)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@29)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@29))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@29))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@29))))
 :qid |DiemSystembpl.18106:48|
 :skolemid |578|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@29))
)))
(assert (forall ((s@@30 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@30) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@30)))
 :qid |DiemSystembpl.24887:49|
 :skolemid |841|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@30))
)))
(assert (forall ((s@@31 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@31) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@31)))
 :qid |DiemSystembpl.24900:65|
 :skolemid |842|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@32) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@32)))
 :qid |DiemSystembpl.25441:45|
 :skolemid |843|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@33) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@33)))
 :qid |DiemSystembpl.25454:45|
 :skolemid |844|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@34) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@34)))
 :qid |DiemSystembpl.25467:37|
 :skolemid |845|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@35) true)
 :qid |DiemSystembpl.25480:55|
 :skolemid |846|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@36) true)
 :qid |DiemSystembpl.25494:55|
 :skolemid |847|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@37)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@37))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@37))))
 :qid |DiemSystembpl.25514:38|
 :skolemid |848|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@38)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@38))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@38))))
 :qid |DiemSystembpl.25536:44|
 :skolemid |849|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@39))))
 :qid |DiemSystembpl.25588:53|
 :skolemid |850|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@40)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@40))))
 :qid |DiemSystembpl.25661:53|
 :skolemid |851|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@41)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@41)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@41))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@41))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@41))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@41))))
 :qid |DiemSystembpl.25734:45|
 :skolemid |852|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@42) true)
 :qid |DiemSystembpl.25771:55|
 :skolemid |853|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@43) true)
 :qid |DiemSystembpl.25785:55|
 :skolemid |854|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@44) true)
 :qid |DiemSystembpl.25799:47|
 :skolemid |855|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@45)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@45))))
 :qid |DiemSystembpl.25816:38|
 :skolemid |856|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@46) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@46)))
 :qid |DiemSystembpl.25830:48|
 :skolemid |857|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@47) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@47)))
 :qid |DiemSystembpl.25844:48|
 :skolemid |858|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@48) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@48)))
 :qid |DiemSystembpl.25858:40|
 :skolemid |859|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@48))
)))
(assert (forall ((s@@49 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@49)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@49)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@49))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@49))))
 :qid |DiemSystembpl.25878:41|
 :skolemid |860|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@50)))
 :qid |DiemSystembpl.25894:53|
 :skolemid |861|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@51) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@51)))
 :qid |DiemSystembpl.25907:53|
 :skolemid |862|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@52) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@52)))
 :qid |DiemSystembpl.25920:45|
 :skolemid |863|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@53))))
 :qid |DiemSystembpl.25936:60|
 :skolemid |864|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@54)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@54)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@54))))
 :qid |DiemSystembpl.25953:60|
 :skolemid |865|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@55)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@55)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@55))))
 :qid |DiemSystembpl.25970:52|
 :skolemid |866|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@55))
)))
(assert (forall ((s@@56 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@56)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@56)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@56))))
 :qid |DiemSystembpl.25987:57|
 :skolemid |867|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@57) true)
 :qid |DiemSystembpl.28160:68|
 :skolemid |868|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@58))))
 :qid |DiemSystembpl.28182:66|
 :skolemid |869|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@59)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@59)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@59))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@59))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@59))))
 :qid |DiemSystembpl.28208:66|
 :skolemid |870|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@60))))
 :qid |DiemSystembpl.28237:56|
 :skolemid |871|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@61))))
 :qid |DiemSystembpl.28267:56|
 :skolemid |872|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |DiemSystembpl.28701:31|
 :skolemid |873|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |DiemSystembpl.29031:31|
 :skolemid |874|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |DiemSystembpl.29050:35|
 :skolemid |875|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |DiemSystembpl.29464:45|
 :skolemid |876|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |DiemSystembpl.29482:50|
 :skolemid |877|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |DiemSystembpl.29498:52|
 :skolemid |878|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |DiemSystembpl.29511:46|
 :skolemid |879|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |DiemSystembpl.29892:38|
 :skolemid |880|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |DiemSystembpl.29906:39|
 :skolemid |881|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |DiemSystembpl.30593:65|
 :skolemid |882|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@72))))
 :qid |DiemSystembpl.30961:60|
 :skolemid |883|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73))))
 :qid |DiemSystembpl.30978:66|
 :skolemid |884|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@74)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@74))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@74))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@74))))
 :qid |DiemSystembpl.31007:50|
 :skolemid |885|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@75) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@75)))
 :qid |DiemSystembpl.31030:45|
 :skolemid |886|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@76)) true))
 :qid |DiemSystembpl.31603:87|
 :skolemid |887|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@77)))
 :qid |DiemSystembpl.31804:47|
 :skolemid |888|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@78)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@78))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@78))))
 :qid |DiemSystembpl.31823:58|
 :skolemid |889|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@79) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@79)))
 :qid |DiemSystembpl.31839:39|
 :skolemid |890|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@80))))
 :qid |DiemSystembpl.31861:58|
 :skolemid |891|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81))))
 :qid |DiemSystembpl.31878:58|
 :skolemid |892|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82) true)
 :qid |DiemSystembpl.31893:51|
 :skolemid |893|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82))
)))
(assert (forall ((s@@83 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83))))
 :qid |DiemSystembpl.31910:60|
 :skolemid |894|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@84)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@84))))
 :qid |DiemSystembpl.32196:47|
 :skolemid |895|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@85))))
 :qid |DiemSystembpl.32222:63|
 :skolemid |896|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@86)))
 :qid |DiemSystembpl.32237:57|
 :skolemid |897|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@87)))
 :qid |DiemSystembpl.32250:55|
 :skolemid |898|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@88)))
 :qid |DiemSystembpl.32264:55|
 :skolemid |899|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88))
)))
(assert (forall ((s@@89 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@89) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@89)))
 :qid |DiemSystembpl.32278:47|
 :skolemid |900|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@90)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@90)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@90))))
 :qid |DiemSystembpl.32295:54|
 :skolemid |901|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@91) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@91)))
 :qid |DiemSystembpl.32309:55|
 :skolemid |902|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@92) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@92)))
 :qid |DiemSystembpl.32322:57|
 :skolemid |903|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@93))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@93))))
 :qid |DiemSystembpl.32344:56|
 :skolemid |904|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@94)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@94)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@94))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@94))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@94))))
 :qid |DiemSystembpl.32371:52|
 :skolemid |905|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@95) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@95)))
 :qid |DiemSystembpl.32389:54|
 :skolemid |906|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@95))
)))
(assert (forall ((s@@96 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@96) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@96)))
 :qid |DiemSystembpl.49413:55|
 :skolemid |1854|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@97)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@97)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@97))))
 :qid |DiemSystembpl.49434:47|
 :skolemid |1855|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@98)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@98)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@98))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@98))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@98))))
 :qid |DiemSystembpl.49458:47|
 :skolemid |1856|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@99) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@99)))
 :qid |DiemSystembpl.49692:63|
 :skolemid |1857|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@100) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@100)))
 :qid |DiemSystembpl.50027:49|
 :skolemid |1858|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@101)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@101)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@101))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@101))))
 :qid |DiemSystembpl.50069:49|
 :skolemid |1859|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@102)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@102)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@102))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@102))))
 :qid |DiemSystembpl.50098:48|
 :skolemid |1860|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@102))
)))
(assert (forall ((s@@103 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@103) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@103)))
 :qid |DiemSystembpl.50383:47|
 :skolemid |1861|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@103))
)))
(assert (forall ((validators T@Vec_202840) (addr Int) ) (!  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| validators) (|$IsValid'address'| addr)) (=> (exists ((i@@60 Int) ) (!  (and (and (|$IsValid'num'| i@@60) ($InRange ($Range 0 (|l#Vec_202840| validators)) i@@60)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| validators) i@@60)) addr))
 :qid |DiemSystembpl.52087:13|
 :skolemid |1952|
)) (let ((i@@61 ($choice_0 validators addr)))
 (and (and (and (|$IsValid'num'| i@@61) ($InRange ($Range 0 (|l#Vec_202840| validators)) i@@61)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| validators) i@@61)) addr)) (let (($$c i@@61))
(forall ((i@@62 Int) ) (!  (=> (< i@@62 $$c) (not (and (and (|$IsValid'num'| i@@62) ($InRange ($Range 0 (|l#Vec_202840| validators)) i@@62)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| validators) i@@62)) addr))))
 :qid |DiemSystembpl.52089:32|
 :skolemid |1953|
)))))))
 :qid |DiemSystembpl.52086:15|
 :skolemid |1954|
)))
(assert (forall ((v@@35 T@Vec_204552) (i@@63 Int) ) (! (= (InRangeVec_182440 v@@35 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_204552| v@@35))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_182440 v@@35 i@@63))
)))
(assert (forall ((v@@36 T@Vec_202659) (i@@64 Int) ) (! (= (InRangeVec_182641 v@@36 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_202659| v@@36))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_182641 v@@36 i@@64))
)))
(assert (forall ((v@@37 T@Vec_202698) (i@@65 Int) ) (! (= (InRangeVec_182842 v@@37 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_202698| v@@37))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_182842 v@@37 i@@65))
)))
(assert (forall ((v@@38 T@Vec_202840) (i@@66 Int) ) (! (= (InRangeVec_183043 v@@38 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_202840| v@@38))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183043 v@@38 i@@66))
)))
(assert (forall ((v@@39 T@Vec_203182) (i@@67 Int) ) (! (= (InRangeVec_183244 v@@39 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_203182| v@@39))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183244 v@@39 i@@67))
)))
(assert (forall ((v@@40 T@Vec_203143) (i@@68 Int) ) (! (= (InRangeVec_183445 v@@40 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_203143| v@@40))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183445 v@@40 i@@68))
)))
(assert (forall ((v@@41 T@Vec_203104) (i@@69 Int) ) (! (= (InRangeVec_183646 v@@41 i@@69)  (and (>= i@@69 0) (< i@@69 (|l#Vec_203104| v@@41))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183646 v@@41 i@@69))
)))
(assert (forall ((v@@42 T@Vec_203324) (i@@70 Int) ) (! (= (InRangeVec_183847 v@@42 i@@70)  (and (>= i@@70 0) (< i@@70 (|l#Vec_203324| v@@42))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_183847 v@@42 i@@70))
)))
(assert (forall ((v@@43 T@Vec_202620) (i@@71 Int) ) (! (= (InRangeVec_184048 v@@43 i@@71)  (and (>= i@@71 0) (< i@@71 (|l#Vec_202620| v@@43))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_184048 v@@43 i@@71))
)))
(assert (forall ((v@@44 T@Vec_228768) (i@@72 Int) ) (! (= (InRangeVec_184249 v@@44 i@@72)  (and (>= i@@72 0) (< i@@72 (|l#Vec_228768| v@@44))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_184249 v@@44 i@@72))
)))
(assert (forall ((v@@45 T@Vec_231448) (i@@73 Int) ) (! (= (InRangeVec_184450 v@@45 i@@73)  (and (>= i@@73 0) (< i@@73 (|l#Vec_231448| v@@45))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_184450 v@@45 i@@73))
)))
(assert (forall ((v@@46 T@Vec_202897) (i@@74 Int) ) (! (= (InRangeVec_234210 v@@46 i@@74)  (and (>= i@@74 0) (< i@@74 (|l#Vec_202897| v@@46))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_234210 v@@46 i@@74))
)))
(assert (forall ((v@@47 T@Vec_30471) (i@@75 Int) ) (! (= (InRangeVec_16728 v@@47 i@@75)  (and (>= i@@75 0) (< i@@75 (|l#Vec_30471| v@@47))))
 :qid |DiemSystembpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@47 i@@75))
)))
(assert (forall ((v@@48 T@Vec_30471) (e@@14 Int) ) (! (let ((i@@76 (IndexOfVec_30471 v@@48 e@@14)))
(ite  (not (exists ((i@@77 Int) ) (!  (and (InRangeVec_16728 v@@48 i@@77) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@48) i@@77) e@@14))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@76 (- 0 1))  (and (and (InRangeVec_16728 v@@48 i@@76) (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@48) i@@76) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@76)) (not (= (|Select__T@[Int]Int_| (|v#Vec_30471| v@@48) j@@14) e@@14)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_30471 v@@48 e@@14))
)))
(assert (forall ((v@@49 T@Vec_202620) (e@@15 T@$1_ValidatorConfig_Config) ) (! (let ((i@@78 (IndexOfVec_202620 v@@49 e@@15)))
(ite  (not (exists ((i@@79 Int) ) (!  (and (InRangeVec_184048 v@@49 i@@79) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@49) i@@79) e@@15))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@78 (- 0 1))  (and (and (InRangeVec_184048 v@@49 i@@78) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@49) i@@78) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@78)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_202620| v@@49) j@@15) e@@15)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_202620 v@@49 e@@15))
)))
(assert (forall ((v@@50 T@Vec_202659) (e@@16 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@80 (IndexOfVec_202659 v@@50 e@@16)))
(ite  (not (exists ((i@@81 Int) ) (!  (and (InRangeVec_182641 v@@50 i@@81) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@50) i@@81) e@@16))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@80 (- 0 1))  (and (and (InRangeVec_182641 v@@50 i@@80) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@50) i@@80) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@80)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_202659| v@@50) j@@16) e@@16)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_202659 v@@50 e@@16))
)))
(assert (forall ((v@@51 T@Vec_202698) (e@@17 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@82 (IndexOfVec_202698 v@@51 e@@17)))
(ite  (not (exists ((i@@83 Int) ) (!  (and (InRangeVec_182842 v@@51 i@@83) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@51) i@@83) e@@17))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@82 (- 0 1))  (and (and (InRangeVec_182842 v@@51 i@@82) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@51) i@@82) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@82)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_202698| v@@51) j@@17) e@@17)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_202698 v@@51 e@@17))
)))
(assert (forall ((v@@52 T@Vec_202840) (e@@18 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@84 (IndexOfVec_202840 v@@52 e@@18)))
(ite  (not (exists ((i@@85 Int) ) (!  (and (InRangeVec_183043 v@@52 i@@85) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@52) i@@85) e@@18))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@84 (- 0 1))  (and (and (InRangeVec_183043 v@@52 i@@84) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@52) i@@84) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@84)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_202840| v@@52) j@@18) e@@18)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_202840 v@@52 e@@18))
)))
(assert (forall ((v@@53 T@Vec_202897) (e@@19 T@Vec_30471) ) (! (let ((i@@86 (IndexOfVec_202897 v@@53 e@@19)))
(ite  (not (exists ((i@@87 Int) ) (!  (and (InRangeVec_234210 v@@53 i@@87) (= (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@53) i@@87) e@@19))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@86 (- 0 1))  (and (and (InRangeVec_234210 v@@53 i@@86) (= (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@53) i@@86) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@86)) (not (= (|Select__T@[Int]Vec_30471_| (|v#Vec_202897| v@@53) j@@19) e@@19)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_202897 v@@53 e@@19))
)))
(assert (forall ((v@@54 T@Vec_203104) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@88 (IndexOfVec_203104 v@@54 e@@20)))
(ite  (not (exists ((i@@89 Int) ) (!  (and (InRangeVec_183646 v@@54 i@@89) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@54) i@@89) e@@20))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@88 (- 0 1))  (and (and (InRangeVec_183646 v@@54 i@@88) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@54) i@@88) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@88)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_203104| v@@54) j@@20) e@@20)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_203104 v@@54 e@@20))
)))
(assert (forall ((v@@55 T@Vec_203143) (e@@21 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@90 (IndexOfVec_203143 v@@55 e@@21)))
(ite  (not (exists ((i@@91 Int) ) (!  (and (InRangeVec_183445 v@@55 i@@91) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@55) i@@91) e@@21))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@90 (- 0 1))  (and (and (InRangeVec_183445 v@@55 i@@90) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@55) i@@90) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@90)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_203143| v@@55) j@@21) e@@21)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_203143 v@@55 e@@21))
)))
(assert (forall ((v@@56 T@Vec_203182) (e@@22 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@92 (IndexOfVec_203182 v@@56 e@@22)))
(ite  (not (exists ((i@@93 Int) ) (!  (and (InRangeVec_183244 v@@56 i@@93) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@56) i@@93) e@@22))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@92 (- 0 1))  (and (and (InRangeVec_183244 v@@56 i@@92) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@56) i@@92) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@92)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_203182| v@@56) j@@22) e@@22)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_203182 v@@56 e@@22))
)))
(assert (forall ((v@@57 T@Vec_203324) (e@@23 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@94 (IndexOfVec_203324 v@@57 e@@23)))
(ite  (not (exists ((i@@95 Int) ) (!  (and (InRangeVec_183847 v@@57 i@@95) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@57) i@@95) e@@23))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@94 (- 0 1))  (and (and (InRangeVec_183847 v@@57 i@@94) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@57) i@@94) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@94)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_203324| v@@57) j@@23) e@@23)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_203324 v@@57 e@@23))
)))
(assert (forall ((v@@58 T@Vec_204552) (e@@24 |T@#0|) ) (! (let ((i@@96 (IndexOfVec_204552 v@@58 e@@24)))
(ite  (not (exists ((i@@97 Int) ) (!  (and (InRangeVec_182440 v@@58 i@@97) (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@58) i@@97) e@@24))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@96 (- 0 1))  (and (and (InRangeVec_182440 v@@58 i@@96) (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@58) i@@96) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@96)) (not (= (|Select__T@[Int]#0_| (|v#Vec_204552| v@@58) j@@24) e@@24)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_204552 v@@58 e@@24))
)))
(assert (forall ((v@@59 T@Vec_228768) (e@@25 T@$1_XDX_XDX) ) (! (let ((i@@98 (IndexOfVec_228768 v@@59 e@@25)))
(ite  (not (exists ((i@@99 Int) ) (!  (and (InRangeVec_184249 v@@59 i@@99) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@59) i@@99) e@@25))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@98 (- 0 1))  (and (and (InRangeVec_184249 v@@59 i@@98) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@59) i@@98) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@98)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_228768| v@@59) j@@25) e@@25)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_228768 v@@59 e@@25))
)))
(assert (forall ((v@@60 T@Vec_231448) (e@@26 T@$1_XUS_XUS) ) (! (let ((i@@100 (IndexOfVec_231448 v@@60 e@@26)))
(ite  (not (exists ((i@@101 Int) ) (!  (and (InRangeVec_184450 v@@60 i@@101) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@60) i@@101) e@@26))
 :qid |DiemSystembpl.109:13|
 :skolemid |0|
))) (= i@@100 (- 0 1))  (and (and (InRangeVec_184450 v@@60 i@@100) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@60) i@@100) e@@26)) (forall ((j@@26 Int) ) (!  (=> (and (>= j@@26 0) (< j@@26 i@@100)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_231448| v@@60) j@@26) e@@26)))
 :qid |DiemSystembpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemSystembpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_231448 v@@60 e@@26))
)))
(assert (forall ((|l#0| Bool) (i@@102 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@102) |l#0|)
 :qid |DiemSystembpl.275:54|
 :skolemid |1955|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@102))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_202527|) (|l#1| |T@[$1_Event_EventHandle]Multiset_202527|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_202527_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_202527| (|Select__T@[$1_Event_EventHandle]Multiset_202527_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_202527| (|Select__T@[$1_Event_EventHandle]Multiset_202527_| |l#1| handle@@0))))
(Multiset_202527 (|lambda#42| (|v#Multiset_202527| (|Select__T@[$1_Event_EventHandle]Multiset_202527_| |l#0@@0| handle@@0)) (|v#Multiset_202527| (|Select__T@[$1_Event_EventHandle]Multiset_202527_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemSystembpl.3502:13|
 :skolemid |1956|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_202527_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@103 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@103) (ite  (and (>= i@@103 |l#0@@1|) (< i@@103 |l#1@@0|)) (ite (< i@@103 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@103) (|Select__T@[Int]#0_| |l#4| (- i@@103 |l#5|))) |l#6|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1957|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@103))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@104 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@104) (ite  (and (<= |l#0@@2| i@@104) (< i@@104 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@104) |l#4@@0|)) |l#5@@0|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1958|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@104))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@27 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27) (ite  (and (>= j@@27 |l#0@@3|) (< j@@27 |l#1@@2|)) (ite (< j@@27 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@27) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@27 |l#5@@1|))) |l#6@@0|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1959|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@105) (ite  (and (>= i@@105 |l#0@@4|) (< i@@105 |l#1@@3|)) (ite (< i@@105 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@105) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@105 |l#5@@2|))) |l#6@@1|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1960|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@105))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@106) (ite  (and (<= |l#0@@5| i@@106) (< i@@106 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@106) |l#4@@3|)) |l#5@@3|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1961|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@106))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28) (ite  (and (>= j@@28 |l#0@@6|) (< j@@28 |l#1@@5|)) (ite (< j@@28 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@28) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@28 |l#5@@4|))) |l#6@@2|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1962|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@107) (ite  (and (>= i@@107 |l#0@@7|) (< i@@107 |l#1@@6|)) (ite (< i@@107 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@107) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@107 |l#5@@5|))) |l#6@@3|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1963|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@107))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@108) (ite  (and (<= |l#0@@8| i@@108) (< i@@108 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@108) |l#4@@6|)) |l#5@@6|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1964|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@108))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29) (ite  (and (>= j@@29 |l#0@@9|) (< j@@29 |l#1@@8|)) (ite (< j@@29 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@29) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@29 |l#5@@7|))) |l#6@@4|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1965|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@109) (ite  (and (>= i@@109 |l#0@@10|) (< i@@109 |l#1@@9|)) (ite (< i@@109 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@109) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@109 |l#5@@8|))) |l#6@@5|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1966|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@109))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@110) (ite  (and (<= |l#0@@11| i@@110) (< i@@110 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@110) |l#4@@9|)) |l#5@@9|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1967|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@110))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30) (ite  (and (>= j@@30 |l#0@@12|) (< j@@30 |l#1@@11|)) (ite (< j@@30 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@30) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@30 |l#5@@10|))) |l#6@@6|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1968|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@111) (ite  (and (>= i@@111 |l#0@@13|) (< i@@111 |l#1@@12|)) (ite (< i@@111 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@111) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@111 |l#5@@11|))) |l#6@@7|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1969|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@111))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@112) (ite  (and (<= |l#0@@14| i@@112) (< i@@112 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@112) |l#4@@12|)) |l#5@@12|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1970|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@112))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31) (ite  (and (>= j@@31 |l#0@@15|) (< j@@31 |l#1@@14|)) (ite (< j@@31 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@31 |l#5@@13|))) |l#6@@8|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1971|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@113) (ite  (and (>= i@@113 |l#0@@16|) (< i@@113 |l#1@@15|)) (ite (< i@@113 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@113) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@113 |l#5@@14|))) |l#6@@9|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1972|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@113))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@114) (ite  (and (<= |l#0@@17| i@@114) (< i@@114 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@114) |l#4@@15|)) |l#5@@15|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1973|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@114))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32) (ite  (and (>= j@@32 |l#0@@18|) (< j@@32 |l#1@@17|)) (ite (< j@@32 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@32 |l#5@@16|))) |l#6@@10|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1974|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@115) (ite  (and (>= i@@115 |l#0@@19|) (< i@@115 |l#1@@18|)) (ite (< i@@115 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@115) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@115 |l#5@@17|))) |l#6@@11|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1975|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@115))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@116) (ite  (and (<= |l#0@@20| i@@116) (< i@@116 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@116) |l#4@@18|)) |l#5@@18|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1976|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@116))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33) (ite  (and (>= j@@33 |l#0@@21|) (< j@@33 |l#1@@20|)) (ite (< j@@33 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@33) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@33 |l#5@@19|))) |l#6@@12|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1977|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@117) (ite  (and (>= i@@117 |l#0@@22|) (< i@@117 |l#1@@21|)) (ite (< i@@117 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@117) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@117 |l#5@@20|))) |l#6@@13|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1978|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@117))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@118 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@118) (ite  (and (<= |l#0@@23| i@@118) (< i@@118 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@118) |l#4@@21|)) |l#5@@21|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1979|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@118))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34) (ite  (and (>= j@@34 |l#0@@24|) (< j@@34 |l#1@@23|)) (ite (< j@@34 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@34) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@34 |l#5@@22|))) |l#6@@14|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1980|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@119 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@119) (ite  (and (>= i@@119 |l#0@@25|) (< i@@119 |l#1@@24|)) (ite (< i@@119 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@119) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@119 |l#5@@23|))) |l#6@@15|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1981|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@119))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@120 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@120) (ite  (and (<= |l#0@@26| i@@120) (< i@@120 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@120) |l#4@@24|)) |l#5@@24|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1982|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@120))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35) (ite  (and (>= j@@35 |l#0@@27|) (< j@@35 |l#1@@26|)) (ite (< j@@35 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@35) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@35 |l#5@@25|))) |l#6@@16|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1983|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@121 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@121) (ite  (and (>= i@@121 |l#0@@28|) (< i@@121 |l#1@@27|)) (ite (< i@@121 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@121) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@121 |l#5@@26|))) |l#6@@17|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1984|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@121))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@122 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@122) (ite  (and (<= |l#0@@29| i@@122) (< i@@122 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@122) |l#4@@27|)) |l#5@@27|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1985|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@122))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36) (ite  (and (>= j@@36 |l#0@@30|) (< j@@36 |l#1@@29|)) (ite (< j@@36 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@36) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@36 |l#5@@28|))) |l#6@@18|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1986|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@123 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@123) (ite  (and (>= i@@123 |l#0@@31|) (< i@@123 |l#1@@30|)) (ite (< i@@123 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@123) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@123 |l#5@@29|))) |l#6@@19|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1987|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@123))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@124 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@124) (ite  (and (<= |l#0@@32| i@@124) (< i@@124 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@124) |l#4@@30|)) |l#5@@30|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1988|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@124))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@37 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37) (ite  (and (>= j@@37 |l#0@@33|) (< j@@37 |l#1@@32|)) (ite (< j@@37 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@37) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@37 |l#5@@31|))) |l#6@@20|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1989|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_30471|) (|l#4@@32| |T@[Int]Vec_30471|) (|l#5@@32| Int) (|l#6@@21| T@Vec_30471) (i@@125 Int) ) (! (= (|Select__T@[Int]Vec_30471_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@125) (ite  (and (>= i@@125 |l#0@@34|) (< i@@125 |l#1@@33|)) (ite (< i@@125 |l#2@@32|) (|Select__T@[Int]Vec_30471_| |l#3@@32| i@@125) (|Select__T@[Int]Vec_30471_| |l#4@@32| (- i@@125 |l#5@@32|))) |l#6@@21|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1990|
 :pattern ( (|Select__T@[Int]Vec_30471_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@125))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_30471|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_30471) (i@@126 Int) ) (! (= (|Select__T@[Int]Vec_30471_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@126) (ite  (and (<= |l#0@@35| i@@126) (< i@@126 |l#1@@34|)) (|Select__T@[Int]Vec_30471_| |l#2@@33| (- (- |l#3@@33| i@@126) |l#4@@33|)) |l#5@@33|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1991|
 :pattern ( (|Select__T@[Int]Vec_30471_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@126))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_30471|) (|l#4@@34| |T@[Int]Vec_30471|) (|l#5@@34| Int) (|l#6@@22| T@Vec_30471) (j@@38 Int) ) (! (= (|Select__T@[Int]Vec_30471_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38) (ite  (and (>= j@@38 |l#0@@36|) (< j@@38 |l#1@@35|)) (ite (< j@@38 |l#2@@34|) (|Select__T@[Int]Vec_30471_| |l#3@@34| j@@38) (|Select__T@[Int]Vec_30471_| |l#4@@34| (+ j@@38 |l#5@@34|))) |l#6@@22|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1992|
 :pattern ( (|Select__T@[Int]Vec_30471_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@127 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@127) (ite  (and (>= i@@127 |l#0@@37|) (< i@@127 |l#1@@36|)) (ite (< i@@127 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@127) (|Select__T@[Int]Int_| |l#4@@35| (- i@@127 |l#5@@35|))) |l#6@@23|))
 :qid |DiemSystembpl.73:19|
 :skolemid |1993|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@127))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@128 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@128) (ite  (and (<= |l#0@@38| i@@128) (< i@@128 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@128) |l#4@@36|)) |l#5@@36|))
 :qid |DiemSystembpl.82:30|
 :skolemid |1994|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@128))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@39 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39) (ite  (and (>= j@@39 |l#0@@39|) (< j@@39 |l#1@@38|)) (ite (< j@@39 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@39) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@39 |l#5@@37|))) |l#6@@24|))
 :qid |DiemSystembpl.63:20|
 :skolemid |1995|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@61 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@61) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@61) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@61)))
 :qid |DiemSystembpl.154:29|
 :skolemid |1996|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@61))
)))
(assert (forall ((|l#0@@41| Int) (|l#1@@40| Int) (|l#2@@38| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@38| Int) (|l#4@@38| T@$1_DiemSystem_ValidatorInfo) (k Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#43| |l#0@@41| |l#1@@40| |l#2@@38| |l#3@@38| |l#4@@38|) k) (ite  (and (<= |l#0@@41| k) (< k |l#1@@40|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@38| (+ |l#3@@38| k)) |l#4@@38|))
 :qid |DiemSystembpl.90:14|
 :skolemid |1997|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#43| |l#0@@41| |l#1@@40| |l#2@@38| |l#3@@38| |l#4@@38|) k))
)))
; Valid

