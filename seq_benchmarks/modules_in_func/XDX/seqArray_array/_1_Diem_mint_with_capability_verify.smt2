(set-option :print-success false)
(set-option :pre-skolem-quant true)
(set-option :dt-share-sel false)
(set-option :ee-mode central)
(set-logic ALL)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_166791 0)) ((($Memory_166791 (|domain#$Memory_166791| |T@[Int]Bool|) (|contents#$Memory_166791| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_135716 0)) (((Vec_135716 (|v#Vec_135716| |T@[Int]#0|) (|l#Vec_135716| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_176545 0)) ((($Memory_176545 (|domain#$Memory_176545| |T@[Int]Bool|) (|contents#$Memory_176545| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_176474 0)) ((($Memory_176474 (|domain#$Memory_176474| |T@[Int]Bool|) (|contents#$Memory_176474| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_176231 0)) ((($Memory_176231 (|domain#$Memory_176231| |T@[Int]Bool|) (|contents#$Memory_176231| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_176160 0)) ((($Memory_176160 (|domain#$Memory_176160| |T@[Int]Bool|) (|contents#$Memory_176160| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_176089 0)) ((($Memory_176089 (|domain#$Memory_176089| |T@[Int]Bool|) (|contents#$Memory_176089| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_246309 0)) ((($Memory_246309 (|domain#$Memory_246309| |T@[Int]Bool|) (|contents#$Memory_246309| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_175921 0)) ((($Memory_175921 (|domain#$Memory_175921| |T@[Int]Bool|) (|contents#$Memory_175921| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_246564 0)) ((($Memory_246564 (|domain#$Memory_246564| |T@[Int]Bool|) (|contents#$Memory_246564| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_246664 0)) ((($Memory_246664 (|domain#$Memory_246664| |T@[Int]Bool|) (|contents#$Memory_246664| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_245992 0)) ((($Memory_245992 (|domain#$Memory_245992| |T@[Int]Bool|) (|contents#$Memory_245992| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_283009 0)) ((($Memory_283009 (|domain#$Memory_283009| |T@[Int]Bool|) (|contents#$Memory_283009| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_282722 0)) ((($Memory_282722 (|domain#$Memory_282722| |T@[Int]Bool|) (|contents#$Memory_282722| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_282435 0)) ((($Memory_282435 (|domain#$Memory_282435| |T@[Int]Bool|) (|contents#$Memory_282435| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_282148 0)) ((($Memory_282148 (|domain#$Memory_282148| |T@[Int]Bool|) (|contents#$Memory_282148| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_175753 0)) ((($Memory_175753 (|domain#$Memory_175753| |T@[Int]Bool|) (|contents#$Memory_175753| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_175514 0)) ((($Memory_175514 (|domain#$Memory_175514| |T@[Int]Bool|) (|contents#$Memory_175514| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_176403 0)) ((($Memory_176403 (|domain#$Memory_176403| |T@[Int]Bool|) (|contents#$Memory_176403| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_186646 0)) ((($Memory_186646 (|domain#$Memory_186646| |T@[Int]Bool|) (|contents#$Memory_186646| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_186582 0)) ((($Memory_186582 (|domain#$Memory_186582| |T@[Int]Bool|) (|contents#$Memory_186582| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_186518 0)) ((($Memory_186518 (|domain#$Memory_186518| |T@[Int]Bool|) (|contents#$Memory_186518| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_187100 0)) ((($Memory_187100 (|domain#$Memory_187100| |T@[Int]Bool|) (|contents#$Memory_187100| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_187013 0)) ((($Memory_187013 (|domain#$Memory_187013| |T@[Int]Bool|) (|contents#$Memory_187013| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_186926 0)) ((($Memory_186926 (|domain#$Memory_186926| |T@[Int]Bool|) (|contents#$Memory_186926| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_192927 0)) ((($Memory_192927 (|domain#$Memory_192927| |T@[Int]Bool|) (|contents#$Memory_192927| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_246224 0)) ((($Memory_246224 (|domain#$Memory_246224| |T@[Int]Bool|) (|contents#$Memory_246224| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_192846 0)) ((($Memory_192846 (|domain#$Memory_192846| |T@[Int]Bool|) (|contents#$Memory_192846| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_175585 0)) ((($Memory_175585 (|domain#$Memory_175585| |T@[Int]Bool|) (|contents#$Memory_175585| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_246164 0)) ((($Memory_246164 (|domain#$Memory_246164| |T@[Int]Bool|) (|contents#$Memory_246164| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_192765 0)) ((($Memory_192765 (|domain#$Memory_192765| |T@[Int]Bool|) (|contents#$Memory_192765| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_175824 0)) ((($Memory_175824 (|domain#$Memory_175824| |T@[Int]Bool|) (|contents#$Memory_175824| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_181917 0)) ((($Memory_181917 (|domain#$Memory_181917| |T@[Int]Bool|) (|contents#$Memory_181917| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_181830 0)) ((($Memory_181830 (|domain#$Memory_181830| |T@[Int]Bool|) (|contents#$Memory_181830| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_181743 0)) ((($Memory_181743 (|domain#$Memory_181743| |T@[Int]Bool|) (|contents#$Memory_181743| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_181656 0)) ((($Memory_181656 (|domain#$Memory_181656| |T@[Int]Bool|) (|contents#$Memory_181656| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_181569 0)) ((($Memory_181569 (|domain#$Memory_181569| |T@[Int]Bool|) (|contents#$Memory_181569| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_181482 0)) ((($Memory_181482 (|domain#$Memory_181482| |T@[Int]Bool|) (|contents#$Memory_181482| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_175275 0)) ((($Memory_175275 (|domain#$Memory_175275| |T@[Int]Bool|) (|contents#$Memory_175275| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_180409 0)) ((($Memory_180409 (|domain#$Memory_180409| |T@[Int]Bool|) (|contents#$Memory_180409| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_175116 0)) ((($Memory_175116 (|domain#$Memory_175116| |T@[Int]Bool|) (|contents#$Memory_175116| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_174707 0)) ((($Memory_174707 (|domain#$Memory_174707| |T@[Int]Bool|) (|contents#$Memory_174707| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_175023 0)) ((($Memory_175023 (|domain#$Memory_175023| |T@[Int]Bool|) (|contents#$Memory_175023| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_133870 0)) (((Vec_133870 (|v#Vec_133870| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_133870| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_133870) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_133831 0)) (((Vec_133831 (|v#Vec_133831| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_133831| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_133831) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_23605 0)) (((Vec_23605 (|v#Vec_23605| |T@[Int]Int|) (|l#Vec_23605| Int) ) ) ))
(declare-sort |T@[Int]Vec_23605| 0)
(declare-datatypes ((T@Vec_134061 0)) (((Vec_134061 (|v#Vec_134061| |T@[Int]Vec_23605|) (|l#Vec_134061| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_134061) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_176005 0)) ((($Memory_176005 (|domain#$Memory_176005| |T@[Int]Bool|) (|contents#$Memory_176005| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_134061) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_175346 0)) ((($Memory_175346 (|domain#$Memory_175346| |T@[Int]Bool|) (|contents#$Memory_175346| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_23605) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_23605) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_176629 0)) ((($Memory_176629 (|domain#$Memory_176629| |T@[Int]Bool|) (|contents#$Memory_176629| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_23605) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_180276 0)) ((($Memory_180276 (|domain#$Memory_180276| |T@[Int]Bool|) (|contents#$Memory_180276| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_23605) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_245892 0)) ((($Memory_245892 (|domain#$Memory_245892| |T@[Int]Bool|) (|contents#$Memory_245892| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_23605) (|$base_url#$1_DualAttestation_Credential| T@Vec_23605) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_23605) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_245605 0)) ((($Memory_245605 (|domain#$Memory_245605| |T@[Int]Bool|) (|contents#$Memory_245605| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_134504 0)) (((Vec_134504 (|v#Vec_134504| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_134504| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_134504) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_246077 0)) ((($Memory_246077 (|domain#$Memory_246077| |T@[Int]Bool|) (|contents#$Memory_246077| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_134349 0)) (((Vec_134349 (|v#Vec_134349| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_134349| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_134349) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_193411 0)) ((($Memory_193411 (|domain#$Memory_193411| |T@[Int]Bool|) (|contents#$Memory_193411| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_134310 0)) (((Vec_134310 (|v#Vec_134310| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_134310| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_134310) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_193294 0)) ((($Memory_193294 (|domain#$Memory_193294| |T@[Int]Bool|) (|contents#$Memory_193294| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_134271 0)) (((Vec_134271 (|v#Vec_134271| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_134271| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_134271) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_193177 0)) ((($Memory_193177 (|domain#$Memory_193177| |T@[Int]Bool|) (|contents#$Memory_193177| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_186082 0)) ((($Memory_186082 (|domain#$Memory_186082| |T@[Int]Bool|) (|contents#$Memory_186082| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_175669 0)) ((($Memory_175669 (|domain#$Memory_175669| |T@[Int]Bool|) (|contents#$Memory_175669| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_175430 0)) ((($Memory_175430 (|domain#$Memory_175430| |T@[Int]Bool|) (|contents#$Memory_175430| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_23605) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_23605) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_133792 0)) (((Vec_133792 (|v#Vec_133792| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_133792| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_133792) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_134004 0)) (((Vec_134004 (|v#Vec_134004| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_134004| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_134004) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_175202 0)) ((($Memory_175202 (|domain#$Memory_175202| |T@[Int]Bool|) (|contents#$Memory_175202| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_179530 0)) ((($Memory_179530 (|domain#$Memory_179530| |T@[Int]Bool|) (|contents#$Memory_179530| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_178887 0)) ((($Memory_178887 (|domain#$Memory_178887| |T@[Int]Bool|) (|contents#$Memory_178887| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_174836 0)) ((($Memory_174836 (|domain#$Memory_174836| |T@[Int]Bool|) (|contents#$Memory_174836| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_174154 0)) ((($Memory_174154 (|domain#$Memory_174154| |T@[Int]Bool|) (|contents#$Memory_174154| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_23605) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_23605) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_23605) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_23605) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_23605) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_23605) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_23605) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_23605) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_23605) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_23605) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_133706 0)) (((Multiset_133706 (|v#Multiset_133706| |T@[$EventRep]Int|) (|l#Multiset_133706| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_133706| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_133706|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_310562 0)) ((($Mutation_310562 (|l#$Mutation_310562| T@$Location) (|p#$Mutation_310562| T@Vec_23605) (|v#$Mutation_310562| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_310517 0)) ((($Mutation_310517 (|l#$Mutation_310517| T@$Location) (|p#$Mutation_310517| T@Vec_23605) (|v#$Mutation_310517| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_290025 0)) ((($Mutation_290025 (|l#$Mutation_290025| T@$Location) (|p#$Mutation_290025| T@Vec_23605) (|v#$Mutation_290025| |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_286844 0)) ((($Mutation_286844 (|l#$Mutation_286844| T@$Location) (|p#$Mutation_286844| T@Vec_23605) (|v#$Mutation_286844| |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_283759 0)) ((($Mutation_283759 (|l#$Mutation_283759| T@$Location) (|p#$Mutation_283759| T@Vec_23605) (|v#$Mutation_283759| |T@$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_270500 0)) ((($Mutation_270500 (|l#$Mutation_270500| T@$Location) (|p#$Mutation_270500| T@Vec_23605) (|v#$Mutation_270500| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_74265 0)) ((($Mutation_74265 (|l#$Mutation_74265| T@$Location) (|p#$Mutation_74265| T@Vec_23605) (|v#$Mutation_74265| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_203382 0)) ((($Mutation_203382 (|l#$Mutation_203382| T@$Location) (|p#$Mutation_203382| T@Vec_23605) (|v#$Mutation_203382| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_203332 0)) ((($Mutation_203332 (|l#$Mutation_203332| T@$Location) (|p#$Mutation_203332| T@Vec_23605) (|v#$Mutation_203332| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_203284 0)) ((($Mutation_203284 (|l#$Mutation_203284| T@$Location) (|p#$Mutation_203284| T@Vec_23605) (|v#$Mutation_203284| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_198789 0)) ((($Mutation_198789 (|l#$Mutation_198789| T@$Location) (|p#$Mutation_198789| T@Vec_23605) (|v#$Mutation_198789| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_198739 0)) ((($Mutation_198739 (|l#$Mutation_198739| T@$Location) (|p#$Mutation_198739| T@Vec_23605) (|v#$Mutation_198739| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_198691 0)) ((($Mutation_198691 (|l#$Mutation_198691| T@$Location) (|p#$Mutation_198691| T@Vec_23605) (|v#$Mutation_198691| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_194282 0)) ((($Mutation_194282 (|l#$Mutation_194282| T@$Location) (|p#$Mutation_194282| T@Vec_23605) (|v#$Mutation_194282| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_194232 0)) ((($Mutation_194232 (|l#$Mutation_194232| T@$Location) (|p#$Mutation_194232| T@Vec_23605) (|v#$Mutation_194232| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_194184 0)) ((($Mutation_194184 (|l#$Mutation_194184| T@$Location) (|p#$Mutation_194184| T@Vec_23605) (|v#$Mutation_194184| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_184654 0)) ((($Mutation_184654 (|l#$Mutation_184654| T@$Location) (|p#$Mutation_184654| T@Vec_23605) (|v#$Mutation_184654| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_174649 0)) ((($Mutation_174649 (|l#$Mutation_174649| T@$Location) (|p#$Mutation_174649| T@Vec_23605) (|v#$Mutation_174649| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_167422 0)) ((($Mutation_167422 (|l#$Mutation_167422| T@$Location) (|p#$Mutation_167422| T@Vec_23605) (|v#$Mutation_167422| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_15070 0)) ((($Mutation_15070 (|l#$Mutation_15070| T@$Location) (|p#$Mutation_15070| T@Vec_23605) (|v#$Mutation_15070| Int) ) ) ))
(declare-datatypes ((T@$Mutation_161679 0)) ((($Mutation_161679 (|l#$Mutation_161679| T@$Location) (|p#$Mutation_161679| T@Vec_23605) (|v#$Mutation_161679| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$Mutation_160591 0)) ((($Mutation_160591 (|l#$Mutation_160591| T@$Location) (|p#$Mutation_160591| T@Vec_23605) (|v#$Mutation_160591| T@Vec_134061) ) ) ))
(declare-datatypes ((T@$Mutation_158882 0)) ((($Mutation_158882 (|l#$Mutation_158882| T@$Location) (|p#$Mutation_158882| T@Vec_23605) (|v#$Mutation_158882| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_157895 0)) ((($Mutation_157895 (|l#$Mutation_157895| T@$Location) (|p#$Mutation_157895| T@Vec_23605) (|v#$Mutation_157895| T@Vec_133792) ) ) ))
(declare-datatypes ((T@$Mutation_156240 0)) ((($Mutation_156240 (|l#$Mutation_156240| T@$Location) (|p#$Mutation_156240| T@Vec_23605) (|v#$Mutation_156240| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_155253 0)) ((($Mutation_155253 (|l#$Mutation_155253| T@$Location) (|p#$Mutation_155253| T@Vec_23605) (|v#$Mutation_155253| T@Vec_134504) ) ) ))
(declare-datatypes ((T@$Mutation_153575 0)) ((($Mutation_153575 (|l#$Mutation_153575| T@$Location) (|p#$Mutation_153575| T@Vec_23605) (|v#$Mutation_153575| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_152588 0)) ((($Mutation_152588 (|l#$Mutation_152588| T@$Location) (|p#$Mutation_152588| T@Vec_23605) (|v#$Mutation_152588| T@Vec_134271) ) ) ))
(declare-datatypes ((T@$Mutation_150879 0)) ((($Mutation_150879 (|l#$Mutation_150879| T@$Location) (|p#$Mutation_150879| T@Vec_23605) (|v#$Mutation_150879| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_149892 0)) ((($Mutation_149892 (|l#$Mutation_149892| T@$Location) (|p#$Mutation_149892| T@Vec_23605) (|v#$Mutation_149892| T@Vec_134310) ) ) ))
(declare-datatypes ((T@$Mutation_148183 0)) ((($Mutation_148183 (|l#$Mutation_148183| T@$Location) (|p#$Mutation_148183| T@Vec_23605) (|v#$Mutation_148183| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_147196 0)) ((($Mutation_147196 (|l#$Mutation_147196| T@$Location) (|p#$Mutation_147196| T@Vec_23605) (|v#$Mutation_147196| T@Vec_134349) ) ) ))
(declare-datatypes ((T@$Mutation_145487 0)) ((($Mutation_145487 (|l#$Mutation_145487| T@$Location) (|p#$Mutation_145487| T@Vec_23605) (|v#$Mutation_145487| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_144500 0)) ((($Mutation_144500 (|l#$Mutation_144500| T@$Location) (|p#$Mutation_144500| T@Vec_23605) (|v#$Mutation_144500| T@Vec_134004) ) ) ))
(declare-datatypes ((T@$Mutation_142700 0)) ((($Mutation_142700 (|l#$Mutation_142700| T@$Location) (|p#$Mutation_142700| T@Vec_23605) (|v#$Mutation_142700| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_141713 0)) ((($Mutation_141713 (|l#$Mutation_141713| T@$Location) (|p#$Mutation_141713| T@Vec_23605) (|v#$Mutation_141713| T@Vec_133870) ) ) ))
(declare-datatypes ((T@$Mutation_140048 0)) ((($Mutation_140048 (|l#$Mutation_140048| T@$Location) (|p#$Mutation_140048| T@Vec_23605) (|v#$Mutation_140048| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_139061 0)) ((($Mutation_139061 (|l#$Mutation_139061| T@$Location) (|p#$Mutation_139061| T@Vec_23605) (|v#$Mutation_139061| T@Vec_133831) ) ) ))
(declare-datatypes ((T@$Mutation_137348 0)) ((($Mutation_137348 (|l#$Mutation_137348| T@$Location) (|p#$Mutation_137348| T@Vec_23605) (|v#$Mutation_137348| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_136361 0)) ((($Mutation_136361 (|l#$Mutation_136361| T@$Location) (|p#$Mutation_136361| T@Vec_23605) (|v#$Mutation_136361| T@Vec_135716) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_135716 T@Vec_135716) Bool)
(declare-fun InRangeVec_119454 (T@Vec_135716 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_135716) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_135716 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_133831 T@Vec_133831) Bool)
(declare-fun InRangeVec_119655 (T@Vec_133831 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_133831) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_133831 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_133870 T@Vec_133870) Bool)
(declare-fun InRangeVec_119856 (T@Vec_133870 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_133870) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_133870 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_134004 T@Vec_134004) Bool)
(declare-fun InRangeVec_120057 (T@Vec_134004 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_23605 T@Vec_23605) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_134004) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_134004 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_134349 T@Vec_134349) Bool)
(declare-fun InRangeVec_120258 (T@Vec_134349 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_134349) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_134349 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_134310 T@Vec_134310) Bool)
(declare-fun InRangeVec_120459 (T@Vec_134310 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_134310) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_134310 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_134271 T@Vec_134271) Bool)
(declare-fun InRangeVec_120660 (T@Vec_134271 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_134271) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_134271 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_134504 T@Vec_134504) Bool)
(declare-fun InRangeVec_120861 (T@Vec_134504 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_134504) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_134504 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_133792 T@Vec_133792) Bool)
(declare-fun InRangeVec_121062 (T@Vec_133792 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_133792) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_133792 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_134061 T@Vec_134061) Bool)
(declare-fun InRangeVec_160014 (T@Vec_134061 Int) Bool)
(declare-fun |Select__T@[Int]Vec_23605_| (|T@[Int]Vec_23605| Int) T@Vec_23605)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_134061) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_23605) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_134061 T@Vec_23605) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_23605 T@Vec_23605) Bool)
(declare-fun InRangeVec_14446 (T@Vec_23605 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_23605) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_23605 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_23605 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_23605) T@Vec_23605)
(declare-fun $1_Hash_sha3 (T@Vec_23605) T@Vec_23605)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_23605) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_23605 T@Vec_23605 T@Vec_23605) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_133706_| (|T@[$1_Event_EventHandle]Multiset_133706| T@$1_Event_EventHandle) T@Multiset_133706)
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
(declare-fun IndexOfVec_23605 (T@Vec_23605 Int) Int)
(declare-fun IndexOfVec_133792 (T@Vec_133792 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_133831 (T@Vec_133831 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_133870 (T@Vec_133870 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_134004 (T@Vec_134004 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_134061 (T@Vec_134061 T@Vec_23605) Int)
(declare-fun IndexOfVec_134271 (T@Vec_134271 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_134310 (T@Vec_134310 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_134349 (T@Vec_134349 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_134504 (T@Vec_134504 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_135716 (T@Vec_135716 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_133706| |T@[$1_Event_EventHandle]Multiset_133706|) |T@[$1_Event_EventHandle]Multiset_133706|)
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
(declare-fun |lambda#30| (Int Int Int |T@[Int]Vec_23605| |T@[Int]Vec_23605| Int T@Vec_23605) |T@[Int]Vec_23605|)
(declare-fun |lambda#31| (Int Int |T@[Int]Vec_23605| Int Int T@Vec_23605) |T@[Int]Vec_23605|)
(declare-fun |lambda#32| (Int Int Int |T@[Int]Vec_23605| |T@[Int]Vec_23605| Int T@Vec_23605) |T@[Int]Vec_23605|)
(declare-fun |lambda#33| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#34| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#35| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XDXbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XDXbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XDXbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XDXbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XDXbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XDXbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XDXbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XDXbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_135716) (v2 T@Vec_135716) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_135716| v1) (|l#Vec_135716| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_119454 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_135716| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_135716| v2) i@@0)))
 :qid |XDXbpl.615:13|
 :skolemid |17|
))))
 :qid |XDXbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_135716) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_135716| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_119454 v@@4 i@@1) true)
 :qid |XDXbpl.621:13|
 :skolemid |19|
))))
 :qid |XDXbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_135716) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_119454 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@5) i@@3) e))
 :qid |XDXbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_119454 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@5) j) e)))
 :qid |XDXbpl.634:17|
 :skolemid |22|
)))))
 :qid |XDXbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_133831) (v2@@0 T@Vec_133831) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_133831| v1@@0) (|l#Vec_133831| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_119655 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v2@@0) i@@4)))
 :qid |XDXbpl.796:13|
 :skolemid |24|
))))
 :qid |XDXbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_133831) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_133831| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_119655 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@6) i@@5)))
 :qid |XDXbpl.802:13|
 :skolemid |26|
))))
 :qid |XDXbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_133831) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_119655 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@7) i@@7) e@@0))
 :qid |XDXbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_119655 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@7) j@@0) e@@0)))
 :qid |XDXbpl.815:17|
 :skolemid |29|
)))))
 :qid |XDXbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_133870) (v2@@1 T@Vec_133870) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_133870| v1@@1) (|l#Vec_133870| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_119856 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v2@@1) i@@8)))
 :qid |XDXbpl.977:13|
 :skolemid |31|
))))
 :qid |XDXbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_133870) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_133870| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_119856 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@8) i@@9)))
 :qid |XDXbpl.983:13|
 :skolemid |33|
))))
 :qid |XDXbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_133870) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_119856 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@9) i@@11) e@@1))
 :qid |XDXbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_119856 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@9) j@@1) e@@1)))
 :qid |XDXbpl.996:17|
 :skolemid |36|
)))))
 :qid |XDXbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_134004) (v2@@2 T@Vec_134004) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_134004| v1@@2) (|l#Vec_134004| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_120057 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12)))))
 :qid |XDXbpl.1158:13|
 :skolemid |38|
))))
 :qid |XDXbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_134004) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_134004| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_120057 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@10) i@@13)))
 :qid |XDXbpl.1164:13|
 :skolemid |40|
))))
 :qid |XDXbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_134004) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_120057 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |XDXbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_120057 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |XDXbpl.1177:17|
 :skolemid |43|
)))))
 :qid |XDXbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_134349) (v2@@3 T@Vec_134349) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_134349| v1@@3) (|l#Vec_134349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_120258 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v2@@3) i@@16)))))
 :qid |XDXbpl.1339:13|
 :skolemid |45|
))))
 :qid |XDXbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_134349) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_134349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_120258 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@12) i@@17)))
 :qid |XDXbpl.1345:13|
 :skolemid |47|
))))
 :qid |XDXbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_134349) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_120258 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |XDXbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_120258 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |XDXbpl.1358:17|
 :skolemid |50|
)))))
 :qid |XDXbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_134310) (v2@@4 T@Vec_134310) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_134310| v1@@4) (|l#Vec_134310| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_120459 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v2@@4) i@@20)))))
 :qid |XDXbpl.1520:13|
 :skolemid |52|
))))
 :qid |XDXbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_134310) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_134310| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_120459 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@14) i@@21)))
 :qid |XDXbpl.1526:13|
 :skolemid |54|
))))
 :qid |XDXbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_134310) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_120459 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |XDXbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_120459 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |XDXbpl.1539:17|
 :skolemid |57|
)))))
 :qid |XDXbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_134271) (v2@@5 T@Vec_134271) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_134271| v1@@5) (|l#Vec_134271| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_120660 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v2@@5) i@@24)))))
 :qid |XDXbpl.1701:13|
 :skolemid |59|
))))
 :qid |XDXbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_134271) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_134271| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_120660 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@16) i@@25)))
 :qid |XDXbpl.1707:13|
 :skolemid |61|
))))
 :qid |XDXbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_134271) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_120660 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |XDXbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_120660 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |XDXbpl.1720:17|
 :skolemid |64|
)))))
 :qid |XDXbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_134504) (v2@@6 T@Vec_134504) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_134504| v1@@6) (|l#Vec_134504| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_120861 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v2@@6) i@@28))))
 :qid |XDXbpl.1882:13|
 :skolemid |66|
))))
 :qid |XDXbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_134504) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_134504| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_120861 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@18) i@@29)))
 :qid |XDXbpl.1888:13|
 :skolemid |68|
))))
 :qid |XDXbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_134504) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_120861 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |XDXbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_120861 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |XDXbpl.1901:17|
 :skolemid |71|
)))))
 :qid |XDXbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_133792) (v2@@7 T@Vec_133792) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_133792| v1@@7) (|l#Vec_133792| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_121062 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v2@@7) i@@32)))))
 :qid |XDXbpl.2063:13|
 :skolemid |73|
))))
 :qid |XDXbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_133792) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_133792| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_121062 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@20) i@@33)))
 :qid |XDXbpl.2069:13|
 :skolemid |75|
))))
 :qid |XDXbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_133792) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_121062 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |XDXbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_121062 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |XDXbpl.2082:17|
 :skolemid |78|
)))))
 :qid |XDXbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_134061) (v2@@8 T@Vec_134061) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@8 v2@@8)  (and (= (|l#Vec_134061| v1@@8) (|l#Vec_134061| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_160014 v1@@8 i@@36) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v1@@8) i@@36) (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v2@@8) i@@36)))
 :qid |XDXbpl.2244:13|
 :skolemid |80|
))))
 :qid |XDXbpl.2242:33|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_134061) ) (! (= (|$IsValid'vec'vec'u8'''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_134061| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_160014 v@@22 i@@37) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@22) i@@37)))
 :qid |XDXbpl.2250:13|
 :skolemid |82|
))))
 :qid |XDXbpl.2248:33|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_134061) (e@@8 T@Vec_23605) ) (! (let ((i@@38 (|$IndexOfVec'vec'u8''| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_160014 v@@23 i@@39)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@23) i@@39) e@@8))
 :qid |XDXbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_160014 v@@23 i@@38)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@23) j@@8) e@@8)))
 :qid |XDXbpl.2263:17|
 :skolemid |85|
)))))
 :qid |XDXbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_23605) (v2@@9 T@Vec_23605) ) (! (= (|$IsEqual'vec'address''| v1@@9 v2@@9)  (and (= (|l#Vec_23605| v1@@9) (|l#Vec_23605| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_14446 v1@@9 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v1@@9) i@@40) (|Select__T@[Int]Int_| (|v#Vec_23605| v2@@9) i@@40)))
 :qid |XDXbpl.2425:13|
 :skolemid |87|
))))
 :qid |XDXbpl.2423:33|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'address''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_23605) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_23605| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_14446 v@@24 i@@41) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_23605| v@@24) i@@41)))
 :qid |XDXbpl.2431:13|
 :skolemid |89|
))))
 :qid |XDXbpl.2429:33|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_23605) (e@@9 Int) ) (! (let ((i@@42 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_14446 v@@25 i@@43)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) i@@43) e@@9))
 :qid |XDXbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_14446 v@@25 i@@42)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) j@@9) e@@9)))
 :qid |XDXbpl.2444:17|
 :skolemid |92|
)))))
 :qid |XDXbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_23605) (v2@@10 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10)  (and (= (|l#Vec_23605| v1@@10) (|l#Vec_23605| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_14446 v1@@10 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v1@@10) i@@44) (|Select__T@[Int]Int_| (|v#Vec_23605| v2@@10) i@@44)))
 :qid |XDXbpl.2606:13|
 :skolemid |94|
))))
 :qid |XDXbpl.2604:28|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'u8''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_23605) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_23605| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_14446 v@@26 i@@45) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_23605| v@@26) i@@45)))
 :qid |XDXbpl.2612:13|
 :skolemid |96|
))))
 :qid |XDXbpl.2610:28|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_23605) (e@@10 Int) ) (! (let ((i@@46 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_14446 v@@27 i@@47)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) i@@47) e@@10))
 :qid |XDXbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_14446 v@@27 i@@46)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) j@@10) e@@10)))
 :qid |XDXbpl.2625:17|
 :skolemid |99|
)))))
 :qid |XDXbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_23605) (v2@@11 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@11 v2@@11) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11)))
 :qid |XDXbpl.2798:15|
 :skolemid |101|
 :pattern ( ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11))
)))
(assert (forall ((v1@@12 T@Vec_23605) (v2@@12 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12)))
 :qid |XDXbpl.2814:15|
 :skolemid |102|
 :pattern ( ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12))
)))
(assert (forall ((k1 T@Vec_23605) (k2 T@Vec_23605) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XDXbpl.2885:15|
 :skolemid |103|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_23605) (s2 T@Vec_23605) (k1@@0 T@Vec_23605) (k2@@0 T@Vec_23605) (m1 T@Vec_23605) (m2 T@Vec_23605) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XDXbpl.2888:15|
 :skolemid |104|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_133706| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| stream) v@@28) 0)
 :qid |XDXbpl.159:13|
 :skolemid |4|
))))
 :qid |XDXbpl.2949:13|
 :skolemid |105|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XDXbpl.2990:80|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@13 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@13 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13)))
 :qid |XDXbpl.2996:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XDXbpl.3046:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14)))
 :qid |XDXbpl.3052:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XDXbpl.3102:80|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@15 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@15 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@15)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15)))
 :qid |XDXbpl.3108:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XDXbpl.3158:79|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_AdminTransactionEvent) (v2@@16 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16)))
 :qid |XDXbpl.3164:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XDXbpl.3214:76|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_CreateAccountEvent) (v2@@17 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17)))
 :qid |XDXbpl.3220:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XDXbpl.3270:78|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@18 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18)))
 :qid |XDXbpl.3276:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XDXbpl.3326:74|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_SentPaymentEvent) (v2@@19 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@19))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19)))
 :qid |XDXbpl.3332:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XDXbpl.3382:69|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@20 T@$1_DiemBlock_NewBlockEvent) (v2@@20 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@20) (|$round#$1_DiemBlock_NewBlockEvent| v2@@20)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@20) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@20))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@20) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@20) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20)))
 :qid |XDXbpl.3388:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XDXbpl.3438:70|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@21 T@$1_DiemConfig_NewEpochEvent) (v2@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21)))
 :qid |XDXbpl.3444:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XDXbpl.3494:60|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@22 T@$1_Diem_BurnEvent) (v2@@22 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@22) (|$amount#$1_Diem_BurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@22) (|$currency_code#$1_Diem_BurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@22) (|$preburn_address#$1_Diem_BurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22)))
 :qid |XDXbpl.3500:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XDXbpl.3550:66|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@23 T@$1_Diem_CancelBurnEvent) (v2@@23 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@23) (|$amount#$1_Diem_CancelBurnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@23) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@23) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23)))
 :qid |XDXbpl.3556:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XDXbpl.3606:60|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@24 T@$1_Diem_MintEvent) (v2@@24 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@24) (|$amount#$1_Diem_MintEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@24) (|$currency_code#$1_Diem_MintEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24)))
 :qid |XDXbpl.3612:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XDXbpl.3662:63|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@25 T@$1_Diem_PreburnEvent) (v2@@25 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@25) (|$amount#$1_Diem_PreburnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@25) (|$currency_code#$1_Diem_PreburnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@25) (|$preburn_address#$1_Diem_PreburnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25)))
 :qid |XDXbpl.3668:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XDXbpl.3718:79|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26)))
 :qid |XDXbpl.3724:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XDXbpl.3774:82|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@27 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27)))
 :qid |XDXbpl.3780:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XDXbpl.3830:88|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28)))
 :qid |XDXbpl.3836:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XDXbpl.3886:72|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@29 T@$1_VASPDomain_VASPDomainEvent) (v2@@29 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@29)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@29)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@29))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29)))
 :qid |XDXbpl.3892:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XDXbpl.3971:61|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |XDXbpl.4786:36|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |XDXbpl.4805:71|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |XDXbpl.4868:46|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |XDXbpl.4880:64|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |XDXbpl.4892:75|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |XDXbpl.4904:72|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |XDXbpl.4932:55|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |XDXbpl.4955:46|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |XDXbpl.4974:49|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |XDXbpl.5059:71|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |XDXbpl.5072:91|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |XDXbpl.5085:113|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |XDXbpl.5098:89|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |XDXbpl.5111:75|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |XDXbpl.5124:73|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |XDXbpl.5144:48|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |XDXbpl.5161:57|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |XDXbpl.5175:83|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |XDXbpl.5189:103|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |XDXbpl.5203:125|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |XDXbpl.5217:101|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |XDXbpl.5231:87|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |XDXbpl.5245:85|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |XDXbpl.5259:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |XDXbpl.5280:45|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |XDXbpl.5294:51|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |XDXbpl.5317:48|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |XDXbpl.5616:49|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |XDXbpl.5661:65|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |XDXbpl.6247:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |XDXbpl.6260:45|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |XDXbpl.6273:37|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |XDXbpl.6286:55|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |XDXbpl.6300:55|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |XDXbpl.6314:47|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |XDXbpl.6334:38|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |XDXbpl.6356:44|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |XDXbpl.6408:53|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |XDXbpl.6481:53|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |XDXbpl.6554:45|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |XDXbpl.6591:55|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |XDXbpl.6605:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |XDXbpl.6619:47|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |XDXbpl.6636:38|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |XDXbpl.6650:48|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |XDXbpl.6664:48|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |XDXbpl.6678:40|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |XDXbpl.6698:41|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@48)))
 :qid |XDXbpl.6714:53|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@49)))
 :qid |XDXbpl.6727:53|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@50)))
 :qid |XDXbpl.6740:45|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51))))
 :qid |XDXbpl.6756:60|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52))))
 :qid |XDXbpl.6773:60|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@53))))
 :qid |XDXbpl.6790:52|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53))
)))
(assert (forall ((s@@54 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54))))
 :qid |XDXbpl.6807:57|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55) true)
 :qid |XDXbpl.24010:68|
 :skolemid |845|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))))
 :qid |XDXbpl.24032:66|
 :skolemid |846|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))))
 :qid |XDXbpl.24058:66|
 :skolemid |847|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@58))))
 :qid |XDXbpl.24084:58|
 :skolemid |848|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |XDXbpl.24113:56|
 :skolemid |849|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |XDXbpl.24143:56|
 :skolemid |850|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@61))))
 :qid |XDXbpl.24173:48|
 :skolemid |851|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |XDXbpl.26234:31|
 :skolemid |957|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |XDXbpl.26584:31|
 :skolemid |958|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |XDXbpl.26603:35|
 :skolemid |959|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |XDXbpl.28559:45|
 :skolemid |1022|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |XDXbpl.28577:50|
 :skolemid |1023|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |XDXbpl.28593:52|
 :skolemid |1024|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |XDXbpl.28606:46|
 :skolemid |1025|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |XDXbpl.28629:38|
 :skolemid |1026|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |XDXbpl.28643:39|
 :skolemid |1027|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |XDXbpl.28670:65|
 :skolemid |1028|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@72))))
 :qid |XDXbpl.29038:60|
 :skolemid |1029|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73))))
 :qid |XDXbpl.29055:66|
 :skolemid |1030|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@74)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@74))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@74))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@74))))
 :qid |XDXbpl.29084:50|
 :skolemid |1031|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@75) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@75)))
 :qid |XDXbpl.29107:45|
 :skolemid |1032|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@76)) true))
 :qid |XDXbpl.29414:87|
 :skolemid |1033|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@77)))
 :qid |XDXbpl.29615:47|
 :skolemid |1034|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@78)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@78))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@78))))
 :qid |XDXbpl.29634:58|
 :skolemid |1035|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@79) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@79)))
 :qid |XDXbpl.29650:39|
 :skolemid |1036|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@80))))
 :qid |XDXbpl.29672:58|
 :skolemid |1037|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81))))
 :qid |XDXbpl.29689:58|
 :skolemid |1038|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82) true)
 :qid |XDXbpl.29704:51|
 :skolemid |1039|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82))
)))
(assert (forall ((s@@83 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83))))
 :qid |XDXbpl.29721:60|
 :skolemid |1040|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@84)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@84))))
 :qid |XDXbpl.30007:47|
 :skolemid |1041|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@85))))
 :qid |XDXbpl.30033:63|
 :skolemid |1042|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@86)))
 :qid |XDXbpl.30048:57|
 :skolemid |1043|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@87)))
 :qid |XDXbpl.30061:55|
 :skolemid |1044|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@88)))
 :qid |XDXbpl.30075:55|
 :skolemid |1045|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@89)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@89))))
 :qid |XDXbpl.30092:54|
 :skolemid |1046|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@90)))
 :qid |XDXbpl.30106:55|
 :skolemid |1047|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@91)))
 :qid |XDXbpl.30119:57|
 :skolemid |1048|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@92))))
 :qid |XDXbpl.30141:56|
 :skolemid |1049|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@93))))
 :qid |XDXbpl.30168:52|
 :skolemid |1050|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@94)))
 :qid |XDXbpl.30186:54|
 :skolemid |1051|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@95)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@95))))
 :qid |XDXbpl.31028:47|
 :skolemid |1052|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@96)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@96))))
 :qid |XDXbpl.31052:47|
 :skolemid |1053|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@97)))
 :qid |XDXbpl.31286:63|
 :skolemid |1054|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@98)))
 :qid |XDXbpl.31621:49|
 :skolemid |1055|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@99)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@99))))
 :qid |XDXbpl.31663:49|
 :skolemid |1056|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@100)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@100))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@100))))
 :qid |XDXbpl.31692:48|
 :skolemid |1057|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@101)))
 :qid |XDXbpl.31977:47|
 :skolemid |1058|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101))
)))
(assert (forall ((v@@29 T@Vec_135716) (i@@48 Int) ) (! (= (InRangeVec_119454 v@@29 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_135716| v@@29))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_119454 v@@29 i@@48))
)))
(assert (forall ((v@@30 T@Vec_133831) (i@@49 Int) ) (! (= (InRangeVec_119655 v@@30 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_133831| v@@30))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_119655 v@@30 i@@49))
)))
(assert (forall ((v@@31 T@Vec_133870) (i@@50 Int) ) (! (= (InRangeVec_119856 v@@31 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_133870| v@@31))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_119856 v@@31 i@@50))
)))
(assert (forall ((v@@32 T@Vec_134004) (i@@51 Int) ) (! (= (InRangeVec_120057 v@@32 i@@51)  (and (>= i@@51 0) (< i@@51 (|l#Vec_134004| v@@32))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_120057 v@@32 i@@51))
)))
(assert (forall ((v@@33 T@Vec_134349) (i@@52 Int) ) (! (= (InRangeVec_120258 v@@33 i@@52)  (and (>= i@@52 0) (< i@@52 (|l#Vec_134349| v@@33))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_120258 v@@33 i@@52))
)))
(assert (forall ((v@@34 T@Vec_134310) (i@@53 Int) ) (! (= (InRangeVec_120459 v@@34 i@@53)  (and (>= i@@53 0) (< i@@53 (|l#Vec_134310| v@@34))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_120459 v@@34 i@@53))
)))
(assert (forall ((v@@35 T@Vec_134271) (i@@54 Int) ) (! (= (InRangeVec_120660 v@@35 i@@54)  (and (>= i@@54 0) (< i@@54 (|l#Vec_134271| v@@35))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_120660 v@@35 i@@54))
)))
(assert (forall ((v@@36 T@Vec_134504) (i@@55 Int) ) (! (= (InRangeVec_120861 v@@36 i@@55)  (and (>= i@@55 0) (< i@@55 (|l#Vec_134504| v@@36))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_120861 v@@36 i@@55))
)))
(assert (forall ((v@@37 T@Vec_133792) (i@@56 Int) ) (! (= (InRangeVec_121062 v@@37 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_133792| v@@37))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_121062 v@@37 i@@56))
)))
(assert (forall ((v@@38 T@Vec_134061) (i@@57 Int) ) (! (= (InRangeVec_160014 v@@38 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_134061| v@@38))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160014 v@@38 i@@57))
)))
(assert (forall ((v@@39 T@Vec_23605) (i@@58 Int) ) (! (= (InRangeVec_14446 v@@39 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_23605| v@@39))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14446 v@@39 i@@58))
)))
(assert (forall ((v@@40 T@Vec_23605) (e@@11 Int) ) (! (let ((i@@59 (IndexOfVec_23605 v@@40 e@@11)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_14446 v@@40 i@@60) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) i@@60) e@@11))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_14446 v@@40 i@@59) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) i@@59) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@59)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) j@@11) e@@11)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_23605 v@@40 e@@11))
)))
(assert (forall ((v@@41 T@Vec_133792) (e@@12 T@$1_ValidatorConfig_Config) ) (! (let ((i@@61 (IndexOfVec_133792 v@@41 e@@12)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_121062 v@@41 i@@62) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@41) i@@62) e@@12))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_121062 v@@41 i@@61) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@41) i@@61) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@61)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@41) j@@12) e@@12)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_133792 v@@41 e@@12))
)))
(assert (forall ((v@@42 T@Vec_133831) (e@@13 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@63 (IndexOfVec_133831 v@@42 e@@13)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_119655 v@@42 i@@64) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@42) i@@64) e@@13))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_119655 v@@42 i@@63) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@42) i@@63) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@63)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@42) j@@13) e@@13)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_133831 v@@42 e@@13))
)))
(assert (forall ((v@@43 T@Vec_133870) (e@@14 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@65 (IndexOfVec_133870 v@@43 e@@14)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_119856 v@@43 i@@66) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@43) i@@66) e@@14))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_119856 v@@43 i@@65) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@43) i@@65) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@65)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@43) j@@14) e@@14)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_133870 v@@43 e@@14))
)))
(assert (forall ((v@@44 T@Vec_134004) (e@@15 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@67 (IndexOfVec_134004 v@@44 e@@15)))
(ite  (not (exists ((i@@68 Int) ) (!  (and (InRangeVec_120057 v@@44 i@@68) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@44) i@@68) e@@15))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@67 (- 0 1))  (and (and (InRangeVec_120057 v@@44 i@@67) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@44) i@@67) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@67)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@44) j@@15) e@@15)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134004 v@@44 e@@15))
)))
(assert (forall ((v@@45 T@Vec_134061) (e@@16 T@Vec_23605) ) (! (let ((i@@69 (IndexOfVec_134061 v@@45 e@@16)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_160014 v@@45 i@@70) (= (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@45) i@@70) e@@16))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_160014 v@@45 i@@69) (= (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@45) i@@69) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@69)) (not (= (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@45) j@@16) e@@16)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134061 v@@45 e@@16))
)))
(assert (forall ((v@@46 T@Vec_134271) (e@@17 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@71 (IndexOfVec_134271 v@@46 e@@17)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_120660 v@@46 i@@72) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@46) i@@72) e@@17))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_120660 v@@46 i@@71) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@46) i@@71) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@71)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@46) j@@17) e@@17)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134271 v@@46 e@@17))
)))
(assert (forall ((v@@47 T@Vec_134310) (e@@18 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@73 (IndexOfVec_134310 v@@47 e@@18)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_120459 v@@47 i@@74) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@47) i@@74) e@@18))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_120459 v@@47 i@@73) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@47) i@@73) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@73)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@47) j@@18) e@@18)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134310 v@@47 e@@18))
)))
(assert (forall ((v@@48 T@Vec_134349) (e@@19 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@75 (IndexOfVec_134349 v@@48 e@@19)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_120258 v@@48 i@@76) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@48) i@@76) e@@19))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_120258 v@@48 i@@75) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@48) i@@75) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@75)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@48) j@@19) e@@19)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134349 v@@48 e@@19))
)))
(assert (forall ((v@@49 T@Vec_134504) (e@@20 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@77 (IndexOfVec_134504 v@@49 e@@20)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_120861 v@@49 i@@78) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@49) i@@78) e@@20))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_120861 v@@49 i@@77) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@49) i@@77) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@77)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@49) j@@20) e@@20)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134504 v@@49 e@@20))
)))
(assert (forall ((v@@50 T@Vec_135716) (e@@21 |T@#0|) ) (! (let ((i@@79 (IndexOfVec_135716 v@@50 e@@21)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_119454 v@@50 i@@80) (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@50) i@@80) e@@21))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_119454 v@@50 i@@79) (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@50) i@@79) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@79)) (not (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@50) j@@21) e@@21)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_135716 v@@50 e@@21))
)))
(assert (forall ((|l#0| Bool) (i@@81 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81) |l#0|)
 :qid |XDXbpl.275:54|
 :skolemid |1149|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_133706|) (|l#1| |T@[$1_Event_EventHandle]Multiset_133706|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| |l#1| handle@@0))))
(Multiset_133706 (|lambda#36| (|v#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| |l#0@@0| handle@@0)) (|v#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XDXbpl.2959:13|
 :skolemid |1150|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@82 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82) (ite  (and (>= i@@82 |l#0@@1|) (< i@@82 |l#1@@0|)) (ite (< i@@82 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@82) (|Select__T@[Int]#0_| |l#4| (- i@@82 |l#5|))) |l#6|))
 :qid |XDXbpl.73:19|
 :skolemid |1151|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@83 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83) (ite  (and (<= |l#0@@2| i@@83) (< i@@83 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@83) |l#4@@0|)) |l#5@@0|))
 :qid |XDXbpl.82:30|
 :skolemid |1152|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@22 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22) (ite  (and (>= j@@22 |l#0@@3|) (< j@@22 |l#1@@2|)) (ite (< j@@22 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@22) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@22 |l#5@@1|))) |l#6@@0|))
 :qid |XDXbpl.63:20|
 :skolemid |1153|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@84 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84) (ite  (and (>= i@@84 |l#0@@4|) (< i@@84 |l#1@@3|)) (ite (< i@@84 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@84) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@84 |l#5@@2|))) |l#6@@1|))
 :qid |XDXbpl.73:19|
 :skolemid |1154|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@85 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85) (ite  (and (<= |l#0@@5| i@@85) (< i@@85 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@85) |l#4@@3|)) |l#5@@3|))
 :qid |XDXbpl.82:30|
 :skolemid |1155|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23) (ite  (and (>= j@@23 |l#0@@6|) (< j@@23 |l#1@@5|)) (ite (< j@@23 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@23) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@23 |l#5@@4|))) |l#6@@2|))
 :qid |XDXbpl.63:20|
 :skolemid |1156|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@86 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86) (ite  (and (>= i@@86 |l#0@@7|) (< i@@86 |l#1@@6|)) (ite (< i@@86 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@86) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@86 |l#5@@5|))) |l#6@@3|))
 :qid |XDXbpl.73:19|
 :skolemid |1157|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@87 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87) (ite  (and (<= |l#0@@8| i@@87) (< i@@87 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@87) |l#4@@6|)) |l#5@@6|))
 :qid |XDXbpl.82:30|
 :skolemid |1158|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24) (ite  (and (>= j@@24 |l#0@@9|) (< j@@24 |l#1@@8|)) (ite (< j@@24 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@24) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@24 |l#5@@7|))) |l#6@@4|))
 :qid |XDXbpl.63:20|
 :skolemid |1159|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@88 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88) (ite  (and (>= i@@88 |l#0@@10|) (< i@@88 |l#1@@9|)) (ite (< i@@88 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@88) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@88 |l#5@@8|))) |l#6@@5|))
 :qid |XDXbpl.73:19|
 :skolemid |1160|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@89 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89) (ite  (and (<= |l#0@@11| i@@89) (< i@@89 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@89) |l#4@@9|)) |l#5@@9|))
 :qid |XDXbpl.82:30|
 :skolemid |1161|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@25 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25) (ite  (and (>= j@@25 |l#0@@12|) (< j@@25 |l#1@@11|)) (ite (< j@@25 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@25) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@25 |l#5@@10|))) |l#6@@6|))
 :qid |XDXbpl.63:20|
 :skolemid |1162|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@90 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90) (ite  (and (>= i@@90 |l#0@@13|) (< i@@90 |l#1@@12|)) (ite (< i@@90 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@90) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@90 |l#5@@11|))) |l#6@@7|))
 :qid |XDXbpl.73:19|
 :skolemid |1163|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@91 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91) (ite  (and (<= |l#0@@14| i@@91) (< i@@91 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@91) |l#4@@12|)) |l#5@@12|))
 :qid |XDXbpl.82:30|
 :skolemid |1164|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@26 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26) (ite  (and (>= j@@26 |l#0@@15|) (< j@@26 |l#1@@14|)) (ite (< j@@26 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@26) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@26 |l#5@@13|))) |l#6@@8|))
 :qid |XDXbpl.63:20|
 :skolemid |1165|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@92 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92) (ite  (and (>= i@@92 |l#0@@16|) (< i@@92 |l#1@@15|)) (ite (< i@@92 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@92) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@92 |l#5@@14|))) |l#6@@9|))
 :qid |XDXbpl.73:19|
 :skolemid |1166|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@93 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93) (ite  (and (<= |l#0@@17| i@@93) (< i@@93 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@93) |l#4@@15|)) |l#5@@15|))
 :qid |XDXbpl.82:30|
 :skolemid |1167|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27) (ite  (and (>= j@@27 |l#0@@18|) (< j@@27 |l#1@@17|)) (ite (< j@@27 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@27) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@27 |l#5@@16|))) |l#6@@10|))
 :qid |XDXbpl.63:20|
 :skolemid |1168|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@94 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94) (ite  (and (>= i@@94 |l#0@@19|) (< i@@94 |l#1@@18|)) (ite (< i@@94 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@94) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@94 |l#5@@17|))) |l#6@@11|))
 :qid |XDXbpl.73:19|
 :skolemid |1169|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@95 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95) (ite  (and (<= |l#0@@20| i@@95) (< i@@95 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@95) |l#4@@18|)) |l#5@@18|))
 :qid |XDXbpl.82:30|
 :skolemid |1170|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28) (ite  (and (>= j@@28 |l#0@@21|) (< j@@28 |l#1@@20|)) (ite (< j@@28 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@28) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@28 |l#5@@19|))) |l#6@@12|))
 :qid |XDXbpl.63:20|
 :skolemid |1171|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@96 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96) (ite  (and (>= i@@96 |l#0@@22|) (< i@@96 |l#1@@21|)) (ite (< i@@96 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@96) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@96 |l#5@@20|))) |l#6@@13|))
 :qid |XDXbpl.73:19|
 :skolemid |1172|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@97 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97) (ite  (and (<= |l#0@@23| i@@97) (< i@@97 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@97) |l#4@@21|)) |l#5@@21|))
 :qid |XDXbpl.82:30|
 :skolemid |1173|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29) (ite  (and (>= j@@29 |l#0@@24|) (< j@@29 |l#1@@23|)) (ite (< j@@29 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@29) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@29 |l#5@@22|))) |l#6@@14|))
 :qid |XDXbpl.63:20|
 :skolemid |1174|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98) (ite  (and (>= i@@98 |l#0@@25|) (< i@@98 |l#1@@24|)) (ite (< i@@98 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@98) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@98 |l#5@@23|))) |l#6@@15|))
 :qid |XDXbpl.73:19|
 :skolemid |1175|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99) (ite  (and (<= |l#0@@26| i@@99) (< i@@99 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@99) |l#4@@24|)) |l#5@@24|))
 :qid |XDXbpl.82:30|
 :skolemid |1176|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30) (ite  (and (>= j@@30 |l#0@@27|) (< j@@30 |l#1@@26|)) (ite (< j@@30 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@30) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@30 |l#5@@25|))) |l#6@@16|))
 :qid |XDXbpl.63:20|
 :skolemid |1177|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]Vec_23605|) (|l#4@@26| |T@[Int]Vec_23605|) (|l#5@@26| Int) (|l#6@@17| T@Vec_23605) (i@@100 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100) (ite  (and (>= i@@100 |l#0@@28|) (< i@@100 |l#1@@27|)) (ite (< i@@100 |l#2@@26|) (|Select__T@[Int]Vec_23605_| |l#3@@26| i@@100) (|Select__T@[Int]Vec_23605_| |l#4@@26| (- i@@100 |l#5@@26|))) |l#6@@17|))
 :qid |XDXbpl.73:19|
 :skolemid |1178|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]Vec_23605|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@Vec_23605) (i@@101 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101) (ite  (and (<= |l#0@@29| i@@101) (< i@@101 |l#1@@28|)) (|Select__T@[Int]Vec_23605_| |l#2@@27| (- (- |l#3@@27| i@@101) |l#4@@27|)) |l#5@@27|))
 :qid |XDXbpl.82:30|
 :skolemid |1179|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]Vec_23605|) (|l#4@@28| |T@[Int]Vec_23605|) (|l#5@@28| Int) (|l#6@@18| T@Vec_23605) (j@@31 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31) (ite  (and (>= j@@31 |l#0@@30|) (< j@@31 |l#1@@29|)) (ite (< j@@31 |l#2@@28|) (|Select__T@[Int]Vec_23605_| |l#3@@28| j@@31) (|Select__T@[Int]Vec_23605_| |l#4@@28| (+ j@@31 |l#5@@28|))) |l#6@@18|))
 :qid |XDXbpl.63:20|
 :skolemid |1180|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]Int|) (|l#4@@29| |T@[Int]Int|) (|l#5@@29| Int) (|l#6@@19| Int) (i@@102 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102) (ite  (and (>= i@@102 |l#0@@31|) (< i@@102 |l#1@@30|)) (ite (< i@@102 |l#2@@29|) (|Select__T@[Int]Int_| |l#3@@29| i@@102) (|Select__T@[Int]Int_| |l#4@@29| (- i@@102 |l#5@@29|))) |l#6@@19|))
 :qid |XDXbpl.73:19|
 :skolemid |1181|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]Int|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| Int) (i@@103 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103) (ite  (and (<= |l#0@@32| i@@103) (< i@@103 |l#1@@31|)) (|Select__T@[Int]Int_| |l#2@@30| (- (- |l#3@@30| i@@103) |l#4@@30|)) |l#5@@30|))
 :qid |XDXbpl.82:30|
 :skolemid |1182|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]Int|) (|l#4@@31| |T@[Int]Int|) (|l#5@@31| Int) (|l#6@@20| Int) (j@@32 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32) (ite  (and (>= j@@32 |l#0@@33|) (< j@@32 |l#1@@32|)) (ite (< j@@32 |l#2@@31|) (|Select__T@[Int]Int_| |l#3@@31| j@@32) (|Select__T@[Int]Int_| |l#4@@31| (+ j@@32 |l#5@@31|))) |l#6@@20|))
 :qid |XDXbpl.63:20|
 :skolemid |1183|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32))
)))
(assert (forall ((|l#0@@34| |T@[$EventRep]Int|) (|l#1@@33| |T@[$EventRep]Int|) (v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51) (- (|Select__T@[$EventRep]Int_| |l#0@@34| v@@51) (|Select__T@[$EventRep]Int_| |l#1@@33| v@@51)))
 :qid |XDXbpl.154:29|
 :skolemid |1184|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t36@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun _$t0 () Int)
(declare-fun $t37 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_186082)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_186082)
(declare-fun $t8 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_186646)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_187100)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_193411)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_192927)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t9 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t10 () T@$1_Event_EventHandle)
(declare-fun $t11 () T@$1_Diem_MintEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_133706_| (|T@[$1_Event_EventHandle]Multiset_133706| T@$1_Event_EventHandle T@Multiset_133706) |T@[$1_Event_EventHandle]Multiset_133706|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_133706|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_133706)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|Store__T@[$1_Event_EventHandle]Multiset_133706_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_133706|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_133706)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|Store__T@[$1_Event_EventHandle]Multiset_133706_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_133706_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@4 () Bool)
(declare-fun $t17@2 () T@$Mutation_194232)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_186082)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int |T@$1_Diem_CurrencyInfo'#0'|) |T@[Int]$1_Diem_CurrencyInfo'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_174836)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $es@0 () T@$EventStore)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_186082)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_Diem_MintEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_167422)
(declare-fun $t35@0 () T@$1_Diem_MintEvent)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t14 () T@Vec_23605)
(declare-fun $t32@0 () Bool)
(declare-fun $t31@0 () T@$Mutation_15070)
(declare-fun $t17@1 () T@$Mutation_194232)
(declare-fun $t31@1 () T@$Mutation_15070)
(declare-fun inline$$AddU128$0$dst@2 () Int)
(declare-fun inline$$AddU128$0$dst@0 () Int)
(declare-fun $t28@0 () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$AddU128$0$dst@1 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun $t27 () Int)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun $t22@0 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t18@0 () Bool)
(declare-fun $t20 () Int)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'#0''@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t17 () T@$Mutation_194232)
(declare-fun $t17@0 () T@$Mutation_194232)
(declare-fun MapConstVec_14675 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_14675 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t15 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t13 () Int)
(declare-fun $t12 () Bool)
(declare-fun _$t1 () |T@$1_Diem_MintCapability'#0'|)
(declare-fun $t7 () T@$Mutation_194232)
(declare-fun $t31 () T@$Mutation_15070)
(declare-fun $t34 () T@$Mutation_167422)
(push 1)
(set-info :boogie-vc-id $1_Diem_mint_with_capability$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 496794) (let ((L7_correct  (=> (= $t36@0 (|$1_Diem_Diem'#0'| _$t0)) (=> (and (= $t36@0 $t36@0) (= $t37 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816))) (and (=> (= (ControlFlow 0 354549) (- 0 498802)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 354549) (- 0 498814)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t0) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t0) $MAX_U128)) (and (=> (= (ControlFlow 0 354549) (- 0 498831)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 354549) (- 0 498841)) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 354549) (- 0 498849)) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816) (and (=> (= (ControlFlow 0 354549) (- 0 498857)) (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'#0'| $t37) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t37) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t37) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t37) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t37) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t37) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t37) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t37) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8)))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (|$total_value#$1_Diem_CurrencyInfo'#0'| $t37) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8)))) (= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t37) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t37) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t37) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t37) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t37) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t37) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t37) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (= (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t37) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8) _$t0) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8))))) (and (=> (= (ControlFlow 0 354549) (- 0 498875)) (= (|$value#$1_Diem_Diem'#0'| $t36@0) _$t0)) (=> (= (|$value#$1_Diem_Diem'#0'| $t36@0) _$t0) (and (=> (= (ControlFlow 0 354549) (- 0 498884)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr))))
 :qid |XDXbpl.12746:15|
 :skolemid |362|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr@@0))))
 :qid |XDXbpl.12746:15|
 :skolemid |362|
)) (and (=> (= (ControlFlow 0 354549) (- 0 498913)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr@@1)))
 :qid |XDXbpl.12751:15|
 :skolemid |363|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr@@2)))
 :qid |XDXbpl.12751:15|
 :skolemid |363|
)) (and (=> (= (ControlFlow 0 354549) (- 0 498938)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 354549) (- 0 498958)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_187100| |$1_Diem_BurnCapability'#0'_$memory|) addr@@3)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_187100| |$1_Diem_BurnCapability'#0'_$memory|) addr@@3))))
 :qid |XDXbpl.12761:15|
 :skolemid |364|
))) (=> (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_187100| |$1_Diem_BurnCapability'#0'_$memory|) addr@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_187100| |$1_Diem_BurnCapability'#0'_$memory|) addr@@4))))
 :qid |XDXbpl.12761:15|
 :skolemid |364|
)) (and (=> (= (ControlFlow 0 354549) (- 0 498987)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_187100| |$1_Diem_BurnCapability'#0'_$memory|) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_187100| |$1_Diem_BurnCapability'#0'_$memory|) addr@@5)))
 :qid |XDXbpl.12766:15|
 :skolemid |365|
))) (=> (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_187100| |$1_Diem_BurnCapability'#0'_$memory|) addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_187100| |$1_Diem_BurnCapability'#0'_$memory|) addr@@6)))
 :qid |XDXbpl.12766:15|
 :skolemid |365|
)) (and (=> (= (ControlFlow 0 354549) (- 0 499012)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 354549) (- 0 499032)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 354549) (- 0 499052)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_193411| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_192927| |$1_Diem_Preburn'#0'_$memory|) addr@@7))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_193411| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@7))))
 :qid |XDXbpl.12781:15|
 :skolemid |366|
))) (=> (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_193411| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_192927| |$1_Diem_Preburn'#0'_$memory|) addr@@8))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_193411| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@8))))
 :qid |XDXbpl.12781:15|
 :skolemid |366|
)) (and (=> (= (ControlFlow 0 354549) (- 0 499088)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_193411| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_193411| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@9)))
 :qid |XDXbpl.12786:15|
 :skolemid |367|
))) (=> (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_193411| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_193411| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@10)))
 :qid |XDXbpl.12786:15|
 :skolemid |367|
)) (and (=> (= (ControlFlow 0 354549) (- 0 499113)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t9)) (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new (let ((len (|l#Multiset_133706| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| stream@@0) (|$ToEventRep'$1_Diem_MintEvent'| $t11))))
(Multiset_133706 (|Store__T@[$EventRep]Int_| (|v#Multiset_133706| stream@@0) (|$ToEventRep'$1_Diem_MintEvent'| $t11) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@52 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| expected) handle@@1)) v@@52) (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| actual) handle@@1)) v@@52))
 :qid |XDXbpl.164:13|
 :skolemid |5|
)))
 :qid |XDXbpl.2965:13|
 :skolemid |106|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@0 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t9)) (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_133706| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| stream@@1) (|$ToEventRep'$1_Diem_MintEvent'| $t11))))
(Multiset_133706 (|Store__T@[$EventRep]Int_| (|v#Multiset_133706| stream@@1) (|$ToEventRep'$1_Diem_MintEvent'| $t11) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@0)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@53 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| expected@@0) handle@@2)) v@@53) (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| actual@@0) handle@@2)) v@@53))
 :qid |XDXbpl.164:13|
 :skolemid |5|
)))
 :qid |XDXbpl.2965:13|
 :skolemid |106|
))))) (=> (= (ControlFlow 0 354549) (- 0 499144)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t9)) (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $EmptyEventStore) $t10)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_133706| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| stream@@2) (|$ToEventRep'$1_Diem_MintEvent'| $t11))))
(Multiset_133706 (|Store__T@[$EventRep]Int_| (|v#Multiset_133706| stream@@2) (|$ToEventRep'$1_Diem_MintEvent'| $t11) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $EmptyEventStore) $t10 stream_new@@1)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@54 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| actual@@1) handle@@3)) v@@54) (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| expected@@1) handle@@3)) v@@54))
 :qid |XDXbpl.164:13|
 :skolemid |5|
)))
 :qid |XDXbpl.2965:13|
 :skolemid |106|
))))))))))))))))))))))))))))))))))))))))))))
(let ((anon42_Else_correct  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 354890) (- 0 498521)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@2))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@2)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@2))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@2)) 10000000000)) (=> (= |$1_Diem_CurrencyInfo'#0'_$memory@1| ($Memory_186082 (|Store__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) (|a#$Global| (|l#$Mutation_194232| $t17@2)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) (|a#$Global| (|l#$Mutation_194232| $t17@2)) (|v#$Mutation_194232| $t17@2)))) (and (=> (= (ControlFlow 0 354890) (- 0 498569)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816)))) (forall ((mint_cap_owner1 Int) (mint_cap_owner2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1) (=> (|$IsValid'address'| mint_cap_owner2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1) (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2)) (= mint_cap_owner1 mint_cap_owner2))))
 :qid |XDXbpl.12583:83|
 :skolemid |354|
)))) (=> (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816)))) (forall ((mint_cap_owner1@@0 Int) (mint_cap_owner2@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@0) (=> (|$IsValid'address'| mint_cap_owner2@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2@@0)) (= mint_cap_owner1@@0 mint_cap_owner2@@0))))
 :qid |XDXbpl.12583:83|
 :skolemid |354|
))) (and (=> (= (ControlFlow 0 354890) (- 0 498614)) (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816))))))
 :qid |XDXbpl.12589:15|
 :skolemid |355|
))) (=> (forall ((addr3@@0 Int) ) (!  (=> (|$IsValid'address'| addr3@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr3@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816))))))
 :qid |XDXbpl.12589:15|
 :skolemid |355|
)) (and (=> (= (ControlFlow 0 354890) (- 0 498637)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_192927| |$1_Diem_Preburn'#0'_$memory|) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816)))
 :qid |XDXbpl.12595:15|
 :skolemid |356|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_192927| |$1_Diem_Preburn'#0'_$memory|) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816)))
 :qid |XDXbpl.12595:15|
 :skolemid |356|
)) (and (=> (= (ControlFlow 0 354890) (- 0 498660)) (forall ((dr_addr Int) ) (!  (=> (|$IsValid'address'| dr_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) dr_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) dr_addr)))
 :qid |XDXbpl.12601:15|
 :skolemid |357|
))) (=> (forall ((dr_addr@@0 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) dr_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) dr_addr@@0)))
 :qid |XDXbpl.12601:15|
 :skolemid |357|
)) (and (=> (= (ControlFlow 0 354890) (- 0 498684)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and ($1_Signer_is_txn_signer_addr a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a)) 1))))
 :qid |XDXbpl.4772:13|
 :skolemid |143|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a@@0 Int) ) (!  (and (|$IsValid'address'| a@@0) (and ($1_Signer_is_txn_signer_addr a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@0)) 1))))
 :qid |XDXbpl.4772:13|
 :skolemid |143|
)))) (and (=> (= (ControlFlow 0 354890) (- 0 498708)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a@@1 Int) ) (!  (and (|$IsValid'address'| a@@1) (and ($1_Signer_is_txn_signer_addr a@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@1)) 1))))
 :qid |XDXbpl.4772:13|
 :skolemid |143|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a@@2 Int) ) (!  (and (|$IsValid'address'| a@@2) (and ($1_Signer_is_txn_signer_addr a@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@2)) 1))))
 :qid |XDXbpl.4772:13|
 :skolemid |143|
)))) (and (=> (= (ControlFlow 0 354890) (- 0 498732)) (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816)) (exists ((a@@3 Int) ) (!  (and (|$IsValid'address'| a@@3) (and ($1_Signer_is_txn_signer_addr a@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@3)) 0))))
 :qid |XDXbpl.4777:13|
 :skolemid |144|
)))) (=> (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@1|) 173345816)) (exists ((a@@4 Int) ) (!  (and (|$IsValid'address'| a@@4) (and ($1_Signer_is_txn_signer_addr a@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@4)) 0))))
 :qid |XDXbpl.4777:13|
 :skolemid |144|
))) (=> (= $es@1 $es@0) (=> (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@1|) (= (ControlFlow 0 354890) 354549)) L7_correct))))))))))))))))))))))
(let ((anon41_Else_correct  (=> (not inline$$Not$0$dst@1) (and (=> (= (ControlFlow 0 354133) (- 0 498113)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@2))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@2)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@2))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@2)) 10000000000)) (=> (= |$1_Diem_CurrencyInfo'#0'_$memory@0| ($Memory_186082 (|Store__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) (|a#$Global| (|l#$Mutation_194232| $t17@2)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) (|a#$Global| (|l#$Mutation_194232| $t17@2)) (|v#$Mutation_194232| $t17@2)))) (and (=> (= (ControlFlow 0 354133) (- 0 498161)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)))) (forall ((mint_cap_owner1@@1 Int) (mint_cap_owner2@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@1) (=> (|$IsValid'address'| mint_cap_owner2@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2@@1)) (= mint_cap_owner1@@1 mint_cap_owner2@@1))))
 :qid |XDXbpl.12649:83|
 :skolemid |358|
)))) (=> (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)))) (forall ((mint_cap_owner1@@2 Int) (mint_cap_owner2@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@2) (=> (|$IsValid'address'| mint_cap_owner2@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2@@2)) (= mint_cap_owner1@@2 mint_cap_owner2@@2))))
 :qid |XDXbpl.12649:83|
 :skolemid |358|
))) (and (=> (= (ControlFlow 0 354133) (- 0 498206)) (forall ((addr3@@1 Int) ) (!  (=> (|$IsValid'address'| addr3@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr3@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816))))))
 :qid |XDXbpl.12655:15|
 :skolemid |359|
))) (=> (forall ((addr3@@2 Int) ) (!  (=> (|$IsValid'address'| addr3@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr3@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816))))))
 :qid |XDXbpl.12655:15|
 :skolemid |359|
)) (and (=> (= (ControlFlow 0 354133) (- 0 498229)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_192927| |$1_Diem_Preburn'#0'_$memory|) addr@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)))
 :qid |XDXbpl.12661:15|
 :skolemid |360|
))) (=> (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_192927| |$1_Diem_Preburn'#0'_$memory|) addr@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)))
 :qid |XDXbpl.12661:15|
 :skolemid |360|
)) (and (=> (= (ControlFlow 0 354133) (- 0 498252)) (forall ((dr_addr@@1 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) dr_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) dr_addr@@1)))
 :qid |XDXbpl.12667:15|
 :skolemid |361|
))) (=> (forall ((dr_addr@@2 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) dr_addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) dr_addr@@2)))
 :qid |XDXbpl.12667:15|
 :skolemid |361|
)) (and (=> (= (ControlFlow 0 354133) (- 0 498276)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a@@5 Int) ) (!  (and (|$IsValid'address'| a@@5) (and ($1_Signer_is_txn_signer_addr a@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@5)) 1))))
 :qid |XDXbpl.4772:13|
 :skolemid |143|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a@@6 Int) ) (!  (and (|$IsValid'address'| a@@6) (and ($1_Signer_is_txn_signer_addr a@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@6)) 1))))
 :qid |XDXbpl.4772:13|
 :skolemid |143|
)))) (and (=> (= (ControlFlow 0 354133) (- 0 498300)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a@@7 Int) ) (!  (and (|$IsValid'address'| a@@7) (and ($1_Signer_is_txn_signer_addr a@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@7)) 1))))
 :qid |XDXbpl.4772:13|
 :skolemid |143|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a@@8 Int) ) (!  (and (|$IsValid'address'| a@@8) (and ($1_Signer_is_txn_signer_addr a@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@8)) 1))))
 :qid |XDXbpl.4772:13|
 :skolemid |143|
)))) (and (=> (= (ControlFlow 0 354133) (- 0 498324)) (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (exists ((a@@9 Int) ) (!  (and (|$IsValid'address'| a@@9) (and ($1_Signer_is_txn_signer_addr a@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@9)) 0))))
 :qid |XDXbpl.4777:13|
 :skolemid |144|
)))) (=> (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (exists ((a@@10 Int) ) (!  (and (|$IsValid'address'| a@@10) (and ($1_Signer_is_txn_signer_addr a@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174836| $1_Roles_RoleId_$memory) a@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_174836| $1_Roles_RoleId_$memory) a@@10)) 0))))
 :qid |XDXbpl.4777:13|
 :skolemid |144|
))) (=> (= $es@1 $es) (=> (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@0|) (= (ControlFlow 0 354133) 354549)) L7_correct))))))))))))))))))))))
(let ((L9_correct  (and (=> (= (ControlFlow 0 353099) (- 0 498433)) (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t0) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t0) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 353099) (- 0 498461)) (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 $t13@0)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t0) $MAX_U128) (= 8 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t13@0))))))))
(let ((anon42_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t13@0 $abort_code@5) (= (ControlFlow 0 354904) 353099))) L9_correct)))
(let ((|inline$$1_Event_emit_event'$1_Diem_MintEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_Diem_MintEvent'$0$handle@1| (|v#$Mutation_167422| $t34@0)) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_MintEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_133706| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| stream@@3) (|$ToEventRep'$1_Diem_MintEvent'| $t35@0))))
(Multiset_133706 (|Store__T@[$EventRep]Int_| (|v#Multiset_133706| stream@@3) (|$ToEventRep'$1_Diem_MintEvent'| $t35@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_MintEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 354644) 354904) anon42_Then_correct) (=> (= (ControlFlow 0 354644) 354890) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (and (and inline$$Not$0$dst@1 (= $t34@0 ($Mutation_167422 (|l#$Mutation_194232| $t17@2) (let ((l (|l#Vec_23605| (|p#$Mutation_194232| $t17@2))))
(Vec_23605 (|Store__T@[Int]Int_| (|v#Vec_23605| (|p#$Mutation_194232| $t17@2)) l 8) (+ l 1))) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@2))))) (and (= $t35@0 ($1_Diem_MintEvent _$t0 $t14)) (= (ControlFlow 0 354650) 354644))) |inline$$1_Event_emit_event'$1_Diem_MintEvent'$0$anon0_correct|)))
(let ((inline$$Not$0$anon0_correct  (=> (= inline$$Not$0$dst@1  (not $t32@0)) (and (=> (= (ControlFlow 0 353885) 354650) anon41_Then_correct) (=> (= (ControlFlow 0 353885) 354133) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (not $abort_flag@4) (= $t31@0 ($Mutation_15070 (|l#$Mutation_194232| $t17@1) (let ((l@@0 (|l#Vec_23605| (|p#$Mutation_194232| $t17@1))))
(Vec_23605 (|Store__T@[Int]Int_| (|v#Vec_23605| (|p#$Mutation_194232| $t17@1)) l@@0 0) (+ l@@0 1))) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1))))) (=> (and (and (= $t31@1 ($Mutation_15070 (|l#$Mutation_15070| $t31@0) (|p#$Mutation_15070| $t31@0) inline$$AddU128$0$dst@2)) (= $t17@2 ($Mutation_194232 (|l#$Mutation_194232| $t17@1) (|p#$Mutation_194232| $t17@1) (|$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_15070| $t31@1) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)))))) (and (= $t32@0 (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@2))) (= (ControlFlow 0 353891) 353885))) inline$$Not$0$anon0_correct))))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t13@0 $abort_code@5) (= (ControlFlow 0 354918) 353099))) L9_correct)))
(let ((inline$$AddU128$0$anon3_Then$1_correct  (=> (= $abort_code@5 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@4 true) (= inline$$AddU128$0$dst@2 inline$$AddU128$0$dst@0)) (and (=> (= (ControlFlow 0 353801) 354918) anon40_Then_correct) (=> (= (ControlFlow 0 353801) 353891) anon40_Else_correct))))))
(let ((inline$$AddU128$0$anon3_Then_correct  (=> (and (> (+ $t28@0 inline$$CastU128$1$dst@1) $MAX_U128) (= (ControlFlow 0 353799) 353801)) inline$$AddU128$0$anon3_Then$1_correct)))
(let ((inline$$AddU128$0$anon3_Else_correct  (=> (>= $MAX_U128 (+ $t28@0 inline$$CastU128$1$dst@1)) (=> (and (and (= inline$$AddU128$0$dst@1 (+ $t28@0 inline$$CastU128$1$dst@1)) (= $abort_code@5 $abort_code@4)) (and (= $abort_flag@4 $abort_flag@3) (= inline$$AddU128$0$dst@2 inline$$AddU128$0$dst@1))) (and (=> (= (ControlFlow 0 353747) 354918) anon40_Then_correct) (=> (= (ControlFlow 0 353747) 353891) anon40_Else_correct))))))
(let ((anon39_Else_correct  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 353807) 353799) inline$$AddU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 353807) 353747) inline$$AddU128$0$anon3_Else_correct)))))
(let ((anon39_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t13@0 $abort_code@4) (= (ControlFlow 0 354932) 353099))) L9_correct)))
(let ((inline$$CastU128$1$anon3_Then$1_correct  (=> (= $abort_flag@3 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= inline$$CastU128$1$dst@1 inline$$CastU128$1$dst@0)) (and (=> (= (ControlFlow 0 353640) 354932) anon39_Then_correct) (=> (= (ControlFlow 0 353640) 353807) anon39_Else_correct))))))
(let ((inline$$CastU128$1$anon3_Then_correct  (=> (and (> _$t0 $MAX_U128) (= (ControlFlow 0 353638) 353640)) inline$$CastU128$1$anon3_Then$1_correct)))
(let ((inline$$CastU128$1$anon3_Else_correct  (=> (and (and (>= $MAX_U128 _$t0) (= $abort_flag@3 $abort_flag@2)) (and (= $abort_code@4 $abort_code@3) (= inline$$CastU128$1$dst@1 _$t0))) (and (=> (= (ControlFlow 0 353590) 354932) anon39_Then_correct) (=> (= (ControlFlow 0 353590) 353807) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (and inline$$Ge$0$dst@1 (= $t28@0 (|$total_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)))) (and (=> (= (ControlFlow 0 353646) 353638) inline$$CastU128$1$anon3_Then_correct) (=> (= (ControlFlow 0 353646) 353590) inline$$CastU128$1$anon3_Else_correct)))))
(let ((anon38_Else_correct  (=> (not inline$$Ge$0$dst@1) (and (=> (= (ControlFlow 0 353511) (- 0 497800)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) 10000000000)) (=> (= $t27 $t27) (=> (and (= $t13@0 $t27) (= (ControlFlow 0 353511) 353099)) L9_correct)))))))
(let ((anon37_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t27) (= $t27 8)) (and (= $t27 $t27) (= inline$$Ge$0$dst@1 inline$$Ge$0$dst@1))) (and (=> (= (ControlFlow 0 353469) 353646) anon38_Then_correct) (=> (= (ControlFlow 0 353469) 353511) anon38_Else_correct))))))
(let ((inline$$Ge$0$anon0_correct  (=> (and (= inline$$Ge$0$dst@1 (>= inline$$Sub$0$dst@2 inline$$CastU128$0$dst@1)) (= (ControlFlow 0 353433) 353469)) anon37_Else$1_correct)))
(let ((anon37_Else_correct  (=> (and (not $abort_flag@2) (= (ControlFlow 0 353439) 353433)) inline$$Ge$0$anon0_correct)))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t13@0 $abort_code@3) (= (ControlFlow 0 354946) 353099))) L9_correct)))
(let ((inline$$CastU128$0$anon3_Then$1_correct  (=> (= $abort_code@3 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2 true) (= inline$$CastU128$0$dst@1 inline$$CastU128$0$dst@0)) (and (=> (= (ControlFlow 0 353379) 354946) anon37_Then_correct) (=> (= (ControlFlow 0 353379) 353439) anon37_Else_correct))))))
(let ((inline$$CastU128$0$anon3_Then_correct  (=> (and (> _$t0 $MAX_U128) (= (ControlFlow 0 353377) 353379)) inline$$CastU128$0$anon3_Then$1_correct)))
(let ((inline$$CastU128$0$anon3_Else_correct  (=> (and (and (>= $MAX_U128 _$t0) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= inline$$CastU128$0$dst@1 _$t0))) (and (=> (= (ControlFlow 0 353329) 354946) anon37_Then_correct) (=> (= (ControlFlow 0 353329) 353439) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 353385) 353377) inline$$CastU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 353385) 353329) inline$$CastU128$0$anon3_Else_correct)))))
(let ((anon36_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t13@0 $abort_code@2) (= (ControlFlow 0 354960) 353099))) L9_correct)))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 353246) 354960) anon36_Then_correct) (=> (= (ControlFlow 0 353246) 353385) anon36_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< 340282366920938463463374607431768211455 $t22@0) (= (ControlFlow 0 353244) 353246)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= $t22@0 340282366920938463463374607431768211455) (=> (and (and (= inline$$Sub$0$dst@1 (- 340282366920938463463374607431768211455 $t22@0)) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 353196) 354960) anon36_Then_correct) (=> (= (ControlFlow 0 353196) 353385) anon36_Else_correct))))))
(let ((anon35_Then_correct  (=> $t18@0 (=> (and (|$IsValid'u128'| 340282366920938463463374607431768211455) (= $t22@0 (|$total_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)))) (and (=> (= (ControlFlow 0 353252) 353244) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 353252) 353196) inline$$Sub$0$anon3_Else_correct))))))
(let ((anon35_Else_correct  (=> (not $t18@0) (and (=> (= (ControlFlow 0 353003) (- 0 497543)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1)) 10000000000)) (=> (= $t20 $t20) (=> (and (= $t13@0 $t20) (= (ControlFlow 0 353003) 353099)) L9_correct)))))))
(let ((anon34_Else_correct  (=> (not $abort_flag@0) (=> (and (and (and (= |$temp_0'$1_Diem_CurrencyInfo'#0''@0| (|v#$Mutation_194232| $t17@1)) (= |$temp_0'$1_Diem_CurrencyInfo'#0''@0| |$temp_0'$1_Diem_CurrencyInfo'#0''@0|)) (and (= $t18@0 (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_194232| $t17@1))) (|$IsValid'u64'| 5))) (and (and (|$IsValid'u64'| $t20) (= $t20 1)) (and (= $t20 $t20) (= $t18@0 $t18@0)))) (and (=> (= (ControlFlow 0 352961) 353252) anon35_Then_correct) (=> (= (ControlFlow 0 352961) 353003) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t13@0 $abort_code@1) (= (ControlFlow 0 354974) 353099))) L9_correct)))
(let ((anon33_Then$1_correct  (=> (= $t17@1 $t17) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 355026) 354974) anon34_Then_correct) (=> (= (ControlFlow 0 355026) 352961) anon34_Else_correct))))))
(let ((anon33_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= (ControlFlow 0 355024) 355026)) anon33_Then$1_correct)))
(let ((anon33_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (and (and (= $t17@0 ($Mutation_194232 ($Global 173345816) (Vec_23605 (MapConstVec_14675 DefaultVecElem_14675) 0) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t17@1 $t17@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 352907) 354974) anon34_Then_correct) (=> (= (ControlFlow 0 352907) 352961) anon34_Else_correct))))))
(let ((anon32_Else_correct  (=> (not $t15) (=> (and (and (|$IsValid'vec'u8''| $t14) (|$IsEqual'vec'u8''| $t14 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t14 $t14) (|$IsValid'address'| 173345816))) (and (=> (= (ControlFlow 0 352885) (- 0 497376)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (and (=> (= (ControlFlow 0 352885) 355024) anon33_Then_correct) (=> (= (ControlFlow 0 352885) 352907) anon33_Else_correct))))))))
(let ((anon32_Then_correct  (=> $t15 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 355052) 353099))) L9_correct))))
(let ((anon31_Else_correct  (=> (and (not $t12) (= $t15  (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 352847) 355052) anon32_Then_correct) (=> (= (ControlFlow 0 352847) 352885) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> $t12 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 355078) 353099))) L9_correct))))
(let ((anon0$1_correct  (=> (and (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@3 Int) (mint_cap_owner2@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@3) (=> (|$IsValid'address'| mint_cap_owner2@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2@@3)) (= mint_cap_owner1@@3 mint_cap_owner2@@3))))
 :qid |XDXbpl.12214:88|
 :skolemid |350|
))) (forall ((addr3@@3 Int) ) (!  (=> (|$IsValid'address'| addr3@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_186646| |$1_Diem_MintCapability'#0'_$memory|) addr3@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))
 :qid |XDXbpl.12218:20|
 :skolemid |351|
))) (=> (and (and (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_192927| |$1_Diem_Preburn'#0'_$memory|) addr@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |XDXbpl.12222:20|
 :skolemid |352|
)) (|$IsValid'u64'| _$t0)) (and (|$IsValid'$1_Diem_MintCapability'#0''| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc) 10000000000))))
 :qid |XDXbpl.12232:20|
 :skolemid |353|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0))
)))) (=> (and (and (and (= $t8 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t9 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (= $t10 (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t9)) (= $t11 ($1_Diem_MintEvent _$t0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t9))))) (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t12  (not (|Select__T@[Int]Bool_| (|domain#$Memory_186082| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 352829) 355078) anon31_Then_correct) (=> (= (ControlFlow 0 352829) 352847) anon31_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_133706| stream@@4) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| stream@@4) v@@55) 0)
 :qid |XDXbpl.159:13|
 :skolemid |4|
))))
 :qid |XDXbpl.2949:13|
 :skolemid |105|
))) (= (ControlFlow 0 352586) 352829)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (|l#Vec_23605| (|p#$Mutation_194232| $t7)) 0) (=> (and (and (= (|l#Vec_23605| (|p#$Mutation_194232| $t17)) 0) (= (|l#Vec_23605| (|p#$Mutation_15070| $t31)) 0)) (and (= (|l#Vec_23605| (|p#$Mutation_167422| $t34)) 0) (= (ControlFlow 0 352596) 352586))) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 496794) 352596) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_166791 0)) ((($Memory_166791 (|domain#$Memory_166791| |T@[Int]Bool|) (|contents#$Memory_166791| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_135716 0)) (((Vec_135716 (|v#Vec_135716| |T@[Int]#0|) (|l#Vec_135716| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_176545 0)) ((($Memory_176545 (|domain#$Memory_176545| |T@[Int]Bool|) (|contents#$Memory_176545| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_176474 0)) ((($Memory_176474 (|domain#$Memory_176474| |T@[Int]Bool|) (|contents#$Memory_176474| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_176231 0)) ((($Memory_176231 (|domain#$Memory_176231| |T@[Int]Bool|) (|contents#$Memory_176231| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_176160 0)) ((($Memory_176160 (|domain#$Memory_176160| |T@[Int]Bool|) (|contents#$Memory_176160| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_176089 0)) ((($Memory_176089 (|domain#$Memory_176089| |T@[Int]Bool|) (|contents#$Memory_176089| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_246309 0)) ((($Memory_246309 (|domain#$Memory_246309| |T@[Int]Bool|) (|contents#$Memory_246309| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_175921 0)) ((($Memory_175921 (|domain#$Memory_175921| |T@[Int]Bool|) (|contents#$Memory_175921| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_246564 0)) ((($Memory_246564 (|domain#$Memory_246564| |T@[Int]Bool|) (|contents#$Memory_246564| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_246664 0)) ((($Memory_246664 (|domain#$Memory_246664| |T@[Int]Bool|) (|contents#$Memory_246664| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_245992 0)) ((($Memory_245992 (|domain#$Memory_245992| |T@[Int]Bool|) (|contents#$Memory_245992| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_283009 0)) ((($Memory_283009 (|domain#$Memory_283009| |T@[Int]Bool|) (|contents#$Memory_283009| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_282722 0)) ((($Memory_282722 (|domain#$Memory_282722| |T@[Int]Bool|) (|contents#$Memory_282722| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_282435 0)) ((($Memory_282435 (|domain#$Memory_282435| |T@[Int]Bool|) (|contents#$Memory_282435| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_282148 0)) ((($Memory_282148 (|domain#$Memory_282148| |T@[Int]Bool|) (|contents#$Memory_282148| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_175753 0)) ((($Memory_175753 (|domain#$Memory_175753| |T@[Int]Bool|) (|contents#$Memory_175753| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_175514 0)) ((($Memory_175514 (|domain#$Memory_175514| |T@[Int]Bool|) (|contents#$Memory_175514| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_176403 0)) ((($Memory_176403 (|domain#$Memory_176403| |T@[Int]Bool|) (|contents#$Memory_176403| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_186646 0)) ((($Memory_186646 (|domain#$Memory_186646| |T@[Int]Bool|) (|contents#$Memory_186646| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_186582 0)) ((($Memory_186582 (|domain#$Memory_186582| |T@[Int]Bool|) (|contents#$Memory_186582| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_186518 0)) ((($Memory_186518 (|domain#$Memory_186518| |T@[Int]Bool|) (|contents#$Memory_186518| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_187100 0)) ((($Memory_187100 (|domain#$Memory_187100| |T@[Int]Bool|) (|contents#$Memory_187100| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_187013 0)) ((($Memory_187013 (|domain#$Memory_187013| |T@[Int]Bool|) (|contents#$Memory_187013| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_186926 0)) ((($Memory_186926 (|domain#$Memory_186926| |T@[Int]Bool|) (|contents#$Memory_186926| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_192927 0)) ((($Memory_192927 (|domain#$Memory_192927| |T@[Int]Bool|) (|contents#$Memory_192927| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_246224 0)) ((($Memory_246224 (|domain#$Memory_246224| |T@[Int]Bool|) (|contents#$Memory_246224| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_192846 0)) ((($Memory_192846 (|domain#$Memory_192846| |T@[Int]Bool|) (|contents#$Memory_192846| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_175585 0)) ((($Memory_175585 (|domain#$Memory_175585| |T@[Int]Bool|) (|contents#$Memory_175585| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_246164 0)) ((($Memory_246164 (|domain#$Memory_246164| |T@[Int]Bool|) (|contents#$Memory_246164| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_192765 0)) ((($Memory_192765 (|domain#$Memory_192765| |T@[Int]Bool|) (|contents#$Memory_192765| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_175824 0)) ((($Memory_175824 (|domain#$Memory_175824| |T@[Int]Bool|) (|contents#$Memory_175824| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_181917 0)) ((($Memory_181917 (|domain#$Memory_181917| |T@[Int]Bool|) (|contents#$Memory_181917| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_181830 0)) ((($Memory_181830 (|domain#$Memory_181830| |T@[Int]Bool|) (|contents#$Memory_181830| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_181743 0)) ((($Memory_181743 (|domain#$Memory_181743| |T@[Int]Bool|) (|contents#$Memory_181743| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_181656 0)) ((($Memory_181656 (|domain#$Memory_181656| |T@[Int]Bool|) (|contents#$Memory_181656| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_181569 0)) ((($Memory_181569 (|domain#$Memory_181569| |T@[Int]Bool|) (|contents#$Memory_181569| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_181482 0)) ((($Memory_181482 (|domain#$Memory_181482| |T@[Int]Bool|) (|contents#$Memory_181482| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_175275 0)) ((($Memory_175275 (|domain#$Memory_175275| |T@[Int]Bool|) (|contents#$Memory_175275| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_180409 0)) ((($Memory_180409 (|domain#$Memory_180409| |T@[Int]Bool|) (|contents#$Memory_180409| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_175116 0)) ((($Memory_175116 (|domain#$Memory_175116| |T@[Int]Bool|) (|contents#$Memory_175116| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_174707 0)) ((($Memory_174707 (|domain#$Memory_174707| |T@[Int]Bool|) (|contents#$Memory_174707| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_175023 0)) ((($Memory_175023 (|domain#$Memory_175023| |T@[Int]Bool|) (|contents#$Memory_175023| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_133870 0)) (((Vec_133870 (|v#Vec_133870| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_133870| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_133870) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_133831 0)) (((Vec_133831 (|v#Vec_133831| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_133831| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_133831) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_23605 0)) (((Vec_23605 (|v#Vec_23605| |T@[Int]Int|) (|l#Vec_23605| Int) ) ) ))
(declare-sort |T@[Int]Vec_23605| 0)
(declare-datatypes ((T@Vec_134061 0)) (((Vec_134061 (|v#Vec_134061| |T@[Int]Vec_23605|) (|l#Vec_134061| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_134061) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_176005 0)) ((($Memory_176005 (|domain#$Memory_176005| |T@[Int]Bool|) (|contents#$Memory_176005| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_134061) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_175346 0)) ((($Memory_175346 (|domain#$Memory_175346| |T@[Int]Bool|) (|contents#$Memory_175346| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_23605) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_23605) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_176629 0)) ((($Memory_176629 (|domain#$Memory_176629| |T@[Int]Bool|) (|contents#$Memory_176629| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_23605) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_180276 0)) ((($Memory_180276 (|domain#$Memory_180276| |T@[Int]Bool|) (|contents#$Memory_180276| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_23605) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_245892 0)) ((($Memory_245892 (|domain#$Memory_245892| |T@[Int]Bool|) (|contents#$Memory_245892| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_23605) (|$base_url#$1_DualAttestation_Credential| T@Vec_23605) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_23605) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_245605 0)) ((($Memory_245605 (|domain#$Memory_245605| |T@[Int]Bool|) (|contents#$Memory_245605| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_134504 0)) (((Vec_134504 (|v#Vec_134504| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_134504| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_134504) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_246077 0)) ((($Memory_246077 (|domain#$Memory_246077| |T@[Int]Bool|) (|contents#$Memory_246077| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_134349 0)) (((Vec_134349 (|v#Vec_134349| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_134349| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_134349) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_193411 0)) ((($Memory_193411 (|domain#$Memory_193411| |T@[Int]Bool|) (|contents#$Memory_193411| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_134310 0)) (((Vec_134310 (|v#Vec_134310| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_134310| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_134310) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_193294 0)) ((($Memory_193294 (|domain#$Memory_193294| |T@[Int]Bool|) (|contents#$Memory_193294| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_134271 0)) (((Vec_134271 (|v#Vec_134271| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_134271| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_134271) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_193177 0)) ((($Memory_193177 (|domain#$Memory_193177| |T@[Int]Bool|) (|contents#$Memory_193177| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_186082 0)) ((($Memory_186082 (|domain#$Memory_186082| |T@[Int]Bool|) (|contents#$Memory_186082| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_175669 0)) ((($Memory_175669 (|domain#$Memory_175669| |T@[Int]Bool|) (|contents#$Memory_175669| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_175430 0)) ((($Memory_175430 (|domain#$Memory_175430| |T@[Int]Bool|) (|contents#$Memory_175430| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_23605) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_23605) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_133792 0)) (((Vec_133792 (|v#Vec_133792| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_133792| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_133792) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_134004 0)) (((Vec_134004 (|v#Vec_134004| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_134004| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_134004) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_175202 0)) ((($Memory_175202 (|domain#$Memory_175202| |T@[Int]Bool|) (|contents#$Memory_175202| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_179530 0)) ((($Memory_179530 (|domain#$Memory_179530| |T@[Int]Bool|) (|contents#$Memory_179530| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_178887 0)) ((($Memory_178887 (|domain#$Memory_178887| |T@[Int]Bool|) (|contents#$Memory_178887| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_174836 0)) ((($Memory_174836 (|domain#$Memory_174836| |T@[Int]Bool|) (|contents#$Memory_174836| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_174154 0)) ((($Memory_174154 (|domain#$Memory_174154| |T@[Int]Bool|) (|contents#$Memory_174154| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_23605) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_23605) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_23605) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_23605) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_23605) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_23605) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_23605) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_23605) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_23605) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_23605) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_133706 0)) (((Multiset_133706 (|v#Multiset_133706| |T@[$EventRep]Int|) (|l#Multiset_133706| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_133706| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_133706|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_310562 0)) ((($Mutation_310562 (|l#$Mutation_310562| T@$Location) (|p#$Mutation_310562| T@Vec_23605) (|v#$Mutation_310562| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_310517 0)) ((($Mutation_310517 (|l#$Mutation_310517| T@$Location) (|p#$Mutation_310517| T@Vec_23605) (|v#$Mutation_310517| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_290025 0)) ((($Mutation_290025 (|l#$Mutation_290025| T@$Location) (|p#$Mutation_290025| T@Vec_23605) (|v#$Mutation_290025| |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_286844 0)) ((($Mutation_286844 (|l#$Mutation_286844| T@$Location) (|p#$Mutation_286844| T@Vec_23605) (|v#$Mutation_286844| |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_283759 0)) ((($Mutation_283759 (|l#$Mutation_283759| T@$Location) (|p#$Mutation_283759| T@Vec_23605) (|v#$Mutation_283759| |T@$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_270500 0)) ((($Mutation_270500 (|l#$Mutation_270500| T@$Location) (|p#$Mutation_270500| T@Vec_23605) (|v#$Mutation_270500| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_74265 0)) ((($Mutation_74265 (|l#$Mutation_74265| T@$Location) (|p#$Mutation_74265| T@Vec_23605) (|v#$Mutation_74265| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_203382 0)) ((($Mutation_203382 (|l#$Mutation_203382| T@$Location) (|p#$Mutation_203382| T@Vec_23605) (|v#$Mutation_203382| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_203332 0)) ((($Mutation_203332 (|l#$Mutation_203332| T@$Location) (|p#$Mutation_203332| T@Vec_23605) (|v#$Mutation_203332| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_203284 0)) ((($Mutation_203284 (|l#$Mutation_203284| T@$Location) (|p#$Mutation_203284| T@Vec_23605) (|v#$Mutation_203284| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_198789 0)) ((($Mutation_198789 (|l#$Mutation_198789| T@$Location) (|p#$Mutation_198789| T@Vec_23605) (|v#$Mutation_198789| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_198739 0)) ((($Mutation_198739 (|l#$Mutation_198739| T@$Location) (|p#$Mutation_198739| T@Vec_23605) (|v#$Mutation_198739| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_198691 0)) ((($Mutation_198691 (|l#$Mutation_198691| T@$Location) (|p#$Mutation_198691| T@Vec_23605) (|v#$Mutation_198691| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_194282 0)) ((($Mutation_194282 (|l#$Mutation_194282| T@$Location) (|p#$Mutation_194282| T@Vec_23605) (|v#$Mutation_194282| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_194232 0)) ((($Mutation_194232 (|l#$Mutation_194232| T@$Location) (|p#$Mutation_194232| T@Vec_23605) (|v#$Mutation_194232| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_194184 0)) ((($Mutation_194184 (|l#$Mutation_194184| T@$Location) (|p#$Mutation_194184| T@Vec_23605) (|v#$Mutation_194184| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_184654 0)) ((($Mutation_184654 (|l#$Mutation_184654| T@$Location) (|p#$Mutation_184654| T@Vec_23605) (|v#$Mutation_184654| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_174649 0)) ((($Mutation_174649 (|l#$Mutation_174649| T@$Location) (|p#$Mutation_174649| T@Vec_23605) (|v#$Mutation_174649| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_167422 0)) ((($Mutation_167422 (|l#$Mutation_167422| T@$Location) (|p#$Mutation_167422| T@Vec_23605) (|v#$Mutation_167422| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_15070 0)) ((($Mutation_15070 (|l#$Mutation_15070| T@$Location) (|p#$Mutation_15070| T@Vec_23605) (|v#$Mutation_15070| Int) ) ) ))
(declare-datatypes ((T@$Mutation_161679 0)) ((($Mutation_161679 (|l#$Mutation_161679| T@$Location) (|p#$Mutation_161679| T@Vec_23605) (|v#$Mutation_161679| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$Mutation_160591 0)) ((($Mutation_160591 (|l#$Mutation_160591| T@$Location) (|p#$Mutation_160591| T@Vec_23605) (|v#$Mutation_160591| T@Vec_134061) ) ) ))
(declare-datatypes ((T@$Mutation_158882 0)) ((($Mutation_158882 (|l#$Mutation_158882| T@$Location) (|p#$Mutation_158882| T@Vec_23605) (|v#$Mutation_158882| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_157895 0)) ((($Mutation_157895 (|l#$Mutation_157895| T@$Location) (|p#$Mutation_157895| T@Vec_23605) (|v#$Mutation_157895| T@Vec_133792) ) ) ))
(declare-datatypes ((T@$Mutation_156240 0)) ((($Mutation_156240 (|l#$Mutation_156240| T@$Location) (|p#$Mutation_156240| T@Vec_23605) (|v#$Mutation_156240| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_155253 0)) ((($Mutation_155253 (|l#$Mutation_155253| T@$Location) (|p#$Mutation_155253| T@Vec_23605) (|v#$Mutation_155253| T@Vec_134504) ) ) ))
(declare-datatypes ((T@$Mutation_153575 0)) ((($Mutation_153575 (|l#$Mutation_153575| T@$Location) (|p#$Mutation_153575| T@Vec_23605) (|v#$Mutation_153575| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_152588 0)) ((($Mutation_152588 (|l#$Mutation_152588| T@$Location) (|p#$Mutation_152588| T@Vec_23605) (|v#$Mutation_152588| T@Vec_134271) ) ) ))
(declare-datatypes ((T@$Mutation_150879 0)) ((($Mutation_150879 (|l#$Mutation_150879| T@$Location) (|p#$Mutation_150879| T@Vec_23605) (|v#$Mutation_150879| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_149892 0)) ((($Mutation_149892 (|l#$Mutation_149892| T@$Location) (|p#$Mutation_149892| T@Vec_23605) (|v#$Mutation_149892| T@Vec_134310) ) ) ))
(declare-datatypes ((T@$Mutation_148183 0)) ((($Mutation_148183 (|l#$Mutation_148183| T@$Location) (|p#$Mutation_148183| T@Vec_23605) (|v#$Mutation_148183| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_147196 0)) ((($Mutation_147196 (|l#$Mutation_147196| T@$Location) (|p#$Mutation_147196| T@Vec_23605) (|v#$Mutation_147196| T@Vec_134349) ) ) ))
(declare-datatypes ((T@$Mutation_145487 0)) ((($Mutation_145487 (|l#$Mutation_145487| T@$Location) (|p#$Mutation_145487| T@Vec_23605) (|v#$Mutation_145487| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_144500 0)) ((($Mutation_144500 (|l#$Mutation_144500| T@$Location) (|p#$Mutation_144500| T@Vec_23605) (|v#$Mutation_144500| T@Vec_134004) ) ) ))
(declare-datatypes ((T@$Mutation_142700 0)) ((($Mutation_142700 (|l#$Mutation_142700| T@$Location) (|p#$Mutation_142700| T@Vec_23605) (|v#$Mutation_142700| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_141713 0)) ((($Mutation_141713 (|l#$Mutation_141713| T@$Location) (|p#$Mutation_141713| T@Vec_23605) (|v#$Mutation_141713| T@Vec_133870) ) ) ))
(declare-datatypes ((T@$Mutation_140048 0)) ((($Mutation_140048 (|l#$Mutation_140048| T@$Location) (|p#$Mutation_140048| T@Vec_23605) (|v#$Mutation_140048| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_139061 0)) ((($Mutation_139061 (|l#$Mutation_139061| T@$Location) (|p#$Mutation_139061| T@Vec_23605) (|v#$Mutation_139061| T@Vec_133831) ) ) ))
(declare-datatypes ((T@$Mutation_137348 0)) ((($Mutation_137348 (|l#$Mutation_137348| T@$Location) (|p#$Mutation_137348| T@Vec_23605) (|v#$Mutation_137348| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_136361 0)) ((($Mutation_136361 (|l#$Mutation_136361| T@$Location) (|p#$Mutation_136361| T@Vec_23605) (|v#$Mutation_136361| T@Vec_135716) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_135716 T@Vec_135716) Bool)
(declare-fun InRangeVec_119454 (T@Vec_135716 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_135716) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_135716 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_133831 T@Vec_133831) Bool)
(declare-fun InRangeVec_119655 (T@Vec_133831 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_133831) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_133831 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_133870 T@Vec_133870) Bool)
(declare-fun InRangeVec_119856 (T@Vec_133870 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_133870) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_133870 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_134004 T@Vec_134004) Bool)
(declare-fun InRangeVec_120057 (T@Vec_134004 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_23605 T@Vec_23605) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_134004) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_134004 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_134349 T@Vec_134349) Bool)
(declare-fun InRangeVec_120258 (T@Vec_134349 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_134349) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_134349 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_134310 T@Vec_134310) Bool)
(declare-fun InRangeVec_120459 (T@Vec_134310 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_134310) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_134310 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_134271 T@Vec_134271) Bool)
(declare-fun InRangeVec_120660 (T@Vec_134271 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_134271) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_134271 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_134504 T@Vec_134504) Bool)
(declare-fun InRangeVec_120861 (T@Vec_134504 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_134504) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_134504 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_133792 T@Vec_133792) Bool)
(declare-fun InRangeVec_121062 (T@Vec_133792 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_133792) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_133792 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_134061 T@Vec_134061) Bool)
(declare-fun InRangeVec_160014 (T@Vec_134061 Int) Bool)
(declare-fun |Select__T@[Int]Vec_23605_| (|T@[Int]Vec_23605| Int) T@Vec_23605)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_134061) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_23605) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_134061 T@Vec_23605) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_23605 T@Vec_23605) Bool)
(declare-fun InRangeVec_14446 (T@Vec_23605 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_23605) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_23605 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_23605 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_23605) T@Vec_23605)
(declare-fun $1_Hash_sha3 (T@Vec_23605) T@Vec_23605)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_23605) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_23605 T@Vec_23605 T@Vec_23605) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_133706_| (|T@[$1_Event_EventHandle]Multiset_133706| T@$1_Event_EventHandle) T@Multiset_133706)
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
(declare-fun IndexOfVec_23605 (T@Vec_23605 Int) Int)
(declare-fun IndexOfVec_133792 (T@Vec_133792 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_133831 (T@Vec_133831 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_133870 (T@Vec_133870 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_134004 (T@Vec_134004 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_134061 (T@Vec_134061 T@Vec_23605) Int)
(declare-fun IndexOfVec_134271 (T@Vec_134271 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_134310 (T@Vec_134310 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_134349 (T@Vec_134349 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_134504 (T@Vec_134504 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_135716 (T@Vec_135716 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_133706| |T@[$1_Event_EventHandle]Multiset_133706|) |T@[$1_Event_EventHandle]Multiset_133706|)
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
(declare-fun |lambda#30| (Int Int Int |T@[Int]Vec_23605| |T@[Int]Vec_23605| Int T@Vec_23605) |T@[Int]Vec_23605|)
(declare-fun |lambda#31| (Int Int |T@[Int]Vec_23605| Int Int T@Vec_23605) |T@[Int]Vec_23605|)
(declare-fun |lambda#32| (Int Int Int |T@[Int]Vec_23605| |T@[Int]Vec_23605| Int T@Vec_23605) |T@[Int]Vec_23605|)
(declare-fun |lambda#33| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#34| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#35| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XDXbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XDXbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XDXbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XDXbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XDXbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XDXbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XDXbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XDXbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_135716) (v2 T@Vec_135716) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_135716| v1) (|l#Vec_135716| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_119454 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_135716| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_135716| v2) i@@0)))
 :qid |XDXbpl.615:13|
 :skolemid |17|
))))
 :qid |XDXbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_135716) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_135716| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_119454 v@@4 i@@1) true)
 :qid |XDXbpl.621:13|
 :skolemid |19|
))))
 :qid |XDXbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_135716) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_119454 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@5) i@@3) e))
 :qid |XDXbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_119454 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@5) j) e)))
 :qid |XDXbpl.634:17|
 :skolemid |22|
)))))
 :qid |XDXbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_133831) (v2@@0 T@Vec_133831) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_133831| v1@@0) (|l#Vec_133831| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_119655 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v2@@0) i@@4)))
 :qid |XDXbpl.796:13|
 :skolemid |24|
))))
 :qid |XDXbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_133831) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_133831| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_119655 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@6) i@@5)))
 :qid |XDXbpl.802:13|
 :skolemid |26|
))))
 :qid |XDXbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_133831) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_119655 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@7) i@@7) e@@0))
 :qid |XDXbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_119655 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@7) j@@0) e@@0)))
 :qid |XDXbpl.815:17|
 :skolemid |29|
)))))
 :qid |XDXbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_133870) (v2@@1 T@Vec_133870) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_133870| v1@@1) (|l#Vec_133870| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_119856 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v2@@1) i@@8)))
 :qid |XDXbpl.977:13|
 :skolemid |31|
))))
 :qid |XDXbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_133870) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_133870| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_119856 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@8) i@@9)))
 :qid |XDXbpl.983:13|
 :skolemid |33|
))))
 :qid |XDXbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_133870) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_119856 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@9) i@@11) e@@1))
 :qid |XDXbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_119856 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@9) j@@1) e@@1)))
 :qid |XDXbpl.996:17|
 :skolemid |36|
)))))
 :qid |XDXbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_134004) (v2@@2 T@Vec_134004) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_134004| v1@@2) (|l#Vec_134004| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_120057 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v2@@2) i@@12)))))
 :qid |XDXbpl.1158:13|
 :skolemid |38|
))))
 :qid |XDXbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_134004) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_134004| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_120057 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@10) i@@13)))
 :qid |XDXbpl.1164:13|
 :skolemid |40|
))))
 :qid |XDXbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_134004) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_120057 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |XDXbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_120057 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |XDXbpl.1177:17|
 :skolemid |43|
)))))
 :qid |XDXbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_134349) (v2@@3 T@Vec_134349) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_134349| v1@@3) (|l#Vec_134349| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_120258 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v2@@3) i@@16)))))
 :qid |XDXbpl.1339:13|
 :skolemid |45|
))))
 :qid |XDXbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_134349) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_134349| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_120258 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@12) i@@17)))
 :qid |XDXbpl.1345:13|
 :skolemid |47|
))))
 :qid |XDXbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_134349) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_120258 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |XDXbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_120258 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |XDXbpl.1358:17|
 :skolemid |50|
)))))
 :qid |XDXbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_134310) (v2@@4 T@Vec_134310) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_134310| v1@@4) (|l#Vec_134310| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_120459 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v2@@4) i@@20)))))
 :qid |XDXbpl.1520:13|
 :skolemid |52|
))))
 :qid |XDXbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_134310) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_134310| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_120459 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@14) i@@21)))
 :qid |XDXbpl.1526:13|
 :skolemid |54|
))))
 :qid |XDXbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_134310) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_120459 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |XDXbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_120459 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |XDXbpl.1539:17|
 :skolemid |57|
)))))
 :qid |XDXbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_134271) (v2@@5 T@Vec_134271) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_134271| v1@@5) (|l#Vec_134271| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_120660 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v2@@5) i@@24)))))
 :qid |XDXbpl.1701:13|
 :skolemid |59|
))))
 :qid |XDXbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_134271) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_134271| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_120660 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@16) i@@25)))
 :qid |XDXbpl.1707:13|
 :skolemid |61|
))))
 :qid |XDXbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_134271) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_120660 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |XDXbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_120660 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |XDXbpl.1720:17|
 :skolemid |64|
)))))
 :qid |XDXbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_134504) (v2@@6 T@Vec_134504) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_134504| v1@@6) (|l#Vec_134504| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_120861 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v2@@6) i@@28))))
 :qid |XDXbpl.1882:13|
 :skolemid |66|
))))
 :qid |XDXbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_134504) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_134504| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_120861 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@18) i@@29)))
 :qid |XDXbpl.1888:13|
 :skolemid |68|
))))
 :qid |XDXbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_134504) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_120861 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |XDXbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_120861 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |XDXbpl.1901:17|
 :skolemid |71|
)))))
 :qid |XDXbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_133792) (v2@@7 T@Vec_133792) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_133792| v1@@7) (|l#Vec_133792| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_121062 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v2@@7) i@@32)))))
 :qid |XDXbpl.2063:13|
 :skolemid |73|
))))
 :qid |XDXbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_133792) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_133792| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_121062 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@20) i@@33)))
 :qid |XDXbpl.2069:13|
 :skolemid |75|
))))
 :qid |XDXbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_133792) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_121062 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |XDXbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_121062 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |XDXbpl.2082:17|
 :skolemid |78|
)))))
 :qid |XDXbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_134061) (v2@@8 T@Vec_134061) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@8 v2@@8)  (and (= (|l#Vec_134061| v1@@8) (|l#Vec_134061| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_160014 v1@@8 i@@36) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v1@@8) i@@36) (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v2@@8) i@@36)))
 :qid |XDXbpl.2244:13|
 :skolemid |80|
))))
 :qid |XDXbpl.2242:33|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_134061) ) (! (= (|$IsValid'vec'vec'u8'''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_134061| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_160014 v@@22 i@@37) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@22) i@@37)))
 :qid |XDXbpl.2250:13|
 :skolemid |82|
))))
 :qid |XDXbpl.2248:33|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_134061) (e@@8 T@Vec_23605) ) (! (let ((i@@38 (|$IndexOfVec'vec'u8''| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_160014 v@@23 i@@39)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@23) i@@39) e@@8))
 :qid |XDXbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_160014 v@@23 i@@38)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@23) j@@8) e@@8)))
 :qid |XDXbpl.2263:17|
 :skolemid |85|
)))))
 :qid |XDXbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_23605) (v2@@9 T@Vec_23605) ) (! (= (|$IsEqual'vec'address''| v1@@9 v2@@9)  (and (= (|l#Vec_23605| v1@@9) (|l#Vec_23605| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_14446 v1@@9 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v1@@9) i@@40) (|Select__T@[Int]Int_| (|v#Vec_23605| v2@@9) i@@40)))
 :qid |XDXbpl.2425:13|
 :skolemid |87|
))))
 :qid |XDXbpl.2423:33|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'address''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_23605) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_23605| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_14446 v@@24 i@@41) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_23605| v@@24) i@@41)))
 :qid |XDXbpl.2431:13|
 :skolemid |89|
))))
 :qid |XDXbpl.2429:33|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_23605) (e@@9 Int) ) (! (let ((i@@42 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_14446 v@@25 i@@43)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) i@@43) e@@9))
 :qid |XDXbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_14446 v@@25 i@@42)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) j@@9) e@@9)))
 :qid |XDXbpl.2444:17|
 :skolemid |92|
)))))
 :qid |XDXbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_23605) (v2@@10 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10)  (and (= (|l#Vec_23605| v1@@10) (|l#Vec_23605| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_14446 v1@@10 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v1@@10) i@@44) (|Select__T@[Int]Int_| (|v#Vec_23605| v2@@10) i@@44)))
 :qid |XDXbpl.2606:13|
 :skolemid |94|
))))
 :qid |XDXbpl.2604:28|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'u8''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_23605) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_23605| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_14446 v@@26 i@@45) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_23605| v@@26) i@@45)))
 :qid |XDXbpl.2612:13|
 :skolemid |96|
))))
 :qid |XDXbpl.2610:28|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_23605) (e@@10 Int) ) (! (let ((i@@46 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_14446 v@@27 i@@47)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) i@@47) e@@10))
 :qid |XDXbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_14446 v@@27 i@@46)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) j@@10) e@@10)))
 :qid |XDXbpl.2625:17|
 :skolemid |99|
)))))
 :qid |XDXbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_23605) (v2@@11 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@11 v2@@11) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11)))
 :qid |XDXbpl.2798:15|
 :skolemid |101|
 :pattern ( ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11))
)))
(assert (forall ((v1@@12 T@Vec_23605) (v2@@12 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12)))
 :qid |XDXbpl.2814:15|
 :skolemid |102|
 :pattern ( ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12))
)))
(assert (forall ((k1 T@Vec_23605) (k2 T@Vec_23605) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XDXbpl.2885:15|
 :skolemid |103|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_23605) (s2 T@Vec_23605) (k1@@0 T@Vec_23605) (k2@@0 T@Vec_23605) (m1 T@Vec_23605) (m2 T@Vec_23605) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XDXbpl.2888:15|
 :skolemid |104|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_133706| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_133706| stream) v@@28) 0)
 :qid |XDXbpl.159:13|
 :skolemid |4|
))))
 :qid |XDXbpl.2949:13|
 :skolemid |105|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XDXbpl.2990:80|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@13 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@13 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13)))
 :qid |XDXbpl.2996:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XDXbpl.3046:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14)))
 :qid |XDXbpl.3052:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XDXbpl.3102:80|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@15 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@15 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@15)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15)))
 :qid |XDXbpl.3108:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XDXbpl.3158:79|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_AdminTransactionEvent) (v2@@16 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16)))
 :qid |XDXbpl.3164:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XDXbpl.3214:76|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_CreateAccountEvent) (v2@@17 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17)))
 :qid |XDXbpl.3220:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XDXbpl.3270:78|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@18 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18)))
 :qid |XDXbpl.3276:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XDXbpl.3326:74|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_SentPaymentEvent) (v2@@19 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@19))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19)))
 :qid |XDXbpl.3332:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XDXbpl.3382:69|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@20 T@$1_DiemBlock_NewBlockEvent) (v2@@20 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@20) (|$round#$1_DiemBlock_NewBlockEvent| v2@@20)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@20) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@20))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@20) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@20) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20)))
 :qid |XDXbpl.3388:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XDXbpl.3438:70|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@21 T@$1_DiemConfig_NewEpochEvent) (v2@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21)))
 :qid |XDXbpl.3444:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XDXbpl.3494:60|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@22 T@$1_Diem_BurnEvent) (v2@@22 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@22) (|$amount#$1_Diem_BurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@22) (|$currency_code#$1_Diem_BurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@22) (|$preburn_address#$1_Diem_BurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22)))
 :qid |XDXbpl.3500:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XDXbpl.3550:66|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@23 T@$1_Diem_CancelBurnEvent) (v2@@23 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@23) (|$amount#$1_Diem_CancelBurnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@23) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@23) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23)))
 :qid |XDXbpl.3556:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XDXbpl.3606:60|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@24 T@$1_Diem_MintEvent) (v2@@24 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@24) (|$amount#$1_Diem_MintEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@24) (|$currency_code#$1_Diem_MintEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24)))
 :qid |XDXbpl.3612:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XDXbpl.3662:63|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@25 T@$1_Diem_PreburnEvent) (v2@@25 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@25) (|$amount#$1_Diem_PreburnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@25) (|$currency_code#$1_Diem_PreburnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@25) (|$preburn_address#$1_Diem_PreburnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25)))
 :qid |XDXbpl.3668:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XDXbpl.3718:79|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26)))
 :qid |XDXbpl.3724:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XDXbpl.3774:82|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@27 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27)))
 :qid |XDXbpl.3780:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XDXbpl.3830:88|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28)))
 :qid |XDXbpl.3836:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XDXbpl.3886:72|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@29 T@$1_VASPDomain_VASPDomainEvent) (v2@@29 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@29)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@29)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@29))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29)))
 :qid |XDXbpl.3892:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XDXbpl.3971:61|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |XDXbpl.4786:36|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |XDXbpl.4805:71|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |XDXbpl.4868:46|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |XDXbpl.4880:64|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |XDXbpl.4892:75|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |XDXbpl.4904:72|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |XDXbpl.4932:55|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |XDXbpl.4955:46|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |XDXbpl.4974:49|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |XDXbpl.5059:71|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |XDXbpl.5072:91|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |XDXbpl.5085:113|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |XDXbpl.5098:89|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |XDXbpl.5111:75|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |XDXbpl.5124:73|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |XDXbpl.5144:48|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |XDXbpl.5161:57|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |XDXbpl.5175:83|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |XDXbpl.5189:103|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |XDXbpl.5203:125|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |XDXbpl.5217:101|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |XDXbpl.5231:87|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |XDXbpl.5245:85|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |XDXbpl.5259:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |XDXbpl.5280:45|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |XDXbpl.5294:51|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |XDXbpl.5317:48|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |XDXbpl.5616:49|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |XDXbpl.5661:65|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |XDXbpl.6247:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |XDXbpl.6260:45|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |XDXbpl.6273:37|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |XDXbpl.6286:55|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |XDXbpl.6300:55|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |XDXbpl.6314:47|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |XDXbpl.6334:38|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |XDXbpl.6356:44|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |XDXbpl.6408:53|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |XDXbpl.6481:53|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |XDXbpl.6554:45|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |XDXbpl.6591:55|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |XDXbpl.6605:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |XDXbpl.6619:47|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |XDXbpl.6636:38|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |XDXbpl.6650:48|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |XDXbpl.6664:48|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |XDXbpl.6678:40|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |XDXbpl.6698:41|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@48)))
 :qid |XDXbpl.6714:53|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@49)))
 :qid |XDXbpl.6727:53|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@50)))
 :qid |XDXbpl.6740:45|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51))))
 :qid |XDXbpl.6756:60|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52))))
 :qid |XDXbpl.6773:60|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@53))))
 :qid |XDXbpl.6790:52|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53))
)))
(assert (forall ((s@@54 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54))))
 :qid |XDXbpl.6807:57|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55) true)
 :qid |XDXbpl.24010:68|
 :skolemid |845|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))))
 :qid |XDXbpl.24032:66|
 :skolemid |846|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))))
 :qid |XDXbpl.24058:66|
 :skolemid |847|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@58))))
 :qid |XDXbpl.24084:58|
 :skolemid |848|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |XDXbpl.24113:56|
 :skolemid |849|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |XDXbpl.24143:56|
 :skolemid |850|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@61))))
 :qid |XDXbpl.24173:48|
 :skolemid |851|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |XDXbpl.26234:31|
 :skolemid |957|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |XDXbpl.26584:31|
 :skolemid |958|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |XDXbpl.26603:35|
 :skolemid |959|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |XDXbpl.28559:45|
 :skolemid |1022|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |XDXbpl.28577:50|
 :skolemid |1023|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |XDXbpl.28593:52|
 :skolemid |1024|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |XDXbpl.28606:46|
 :skolemid |1025|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |XDXbpl.28629:38|
 :skolemid |1026|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |XDXbpl.28643:39|
 :skolemid |1027|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |XDXbpl.28670:65|
 :skolemid |1028|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@72))))
 :qid |XDXbpl.29038:60|
 :skolemid |1029|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73))))
 :qid |XDXbpl.29055:66|
 :skolemid |1030|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@74)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@74))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@74))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@74))))
 :qid |XDXbpl.29084:50|
 :skolemid |1031|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@75) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@75)))
 :qid |XDXbpl.29107:45|
 :skolemid |1032|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@76)) true))
 :qid |XDXbpl.29414:87|
 :skolemid |1033|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@77)))
 :qid |XDXbpl.29615:47|
 :skolemid |1034|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@78)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@78))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@78))))
 :qid |XDXbpl.29634:58|
 :skolemid |1035|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@79) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@79)))
 :qid |XDXbpl.29650:39|
 :skolemid |1036|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@80))))
 :qid |XDXbpl.29672:58|
 :skolemid |1037|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81))))
 :qid |XDXbpl.29689:58|
 :skolemid |1038|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82) true)
 :qid |XDXbpl.29704:51|
 :skolemid |1039|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82))
)))
(assert (forall ((s@@83 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83))))
 :qid |XDXbpl.29721:60|
 :skolemid |1040|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@84)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@84))))
 :qid |XDXbpl.30007:47|
 :skolemid |1041|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@85))))
 :qid |XDXbpl.30033:63|
 :skolemid |1042|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@86)))
 :qid |XDXbpl.30048:57|
 :skolemid |1043|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@87)))
 :qid |XDXbpl.30061:55|
 :skolemid |1044|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@88)))
 :qid |XDXbpl.30075:55|
 :skolemid |1045|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@89)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@89))))
 :qid |XDXbpl.30092:54|
 :skolemid |1046|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@90)))
 :qid |XDXbpl.30106:55|
 :skolemid |1047|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@91)))
 :qid |XDXbpl.30119:57|
 :skolemid |1048|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@92))))
 :qid |XDXbpl.30141:56|
 :skolemid |1049|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@93))))
 :qid |XDXbpl.30168:52|
 :skolemid |1050|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@94)))
 :qid |XDXbpl.30186:54|
 :skolemid |1051|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@95)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@95))))
 :qid |XDXbpl.31028:47|
 :skolemid |1052|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@96)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@96))))
 :qid |XDXbpl.31052:47|
 :skolemid |1053|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@97)))
 :qid |XDXbpl.31286:63|
 :skolemid |1054|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@98)))
 :qid |XDXbpl.31621:49|
 :skolemid |1055|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@99)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@99))))
 :qid |XDXbpl.31663:49|
 :skolemid |1056|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@100)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@100))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@100))))
 :qid |XDXbpl.31692:48|
 :skolemid |1057|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@101)))
 :qid |XDXbpl.31977:47|
 :skolemid |1058|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101))
)))
(assert (forall ((v@@29 T@Vec_135716) (i@@48 Int) ) (! (= (InRangeVec_119454 v@@29 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_135716| v@@29))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_119454 v@@29 i@@48))
)))
(assert (forall ((v@@30 T@Vec_133831) (i@@49 Int) ) (! (= (InRangeVec_119655 v@@30 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_133831| v@@30))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_119655 v@@30 i@@49))
)))
(assert (forall ((v@@31 T@Vec_133870) (i@@50 Int) ) (! (= (InRangeVec_119856 v@@31 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_133870| v@@31))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_119856 v@@31 i@@50))
)))
(assert (forall ((v@@32 T@Vec_134004) (i@@51 Int) ) (! (= (InRangeVec_120057 v@@32 i@@51)  (and (>= i@@51 0) (< i@@51 (|l#Vec_134004| v@@32))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_120057 v@@32 i@@51))
)))
(assert (forall ((v@@33 T@Vec_134349) (i@@52 Int) ) (! (= (InRangeVec_120258 v@@33 i@@52)  (and (>= i@@52 0) (< i@@52 (|l#Vec_134349| v@@33))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_120258 v@@33 i@@52))
)))
(assert (forall ((v@@34 T@Vec_134310) (i@@53 Int) ) (! (= (InRangeVec_120459 v@@34 i@@53)  (and (>= i@@53 0) (< i@@53 (|l#Vec_134310| v@@34))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_120459 v@@34 i@@53))
)))
(assert (forall ((v@@35 T@Vec_134271) (i@@54 Int) ) (! (= (InRangeVec_120660 v@@35 i@@54)  (and (>= i@@54 0) (< i@@54 (|l#Vec_134271| v@@35))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_120660 v@@35 i@@54))
)))
(assert (forall ((v@@36 T@Vec_134504) (i@@55 Int) ) (! (= (InRangeVec_120861 v@@36 i@@55)  (and (>= i@@55 0) (< i@@55 (|l#Vec_134504| v@@36))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_120861 v@@36 i@@55))
)))
(assert (forall ((v@@37 T@Vec_133792) (i@@56 Int) ) (! (= (InRangeVec_121062 v@@37 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_133792| v@@37))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_121062 v@@37 i@@56))
)))
(assert (forall ((v@@38 T@Vec_134061) (i@@57 Int) ) (! (= (InRangeVec_160014 v@@38 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_134061| v@@38))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160014 v@@38 i@@57))
)))
(assert (forall ((v@@39 T@Vec_23605) (i@@58 Int) ) (! (= (InRangeVec_14446 v@@39 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_23605| v@@39))))
 :qid |XDXbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14446 v@@39 i@@58))
)))
(assert (forall ((v@@40 T@Vec_23605) (e@@11 Int) ) (! (let ((i@@59 (IndexOfVec_23605 v@@40 e@@11)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_14446 v@@40 i@@60) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) i@@60) e@@11))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_14446 v@@40 i@@59) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) i@@59) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@59)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) j@@11) e@@11)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_23605 v@@40 e@@11))
)))
(assert (forall ((v@@41 T@Vec_133792) (e@@12 T@$1_ValidatorConfig_Config) ) (! (let ((i@@61 (IndexOfVec_133792 v@@41 e@@12)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_121062 v@@41 i@@62) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@41) i@@62) e@@12))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_121062 v@@41 i@@61) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@41) i@@61) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@61)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_133792| v@@41) j@@12) e@@12)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_133792 v@@41 e@@12))
)))
(assert (forall ((v@@42 T@Vec_133831) (e@@13 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@63 (IndexOfVec_133831 v@@42 e@@13)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_119655 v@@42 i@@64) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@42) i@@64) e@@13))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_119655 v@@42 i@@63) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@42) i@@63) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@63)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_133831| v@@42) j@@13) e@@13)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_133831 v@@42 e@@13))
)))
(assert (forall ((v@@43 T@Vec_133870) (e@@14 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@65 (IndexOfVec_133870 v@@43 e@@14)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_119856 v@@43 i@@66) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@43) i@@66) e@@14))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_119856 v@@43 i@@65) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@43) i@@65) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@65)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_133870| v@@43) j@@14) e@@14)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_133870 v@@43 e@@14))
)))
(assert (forall ((v@@44 T@Vec_134004) (e@@15 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@67 (IndexOfVec_134004 v@@44 e@@15)))
(ite  (not (exists ((i@@68 Int) ) (!  (and (InRangeVec_120057 v@@44 i@@68) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@44) i@@68) e@@15))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@67 (- 0 1))  (and (and (InRangeVec_120057 v@@44 i@@67) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@44) i@@67) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@67)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_134004| v@@44) j@@15) e@@15)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134004 v@@44 e@@15))
)))
(assert (forall ((v@@45 T@Vec_134061) (e@@16 T@Vec_23605) ) (! (let ((i@@69 (IndexOfVec_134061 v@@45 e@@16)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_160014 v@@45 i@@70) (= (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@45) i@@70) e@@16))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_160014 v@@45 i@@69) (= (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@45) i@@69) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@69)) (not (= (|Select__T@[Int]Vec_23605_| (|v#Vec_134061| v@@45) j@@16) e@@16)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134061 v@@45 e@@16))
)))
(assert (forall ((v@@46 T@Vec_134271) (e@@17 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@71 (IndexOfVec_134271 v@@46 e@@17)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_120660 v@@46 i@@72) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@46) i@@72) e@@17))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_120660 v@@46 i@@71) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@46) i@@71) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@71)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_134271| v@@46) j@@17) e@@17)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134271 v@@46 e@@17))
)))
(assert (forall ((v@@47 T@Vec_134310) (e@@18 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@73 (IndexOfVec_134310 v@@47 e@@18)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_120459 v@@47 i@@74) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@47) i@@74) e@@18))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_120459 v@@47 i@@73) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@47) i@@73) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@73)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_134310| v@@47) j@@18) e@@18)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134310 v@@47 e@@18))
)))
(assert (forall ((v@@48 T@Vec_134349) (e@@19 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@75 (IndexOfVec_134349 v@@48 e@@19)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_120258 v@@48 i@@76) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@48) i@@76) e@@19))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_120258 v@@48 i@@75) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@48) i@@75) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@75)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_134349| v@@48) j@@19) e@@19)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134349 v@@48 e@@19))
)))
(assert (forall ((v@@49 T@Vec_134504) (e@@20 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@77 (IndexOfVec_134504 v@@49 e@@20)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_120861 v@@49 i@@78) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@49) i@@78) e@@20))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_120861 v@@49 i@@77) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@49) i@@77) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@77)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_134504| v@@49) j@@20) e@@20)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_134504 v@@49 e@@20))
)))
(assert (forall ((v@@50 T@Vec_135716) (e@@21 |T@#0|) ) (! (let ((i@@79 (IndexOfVec_135716 v@@50 e@@21)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_119454 v@@50 i@@80) (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@50) i@@80) e@@21))
 :qid |XDXbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_119454 v@@50 i@@79) (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@50) i@@79) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@79)) (not (= (|Select__T@[Int]#0_| (|v#Vec_135716| v@@50) j@@21) e@@21)))
 :qid |XDXbpl.117:17|
 :skolemid |1|
)))))
 :qid |XDXbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_135716 v@@50 e@@21))
)))
(assert (forall ((|l#0| Bool) (i@@81 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81) |l#0|)
 :qid |XDXbpl.275:54|
 :skolemid |1149|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_133706|) (|l#1| |T@[$1_Event_EventHandle]Multiset_133706|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| |l#1| handle@@0))))
(Multiset_133706 (|lambda#36| (|v#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| |l#0@@0| handle@@0)) (|v#Multiset_133706| (|Select__T@[$1_Event_EventHandle]Multiset_133706_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XDXbpl.2959:13|
 :skolemid |1150|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_133706_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@82 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82) (ite  (and (>= i@@82 |l#0@@1|) (< i@@82 |l#1@@0|)) (ite (< i@@82 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@82) (|Select__T@[Int]#0_| |l#4| (- i@@82 |l#5|))) |l#6|))
 :qid |XDXbpl.73:19|
 :skolemid |1151|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@83 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83) (ite  (and (<= |l#0@@2| i@@83) (< i@@83 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@83) |l#4@@0|)) |l#5@@0|))
 :qid |XDXbpl.82:30|
 :skolemid |1152|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@22 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22) (ite  (and (>= j@@22 |l#0@@3|) (< j@@22 |l#1@@2|)) (ite (< j@@22 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@22) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@22 |l#5@@1|))) |l#6@@0|))
 :qid |XDXbpl.63:20|
 :skolemid |1153|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@84 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84) (ite  (and (>= i@@84 |l#0@@4|) (< i@@84 |l#1@@3|)) (ite (< i@@84 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@84) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@84 |l#5@@2|))) |l#6@@1|))
 :qid |XDXbpl.73:19|
 :skolemid |1154|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@85 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85) (ite  (and (<= |l#0@@5| i@@85) (< i@@85 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@85) |l#4@@3|)) |l#5@@3|))
 :qid |XDXbpl.82:30|
 :skolemid |1155|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23) (ite  (and (>= j@@23 |l#0@@6|) (< j@@23 |l#1@@5|)) (ite (< j@@23 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@23) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@23 |l#5@@4|))) |l#6@@2|))
 :qid |XDXbpl.63:20|
 :skolemid |1156|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@86 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86) (ite  (and (>= i@@86 |l#0@@7|) (< i@@86 |l#1@@6|)) (ite (< i@@86 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@86) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@86 |l#5@@5|))) |l#6@@3|))
 :qid |XDXbpl.73:19|
 :skolemid |1157|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@87 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87) (ite  (and (<= |l#0@@8| i@@87) (< i@@87 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@87) |l#4@@6|)) |l#5@@6|))
 :qid |XDXbpl.82:30|
 :skolemid |1158|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24) (ite  (and (>= j@@24 |l#0@@9|) (< j@@24 |l#1@@8|)) (ite (< j@@24 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@24) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@24 |l#5@@7|))) |l#6@@4|))
 :qid |XDXbpl.63:20|
 :skolemid |1159|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@88 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88) (ite  (and (>= i@@88 |l#0@@10|) (< i@@88 |l#1@@9|)) (ite (< i@@88 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@88) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@88 |l#5@@8|))) |l#6@@5|))
 :qid |XDXbpl.73:19|
 :skolemid |1160|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@89 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89) (ite  (and (<= |l#0@@11| i@@89) (< i@@89 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@89) |l#4@@9|)) |l#5@@9|))
 :qid |XDXbpl.82:30|
 :skolemid |1161|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@25 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25) (ite  (and (>= j@@25 |l#0@@12|) (< j@@25 |l#1@@11|)) (ite (< j@@25 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@25) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@25 |l#5@@10|))) |l#6@@6|))
 :qid |XDXbpl.63:20|
 :skolemid |1162|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@90 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90) (ite  (and (>= i@@90 |l#0@@13|) (< i@@90 |l#1@@12|)) (ite (< i@@90 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@90) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@90 |l#5@@11|))) |l#6@@7|))
 :qid |XDXbpl.73:19|
 :skolemid |1163|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@91 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91) (ite  (and (<= |l#0@@14| i@@91) (< i@@91 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@91) |l#4@@12|)) |l#5@@12|))
 :qid |XDXbpl.82:30|
 :skolemid |1164|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@26 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26) (ite  (and (>= j@@26 |l#0@@15|) (< j@@26 |l#1@@14|)) (ite (< j@@26 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@26) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@26 |l#5@@13|))) |l#6@@8|))
 :qid |XDXbpl.63:20|
 :skolemid |1165|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@92 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92) (ite  (and (>= i@@92 |l#0@@16|) (< i@@92 |l#1@@15|)) (ite (< i@@92 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@92) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@92 |l#5@@14|))) |l#6@@9|))
 :qid |XDXbpl.73:19|
 :skolemid |1166|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@93 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93) (ite  (and (<= |l#0@@17| i@@93) (< i@@93 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@93) |l#4@@15|)) |l#5@@15|))
 :qid |XDXbpl.82:30|
 :skolemid |1167|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27) (ite  (and (>= j@@27 |l#0@@18|) (< j@@27 |l#1@@17|)) (ite (< j@@27 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@27) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@27 |l#5@@16|))) |l#6@@10|))
 :qid |XDXbpl.63:20|
 :skolemid |1168|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@94 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94) (ite  (and (>= i@@94 |l#0@@19|) (< i@@94 |l#1@@18|)) (ite (< i@@94 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@94) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@94 |l#5@@17|))) |l#6@@11|))
 :qid |XDXbpl.73:19|
 :skolemid |1169|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@95 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95) (ite  (and (<= |l#0@@20| i@@95) (< i@@95 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@95) |l#4@@18|)) |l#5@@18|))
 :qid |XDXbpl.82:30|
 :skolemid |1170|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28) (ite  (and (>= j@@28 |l#0@@21|) (< j@@28 |l#1@@20|)) (ite (< j@@28 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@28) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@28 |l#5@@19|))) |l#6@@12|))
 :qid |XDXbpl.63:20|
 :skolemid |1171|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@96 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96) (ite  (and (>= i@@96 |l#0@@22|) (< i@@96 |l#1@@21|)) (ite (< i@@96 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@96) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@96 |l#5@@20|))) |l#6@@13|))
 :qid |XDXbpl.73:19|
 :skolemid |1172|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@97 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97) (ite  (and (<= |l#0@@23| i@@97) (< i@@97 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@97) |l#4@@21|)) |l#5@@21|))
 :qid |XDXbpl.82:30|
 :skolemid |1173|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29) (ite  (and (>= j@@29 |l#0@@24|) (< j@@29 |l#1@@23|)) (ite (< j@@29 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@29) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@29 |l#5@@22|))) |l#6@@14|))
 :qid |XDXbpl.63:20|
 :skolemid |1174|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98) (ite  (and (>= i@@98 |l#0@@25|) (< i@@98 |l#1@@24|)) (ite (< i@@98 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@98) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@98 |l#5@@23|))) |l#6@@15|))
 :qid |XDXbpl.73:19|
 :skolemid |1175|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99) (ite  (and (<= |l#0@@26| i@@99) (< i@@99 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@99) |l#4@@24|)) |l#5@@24|))
 :qid |XDXbpl.82:30|
 :skolemid |1176|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30) (ite  (and (>= j@@30 |l#0@@27|) (< j@@30 |l#1@@26|)) (ite (< j@@30 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@30) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@30 |l#5@@25|))) |l#6@@16|))
 :qid |XDXbpl.63:20|
 :skolemid |1177|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]Vec_23605|) (|l#4@@26| |T@[Int]Vec_23605|) (|l#5@@26| Int) (|l#6@@17| T@Vec_23605) (i@@100 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100) (ite  (and (>= i@@100 |l#0@@28|) (< i@@100 |l#1@@27|)) (ite (< i@@100 |l#2@@26|) (|Select__T@[Int]Vec_23605_| |l#3@@26| i@@100) (|Select__T@[Int]Vec_23605_| |l#4@@26| (- i@@100 |l#5@@26|))) |l#6@@17|))
 :qid |XDXbpl.73:19|
 :skolemid |1178|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]Vec_23605|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@Vec_23605) (i@@101 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101) (ite  (and (<= |l#0@@29| i@@101) (< i@@101 |l#1@@28|)) (|Select__T@[Int]Vec_23605_| |l#2@@27| (- (- |l#3@@27| i@@101) |l#4@@27|)) |l#5@@27|))
 :qid |XDXbpl.82:30|
 :skolemid |1179|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]Vec_23605|) (|l#4@@28| |T@[Int]Vec_23605|) (|l#5@@28| Int) (|l#6@@18| T@Vec_23605) (j@@31 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31) (ite  (and (>= j@@31 |l#0@@30|) (< j@@31 |l#1@@29|)) (ite (< j@@31 |l#2@@28|) (|Select__T@[Int]Vec_23605_| |l#3@@28| j@@31) (|Select__T@[Int]Vec_23605_| |l#4@@28| (+ j@@31 |l#5@@28|))) |l#6@@18|))
 :qid |XDXbpl.63:20|
 :skolemid |1180|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]Int|) (|l#4@@29| |T@[Int]Int|) (|l#5@@29| Int) (|l#6@@19| Int) (i@@102 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102) (ite  (and (>= i@@102 |l#0@@31|) (< i@@102 |l#1@@30|)) (ite (< i@@102 |l#2@@29|) (|Select__T@[Int]Int_| |l#3@@29| i@@102) (|Select__T@[Int]Int_| |l#4@@29| (- i@@102 |l#5@@29|))) |l#6@@19|))
 :qid |XDXbpl.73:19|
 :skolemid |1181|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]Int|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| Int) (i@@103 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103) (ite  (and (<= |l#0@@32| i@@103) (< i@@103 |l#1@@31|)) (|Select__T@[Int]Int_| |l#2@@30| (- (- |l#3@@30| i@@103) |l#4@@30|)) |l#5@@30|))
 :qid |XDXbpl.82:30|
 :skolemid |1182|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]Int|) (|l#4@@31| |T@[Int]Int|) (|l#5@@31| Int) (|l#6@@20| Int) (j@@32 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32) (ite  (and (>= j@@32 |l#0@@33|) (< j@@32 |l#1@@32|)) (ite (< j@@32 |l#2@@31|) (|Select__T@[Int]Int_| |l#3@@31| j@@32) (|Select__T@[Int]Int_| |l#4@@31| (+ j@@32 |l#5@@31|))) |l#6@@20|))
 :qid |XDXbpl.63:20|
 :skolemid |1183|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32))
)))
(assert (forall ((|l#0@@34| |T@[$EventRep]Int|) (|l#1@@33| |T@[$EventRep]Int|) (v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51) (- (|Select__T@[$EventRep]Int_| |l#0@@34| v@@51) (|Select__T@[$EventRep]Int_| |l#1@@33| v@@51)))
 :qid |XDXbpl.154:29|
 :skolemid |1184|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51))
)))
; Valid

