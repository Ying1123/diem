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
(declare-datatypes ((T@$Memory_456329 0)) ((($Memory_456329 (|domain#$Memory_456329| |T@[Int]Bool|) (|contents#$Memory_456329| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_418331 0)) (((Vec_418331 (|v#Vec_418331| |T@[Int]#0|) (|l#Vec_418331| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_1071867 0)) ((($Memory_1071867 (|domain#$Memory_1071867| |T@[Int]Bool|) (|contents#$Memory_1071867| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_465282 0)) ((($Memory_465282 (|domain#$Memory_465282| |T@[Int]Bool|) (|contents#$Memory_465282| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_590069 0)) ((($Memory_590069 (|domain#$Memory_590069| |T@[Int]Bool|) (|contents#$Memory_590069| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_590447 0)) ((($Memory_590447 (|domain#$Memory_590447| |T@[Int]Bool|) (|contents#$Memory_590447| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_589759 0)) ((($Memory_589759 (|domain#$Memory_589759| |T@[Int]Bool|) (|contents#$Memory_589759| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_469037 0)) ((($Memory_469037 (|domain#$Memory_469037| |T@[Int]Bool|) (|contents#$Memory_469037| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_HaltAllTransactions 0)) ((($1_DiemTransactionPublishingOption_HaltAllTransactions (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| 0)
(declare-datatypes ((T@$Memory_562714 0)) ((($Memory_562714 (|domain#$Memory_562714| |T@[Int]Bool|) (|contents#$Memory_562714| |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_553588 0)) ((($Memory_553588 (|domain#$Memory_553588| |T@[Int]Bool|) (|contents#$Memory_553588| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_469420 0)) ((($Memory_469420 (|domain#$Memory_469420| |T@[Int]Bool|) (|contents#$Memory_469420| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_469520 0)) ((($Memory_469520 (|domain#$Memory_469520| |T@[Int]Bool|) (|contents#$Memory_469520| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_468805 0)) ((($Memory_468805 (|domain#$Memory_468805| |T@[Int]Bool|) (|contents#$Memory_468805| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_442547 0)) (((Vec_442547 (|v#Vec_442547| |T@[Int]$1_XDX_XDX|) (|l#Vec_442547| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_445227 0)) (((Vec_445227 (|v#Vec_445227| |T@[Int]$1_XUS_XUS|) (|l#Vec_445227| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_525805 0)) ((($Memory_525805 (|domain#$Memory_525805| |T@[Int]Bool|) (|contents#$Memory_525805| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_525741 0)) ((($Memory_525741 (|domain#$Memory_525741| |T@[Int]Bool|) (|contents#$Memory_525741| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_525677 0)) ((($Memory_525677 (|domain#$Memory_525677| |T@[Int]Bool|) (|contents#$Memory_525677| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_526785 0)) ((($Memory_526785 (|domain#$Memory_526785| |T@[Int]Bool|) (|contents#$Memory_526785| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_526329 0)) ((($Memory_526329 (|domain#$Memory_526329| |T@[Int]Bool|) (|contents#$Memory_526329| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_525873 0)) ((($Memory_525873 (|domain#$Memory_525873| |T@[Int]Bool|) (|contents#$Memory_525873| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_465211 0)) ((($Memory_465211 (|domain#$Memory_465211| |T@[Int]Bool|) (|contents#$Memory_465211| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_508479 0)) ((($Memory_508479 (|domain#$Memory_508479| |T@[Int]Bool|) (|contents#$Memory_508479| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_508392 0)) ((($Memory_508392 (|domain#$Memory_508392| |T@[Int]Bool|) (|contents#$Memory_508392| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_508305 0)) ((($Memory_508305 (|domain#$Memory_508305| |T@[Int]Bool|) (|contents#$Memory_508305| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_502894 0)) ((($Memory_502894 (|domain#$Memory_502894| |T@[Int]Bool|) (|contents#$Memory_502894| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_502807 0)) ((($Memory_502807 (|domain#$Memory_502807| |T@[Int]Bool|) (|contents#$Memory_502807| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_502720 0)) ((($Memory_502720 (|domain#$Memory_502720| |T@[Int]Bool|) (|contents#$Memory_502720| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_596570 0)) ((($Memory_596570 (|domain#$Memory_596570| |T@[Int]Bool|) (|contents#$Memory_596570| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_508808 0)) ((($Memory_508808 (|domain#$Memory_508808| |T@[Int]Bool|) (|contents#$Memory_508808| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_548952 0)) ((($Memory_548952 (|domain#$Memory_548952| |T@[Int]Bool|) (|contents#$Memory_548952| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_468952 0)) ((($Memory_468952 (|domain#$Memory_468952| |T@[Int]Bool|) (|contents#$Memory_468952| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_508727 0)) ((($Memory_508727 (|domain#$Memory_508727| |T@[Int]Bool|) (|contents#$Memory_508727| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_548888 0)) ((($Memory_548888 (|domain#$Memory_548888| |T@[Int]Bool|) (|contents#$Memory_548888| |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_531513 0)) ((($Memory_531513 (|domain#$Memory_531513| |T@[Int]Bool|) (|contents#$Memory_531513| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_468892 0)) ((($Memory_468892 (|domain#$Memory_468892| |T@[Int]Bool|) (|contents#$Memory_468892| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_508646 0)) ((($Memory_508646 (|domain#$Memory_508646| |T@[Int]Bool|) (|contents#$Memory_508646| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_548824 0)) ((($Memory_548824 (|domain#$Memory_548824| |T@[Int]Bool|) (|contents#$Memory_548824| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_497679 0)) ((($Memory_497679 (|domain#$Memory_497679| |T@[Int]Bool|) (|contents#$Memory_497679| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_497592 0)) ((($Memory_497592 (|domain#$Memory_497592| |T@[Int]Bool|) (|contents#$Memory_497592| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_497505 0)) ((($Memory_497505 (|domain#$Memory_497505| |T@[Int]Bool|) (|contents#$Memory_497505| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_497418 0)) ((($Memory_497418 (|domain#$Memory_497418| |T@[Int]Bool|) (|contents#$Memory_497418| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_497331 0)) ((($Memory_497331 (|domain#$Memory_497331| |T@[Int]Bool|) (|contents#$Memory_497331| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_497934 0)) ((($Memory_497934 (|domain#$Memory_497934| |T@[Int]Bool|) (|contents#$Memory_497934| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_496082 0)) ((($Memory_496082 (|domain#$Memory_496082| |T@[Int]Bool|) (|contents#$Memory_496082| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_496194 0)) ((($Memory_496194 (|domain#$Memory_496194| |T@[Int]Bool|) (|contents#$Memory_496194| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_496001 0)) ((($Memory_496001 (|domain#$Memory_496001| |T@[Int]Bool|) (|contents#$Memory_496001| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_495622 0)) ((($Memory_495622 (|domain#$Memory_495622| |T@[Int]Bool|) (|contents#$Memory_495622| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_416449 0)) (((Vec_416449 (|v#Vec_416449| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_416449| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_416449) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_416410 0)) (((Vec_416410 (|v#Vec_416410| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_416410| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_416410) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_37831 0)) (((Vec_37831 (|v#Vec_37831| |T@[Int]Int|) (|l#Vec_37831| Int) ) ) ))
(declare-sort |T@[Int]Vec_37831| 0)
(declare-datatypes ((T@Vec_416632 0)) (((Vec_416632 (|v#Vec_416632| |T@[Int]Vec_37831|) (|l#Vec_416632| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_416632) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_495839 0)) ((($Memory_495839 (|domain#$Memory_495839| |T@[Int]Bool|) (|contents#$Memory_495839| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_416632) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_495758 0)) ((($Memory_495758 (|domain#$Memory_495758| |T@[Int]Bool|) (|contents#$Memory_495758| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_37831) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_37831) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_495920 0)) ((($Memory_495920 (|domain#$Memory_495920| |T@[Int]Bool|) (|contents#$Memory_495920| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_37831) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_468705 0)) ((($Memory_468705 (|domain#$Memory_468705| |T@[Int]Bool|) (|contents#$Memory_468705| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_565768 0)) ((($Memory_565768 (|domain#$Memory_565768| |T@[Int]Bool|) (|contents#$Memory_565768| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_565545 0)) ((($Memory_565545 (|domain#$Memory_565545| |T@[Int]Bool|) (|contents#$Memory_565545| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_565322 0)) ((($Memory_565322 (|domain#$Memory_565322| |T@[Int]Bool|) (|contents#$Memory_565322| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_37831) (|$base_url#$1_DualAttestation_Credential| T@Vec_37831) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_37831) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_469122 0)) ((($Memory_469122 (|domain#$Memory_469122| |T@[Int]Bool|) (|contents#$Memory_469122| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_417075 0)) (((Vec_417075 (|v#Vec_417075| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_417075| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_417075) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_532840 0)) ((($Memory_532840 (|domain#$Memory_532840| |T@[Int]Bool|) (|contents#$Memory_532840| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_416920 0)) (((Vec_416920 (|v#Vec_416920| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_416920| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_416920) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_509292 0)) ((($Memory_509292 (|domain#$Memory_509292| |T@[Int]Bool|) (|contents#$Memory_509292| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_416881 0)) (((Vec_416881 (|v#Vec_416881| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_416881| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_416881) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_509175 0)) ((($Memory_509175 (|domain#$Memory_509175| |T@[Int]Bool|) (|contents#$Memory_509175| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_416842 0)) (((Vec_416842 (|v#Vec_416842| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_416842| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_416842) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_509058 0)) ((($Memory_509058 (|domain#$Memory_509058| |T@[Int]Bool|) (|contents#$Memory_509058| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_37831) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_502017 0)) ((($Memory_502017 (|domain#$Memory_502017| |T@[Int]Bool|) (|contents#$Memory_502017| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_37831) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_501831 0)) ((($Memory_501831 (|domain#$Memory_501831| |T@[Int]Bool|) (|contents#$Memory_501831| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_37831) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_501767 0)) ((($Memory_501767 (|domain#$Memory_501767| |T@[Int]Bool|) (|contents#$Memory_501767| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_37831) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_37831) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_416371 0)) (((Vec_416371 (|v#Vec_416371| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_416371| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_416371) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_416575 0)) (((Vec_416575 (|v#Vec_416575| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_416575| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_416575) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_495677 0)) ((($Memory_495677 (|domain#$Memory_495677| |T@[Int]Bool|) (|contents#$Memory_495677| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_37831) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_469220 0)) ((($Memory_469220 (|domain#$Memory_469220| |T@[Int]Bool|) (|contents#$Memory_469220| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_469320 0)) ((($Memory_469320 (|domain#$Memory_469320| |T@[Int]Bool|) (|contents#$Memory_469320| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_465676 0)) ((($Memory_465676 (|domain#$Memory_465676| |T@[Int]Bool|) (|contents#$Memory_465676| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_463734 0)) ((($Memory_463734 (|domain#$Memory_463734| |T@[Int]Bool|) (|contents#$Memory_463734| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_37831) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_37831) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_37831) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_37831) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_37831) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_37831) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_37831) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_37831) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_37831) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_37831) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_37831) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_37831) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_37831) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_416285 0)) (((Multiset_416285 (|v#Multiset_416285| |T@[$EventRep]Int|) (|l#Multiset_416285| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_416285| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_416285|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_1063555 0)) ((($Mutation_1063555 (|l#$Mutation_1063555| T@$Location) (|p#$Mutation_1063555| T@Vec_37831) (|v#$Mutation_1063555| T@$1_DiemAccount_DiemWriteSetManager) ) ) ))
(declare-datatypes ((T@$Mutation_872575 0)) ((($Mutation_872575 (|l#$Mutation_872575| T@$Location) (|p#$Mutation_872575| T@Vec_37831) (|v#$Mutation_872575| T@$1_DiemAccount_AccountOperationsCapability) ) ) ))
(declare-datatypes ((T@$Mutation_868853 0)) ((($Mutation_868853 (|l#$Mutation_868853| T@$Location) (|p#$Mutation_868853| T@Vec_37831) (|v#$Mutation_868853| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_865882 0)) ((($Mutation_865882 (|l#$Mutation_865882| T@$Location) (|p#$Mutation_865882| T@Vec_37831) (|v#$Mutation_865882| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_689862 0)) ((($Mutation_689862 (|l#$Mutation_689862| T@$Location) (|p#$Mutation_689862| T@Vec_37831) (|v#$Mutation_689862| |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_678716 0)) ((($Mutation_678716 (|l#$Mutation_678716| T@$Location) (|p#$Mutation_678716| T@Vec_37831) (|v#$Mutation_678716| |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_667554 0)) ((($Mutation_667554 (|l#$Mutation_667554| T@$Location) (|p#$Mutation_667554| T@Vec_37831) (|v#$Mutation_667554| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_667508 0)) ((($Mutation_667508 (|l#$Mutation_667508| T@$Location) (|p#$Mutation_667508| T@Vec_37831) (|v#$Mutation_667508| |T@$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_592079 0)) ((($Mutation_592079 (|l#$Mutation_592079| T@$Location) (|p#$Mutation_592079| T@Vec_37831) (|v#$Mutation_592079| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_592036 0)) ((($Mutation_592036 (|l#$Mutation_592036| T@$Location) (|p#$Mutation_592036| T@Vec_37831) (|v#$Mutation_592036| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_579987 0)) ((($Mutation_579987 (|l#$Mutation_579987| T@$Location) (|p#$Mutation_579987| T@Vec_37831) (|v#$Mutation_579987| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_558933 0)) ((($Mutation_558933 (|l#$Mutation_558933| T@$Location) (|p#$Mutation_558933| T@Vec_37831) (|v#$Mutation_558933| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_552427 0)) ((($Mutation_552427 (|l#$Mutation_552427| T@$Location) (|p#$Mutation_552427| T@Vec_37831) (|v#$Mutation_552427| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_552381 0)) ((($Mutation_552381 (|l#$Mutation_552381| T@$Location) (|p#$Mutation_552381| T@Vec_37831) (|v#$Mutation_552381| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_551443 0)) ((($Mutation_551443 (|l#$Mutation_551443| T@$Location) (|p#$Mutation_551443| T@Vec_37831) (|v#$Mutation_551443| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_551397 0)) ((($Mutation_551397 (|l#$Mutation_551397| T@$Location) (|p#$Mutation_551397| T@Vec_37831) (|v#$Mutation_551397| |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_550513 0)) ((($Mutation_550513 (|l#$Mutation_550513| T@$Location) (|p#$Mutation_550513| T@Vec_37831) (|v#$Mutation_550513| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_550467 0)) ((($Mutation_550467 (|l#$Mutation_550467| T@$Location) (|p#$Mutation_550467| T@Vec_37831) (|v#$Mutation_550467| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_542522 0)) ((($Mutation_542522 (|l#$Mutation_542522| T@$Location) (|p#$Mutation_542522| T@Vec_37831) (|v#$Mutation_542522| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_533326 0)) ((($Mutation_533326 (|l#$Mutation_533326| T@$Location) (|p#$Mutation_533326| T@Vec_37831) (|v#$Mutation_533326| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_533261 0)) ((($Mutation_533261 (|l#$Mutation_533261| T@$Location) (|p#$Mutation_533261| T@Vec_37831) (|v#$Mutation_533261| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_65773 0)) ((($Mutation_65773 (|l#$Mutation_65773| T@$Location) (|p#$Mutation_65773| T@Vec_37831) (|v#$Mutation_65773| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_515714 0)) ((($Mutation_515714 (|l#$Mutation_515714| T@$Location) (|p#$Mutation_515714| T@Vec_37831) (|v#$Mutation_515714| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_513949 0)) ((($Mutation_513949 (|l#$Mutation_513949| T@$Location) (|p#$Mutation_513949| T@Vec_37831) (|v#$Mutation_513949| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_512184 0)) ((($Mutation_512184 (|l#$Mutation_512184| T@$Location) (|p#$Mutation_512184| T@Vec_37831) (|v#$Mutation_512184| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_500469 0)) ((($Mutation_500469 (|l#$Mutation_500469| T@$Location) (|p#$Mutation_500469| T@Vec_37831) (|v#$Mutation_500469| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_491893 0)) ((($Mutation_491893 (|l#$Mutation_491893| T@$Location) (|p#$Mutation_491893| T@Vec_37831) (|v#$Mutation_491893| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_490338 0)) ((($Mutation_490338 (|l#$Mutation_490338| T@$Location) (|p#$Mutation_490338| T@Vec_37831) (|v#$Mutation_490338| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_490297 0)) ((($Mutation_490297 (|l#$Mutation_490297| T@$Location) (|p#$Mutation_490297| T@Vec_37831) (|v#$Mutation_490297| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_464253 0)) ((($Mutation_464253 (|l#$Mutation_464253| T@$Location) (|p#$Mutation_464253| T@Vec_37831) (|v#$Mutation_464253| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_456960 0)) ((($Mutation_456960 (|l#$Mutation_456960| T@$Location) (|p#$Mutation_456960| T@Vec_37831) (|v#$Mutation_456960| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_37831) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_449654 0)) ((($Mutation_449654 (|l#$Mutation_449654| T@$Location) (|p#$Mutation_449654| T@Vec_37831) (|v#$Mutation_449654| T@Vec_37831) ) ) ))
(declare-datatypes ((T@$Mutation_448566 0)) ((($Mutation_448566 (|l#$Mutation_448566| T@$Location) (|p#$Mutation_448566| T@Vec_37831) (|v#$Mutation_448566| T@Vec_416632) ) ) ))
(declare-datatypes ((T@$Mutation_446857 0)) ((($Mutation_446857 (|l#$Mutation_446857| T@$Location) (|p#$Mutation_446857| T@Vec_37831) (|v#$Mutation_446857| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_445870 0)) ((($Mutation_445870 (|l#$Mutation_445870| T@$Location) (|p#$Mutation_445870| T@Vec_37831) (|v#$Mutation_445870| T@Vec_445227) ) ) ))
(declare-datatypes ((T@$Mutation_444177 0)) ((($Mutation_444177 (|l#$Mutation_444177| T@$Location) (|p#$Mutation_444177| T@Vec_37831) (|v#$Mutation_444177| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_443190 0)) ((($Mutation_443190 (|l#$Mutation_443190| T@$Location) (|p#$Mutation_443190| T@Vec_37831) (|v#$Mutation_443190| T@Vec_442547) ) ) ))
(declare-datatypes ((T@$Mutation_441497 0)) ((($Mutation_441497 (|l#$Mutation_441497| T@$Location) (|p#$Mutation_441497| T@Vec_37831) (|v#$Mutation_441497| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_440510 0)) ((($Mutation_440510 (|l#$Mutation_440510| T@$Location) (|p#$Mutation_440510| T@Vec_37831) (|v#$Mutation_440510| T@Vec_416371) ) ) ))
(declare-datatypes ((T@$Mutation_438855 0)) ((($Mutation_438855 (|l#$Mutation_438855| T@$Location) (|p#$Mutation_438855| T@Vec_37831) (|v#$Mutation_438855| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_437868 0)) ((($Mutation_437868 (|l#$Mutation_437868| T@$Location) (|p#$Mutation_437868| T@Vec_37831) (|v#$Mutation_437868| T@Vec_417075) ) ) ))
(declare-datatypes ((T@$Mutation_436190 0)) ((($Mutation_436190 (|l#$Mutation_436190| T@$Location) (|p#$Mutation_436190| T@Vec_37831) (|v#$Mutation_436190| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_435203 0)) ((($Mutation_435203 (|l#$Mutation_435203| T@$Location) (|p#$Mutation_435203| T@Vec_37831) (|v#$Mutation_435203| T@Vec_416842) ) ) ))
(declare-datatypes ((T@$Mutation_433494 0)) ((($Mutation_433494 (|l#$Mutation_433494| T@$Location) (|p#$Mutation_433494| T@Vec_37831) (|v#$Mutation_433494| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_432507 0)) ((($Mutation_432507 (|l#$Mutation_432507| T@$Location) (|p#$Mutation_432507| T@Vec_37831) (|v#$Mutation_432507| T@Vec_416881) ) ) ))
(declare-datatypes ((T@$Mutation_430798 0)) ((($Mutation_430798 (|l#$Mutation_430798| T@$Location) (|p#$Mutation_430798| T@Vec_37831) (|v#$Mutation_430798| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_429811 0)) ((($Mutation_429811 (|l#$Mutation_429811| T@$Location) (|p#$Mutation_429811| T@Vec_37831) (|v#$Mutation_429811| T@Vec_416920) ) ) ))
(declare-datatypes ((T@$Mutation_428102 0)) ((($Mutation_428102 (|l#$Mutation_428102| T@$Location) (|p#$Mutation_428102| T@Vec_37831) (|v#$Mutation_428102| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_427115 0)) ((($Mutation_427115 (|l#$Mutation_427115| T@$Location) (|p#$Mutation_427115| T@Vec_37831) (|v#$Mutation_427115| T@Vec_416575) ) ) ))
(declare-datatypes ((T@$Mutation_425315 0)) ((($Mutation_425315 (|l#$Mutation_425315| T@$Location) (|p#$Mutation_425315| T@Vec_37831) (|v#$Mutation_425315| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_424328 0)) ((($Mutation_424328 (|l#$Mutation_424328| T@$Location) (|p#$Mutation_424328| T@Vec_37831) (|v#$Mutation_424328| T@Vec_416449) ) ) ))
(declare-datatypes ((T@$Mutation_422663 0)) ((($Mutation_422663 (|l#$Mutation_422663| T@$Location) (|p#$Mutation_422663| T@Vec_37831) (|v#$Mutation_422663| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_421676 0)) ((($Mutation_421676 (|l#$Mutation_421676| T@$Location) (|p#$Mutation_421676| T@Vec_37831) (|v#$Mutation_421676| T@Vec_416410) ) ) ))
(declare-datatypes ((T@$Mutation_419963 0)) ((($Mutation_419963 (|l#$Mutation_419963| T@$Location) (|p#$Mutation_419963| T@Vec_37831) (|v#$Mutation_419963| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_418976 0)) ((($Mutation_418976 (|l#$Mutation_418976| T@$Location) (|p#$Mutation_418976| T@Vec_37831) (|v#$Mutation_418976| T@Vec_418331) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_418331 T@Vec_418331) Bool)
(declare-fun InRangeVec_375820 (T@Vec_418331 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_418331) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_418331 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_416410 T@Vec_416410) Bool)
(declare-fun InRangeVec_376021 (T@Vec_416410 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_416410) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_416410 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_416449 T@Vec_416449) Bool)
(declare-fun InRangeVec_376222 (T@Vec_416449 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_416449) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_416449 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_416575 T@Vec_416575) Bool)
(declare-fun InRangeVec_376423 (T@Vec_416575 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_37831 T@Vec_37831) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_416575) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_416575 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_416920 T@Vec_416920) Bool)
(declare-fun InRangeVec_376624 (T@Vec_416920 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_416920) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_416920 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_416881 T@Vec_416881) Bool)
(declare-fun InRangeVec_376825 (T@Vec_416881 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_416881) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_416881 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_416842 T@Vec_416842) Bool)
(declare-fun InRangeVec_377026 (T@Vec_416842 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_416842) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_416842 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_417075 T@Vec_417075) Bool)
(declare-fun InRangeVec_377227 (T@Vec_417075 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_417075) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_417075 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_416371 T@Vec_416371) Bool)
(declare-fun InRangeVec_377428 (T@Vec_416371 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_416371) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_416371 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_442547 T@Vec_442547) Bool)
(declare-fun InRangeVec_377629 (T@Vec_442547 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_442547) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_442547 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_445227 T@Vec_445227) Bool)
(declare-fun InRangeVec_377830 (T@Vec_445227 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_445227) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_445227 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_416632 T@Vec_416632) Bool)
(declare-fun InRangeVec_447989 (T@Vec_416632 Int) Bool)
(declare-fun |Select__T@[Int]Vec_37831_| (|T@[Int]Vec_37831| Int) T@Vec_37831)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_416632) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_37831) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_416632 T@Vec_37831) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_37831 T@Vec_37831) Bool)
(declare-fun InRangeVec_16728 (T@Vec_37831 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_37831) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_37831 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_37831 T@Vec_37831) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_37831) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_37831 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_37831 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_37831) T@Vec_37831)
(declare-fun $1_Hash_sha3 (T@Vec_37831) T@Vec_37831)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_37831) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_37831 T@Vec_37831 T@Vec_37831) Bool)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_37831)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_416285_| (|T@[$1_Event_EventHandle]Multiset_416285| T@$1_Event_EventHandle) T@Multiset_416285)
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
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int T@Vec_37831 Int) T@Vec_37831)
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
(declare-fun |$IsValid'$1_AccountFreezing_FreezeAccountEvent'| (T@$1_AccountFreezing_FreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeEventsHolder'| (T@$1_AccountFreezing_FreezeEventsHolder) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| (T@$1_AccountFreezing_UnfreezeAccountEvent) Bool)
(declare-fun $1_DiemAccount_spec_abstract_create_authentication_key (T@Vec_37831) T@Vec_37831)
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
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun IndexOfVec_37831 (T@Vec_37831 Int) Int)
(declare-fun IndexOfVec_416371 (T@Vec_416371 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_416410 (T@Vec_416410 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_416449 (T@Vec_416449 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_416575 (T@Vec_416575 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_416632 (T@Vec_416632 T@Vec_37831) Int)
(declare-fun IndexOfVec_416842 (T@Vec_416842 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_416881 (T@Vec_416881 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_416920 (T@Vec_416920 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_417075 (T@Vec_417075 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_418331 (T@Vec_418331 |T@#0|) Int)
(declare-fun IndexOfVec_442547 (T@Vec_442547 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_445227 (T@Vec_445227 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_416285| |T@[$1_Event_EventHandle]Multiset_416285|) |T@[$1_Event_EventHandle]Multiset_416285|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_37831| |T@[Int]Vec_37831| Int T@Vec_37831) |T@[Int]Vec_37831|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_37831| Int Int T@Vec_37831) |T@[Int]Vec_37831|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_37831| |T@[Int]Vec_37831| Int T@Vec_37831) |T@[Int]Vec_37831|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemAccountbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemAccountbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemAccountbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemAccountbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemAccountbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemAccountbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_418331) (v2 T@Vec_418331) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_418331| v1) (|l#Vec_418331| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_375820 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_418331| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_418331| v2) i@@0)))
 :qid |DiemAccountbpl.615:13|
 :skolemid |17|
))))
 :qid |DiemAccountbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_418331) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_418331| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_375820 v@@4 i@@1) true)
 :qid |DiemAccountbpl.621:13|
 :skolemid |19|
))))
 :qid |DiemAccountbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_418331) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_375820 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@5) i@@3) e))
 :qid |DiemAccountbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_375820 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@5) j) e)))
 :qid |DiemAccountbpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemAccountbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_416410) (v2@@0 T@Vec_416410) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_416410| v1@@0) (|l#Vec_416410| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_376021 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v2@@0) i@@4)))
 :qid |DiemAccountbpl.796:13|
 :skolemid |24|
))))
 :qid |DiemAccountbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_416410) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_416410| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_376021 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@6) i@@5)))
 :qid |DiemAccountbpl.802:13|
 :skolemid |26|
))))
 :qid |DiemAccountbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_416410) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_376021 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@7) i@@7) e@@0))
 :qid |DiemAccountbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_376021 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@7) j@@0) e@@0)))
 :qid |DiemAccountbpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemAccountbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_416449) (v2@@1 T@Vec_416449) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_416449| v1@@1) (|l#Vec_416449| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_376222 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v2@@1) i@@8)))
 :qid |DiemAccountbpl.977:13|
 :skolemid |31|
))))
 :qid |DiemAccountbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_416449) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_416449| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_376222 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@8) i@@9)))
 :qid |DiemAccountbpl.983:13|
 :skolemid |33|
))))
 :qid |DiemAccountbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_416449) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_376222 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@9) i@@11) e@@1))
 :qid |DiemAccountbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_376222 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@9) j@@1) e@@1)))
 :qid |DiemAccountbpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemAccountbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_416575) (v2@@2 T@Vec_416575) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_416575| v1@@2) (|l#Vec_416575| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_376423 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12)))))
 :qid |DiemAccountbpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemAccountbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_416575) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_416575| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_376423 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@10) i@@13)))
 :qid |DiemAccountbpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemAccountbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_416575) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_376423 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemAccountbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_376423 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemAccountbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemAccountbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_416920) (v2@@3 T@Vec_416920) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_416920| v1@@3) (|l#Vec_416920| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_376624 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v2@@3) i@@16)))))
 :qid |DiemAccountbpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemAccountbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_416920) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_416920| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_376624 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@12) i@@17)))
 :qid |DiemAccountbpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemAccountbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_416920) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_376624 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemAccountbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_376624 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemAccountbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemAccountbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_416881) (v2@@4 T@Vec_416881) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_416881| v1@@4) (|l#Vec_416881| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_376825 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v2@@4) i@@20)))))
 :qid |DiemAccountbpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemAccountbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_416881) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_416881| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_376825 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@14) i@@21)))
 :qid |DiemAccountbpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemAccountbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_416881) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_376825 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemAccountbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_376825 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemAccountbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemAccountbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_416842) (v2@@5 T@Vec_416842) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_416842| v1@@5) (|l#Vec_416842| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_377026 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v2@@5) i@@24)))))
 :qid |DiemAccountbpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemAccountbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_416842) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_416842| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_377026 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@16) i@@25)))
 :qid |DiemAccountbpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemAccountbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_416842) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_377026 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemAccountbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_377026 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemAccountbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemAccountbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_417075) (v2@@6 T@Vec_417075) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_417075| v1@@6) (|l#Vec_417075| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_377227 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v2@@6) i@@28))))
 :qid |DiemAccountbpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemAccountbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_417075) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_417075| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_377227 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@18) i@@29)))
 :qid |DiemAccountbpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemAccountbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_417075) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_377227 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |DiemAccountbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_377227 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |DiemAccountbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemAccountbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_416371) (v2@@7 T@Vec_416371) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_416371| v1@@7) (|l#Vec_416371| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_377428 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v2@@7) i@@32)))))
 :qid |DiemAccountbpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemAccountbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_416371) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_416371| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_377428 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@20) i@@33)))
 :qid |DiemAccountbpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemAccountbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_416371) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_377428 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |DiemAccountbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_377428 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |DiemAccountbpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemAccountbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_442547) (v2@@8 T@Vec_442547) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_442547| v1@@8) (|l#Vec_442547| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_377629 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v2@@8) i@@36)))
 :qid |DiemAccountbpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemAccountbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_442547) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_442547| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_377629 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@22) i@@37)))
 :qid |DiemAccountbpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemAccountbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_442547) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_377629 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@23) i@@39) e@@8))
 :qid |DiemAccountbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_377629 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@23) j@@8) e@@8)))
 :qid |DiemAccountbpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemAccountbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_445227) (v2@@9 T@Vec_445227) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_445227| v1@@9) (|l#Vec_445227| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_377830 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v2@@9) i@@40)))
 :qid |DiemAccountbpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemAccountbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_445227) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_445227| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_377830 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@24) i@@41)))
 :qid |DiemAccountbpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemAccountbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_445227) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_377830 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@25) i@@43) e@@9))
 :qid |DiemAccountbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_377830 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@25) j@@9) e@@9)))
 :qid |DiemAccountbpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemAccountbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_416632) (v2@@10 T@Vec_416632) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_416632| v1@@10) (|l#Vec_416632| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_447989 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v1@@10) i@@44) (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v2@@10) i@@44)))
 :qid |DiemAccountbpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemAccountbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_416632) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_416632| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_447989 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@26) i@@45)))
 :qid |DiemAccountbpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemAccountbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_416632) (e@@10 T@Vec_37831) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_447989 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@27) i@@47) e@@10))
 :qid |DiemAccountbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_447989 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@27) j@@10) e@@10)))
 :qid |DiemAccountbpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemAccountbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_37831) (v2@@11 T@Vec_37831) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_37831| v1@@11) (|l#Vec_37831| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_37831| v2@@11) i@@48)))
 :qid |DiemAccountbpl.2787:13|
 :skolemid |101|
))))
 :qid |DiemAccountbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_37831) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_37831| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_37831| v@@28) i@@49)))
 :qid |DiemAccountbpl.2793:13|
 :skolemid |103|
))))
 :qid |DiemAccountbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_37831) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@29) i@@51) e@@11))
 :qid |DiemAccountbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@29) j@@11) e@@11)))
 :qid |DiemAccountbpl.2806:17|
 :skolemid |106|
)))))
 :qid |DiemAccountbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_37831) (v2@@12 T@Vec_37831) ) (! (= (|$IsEqual'vec'u64''| v1@@12 v2@@12)  (and (= (|l#Vec_37831| v1@@12) (|l#Vec_37831| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_37831| v2@@12) i@@52)))
 :qid |DiemAccountbpl.2968:13|
 :skolemid |108|
))))
 :qid |DiemAccountbpl.2966:29|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u64''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_37831) ) (! (= (|$IsValid'vec'u64''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_37831| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_37831| v@@30) i@@53)))
 :qid |DiemAccountbpl.2974:13|
 :skolemid |110|
))))
 :qid |DiemAccountbpl.2972:29|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u64''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_37831) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u64'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@31) i@@55) e@@12))
 :qid |DiemAccountbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@31) j@@12) e@@12)))
 :qid |DiemAccountbpl.2987:17|
 :skolemid |113|
)))))
 :qid |DiemAccountbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u64'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_37831) (v2@@13 T@Vec_37831) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13)  (and (= (|l#Vec_37831| v1@@13) (|l#Vec_37831| v2@@13)) (forall ((i@@56 Int) ) (!  (=> (InRangeVec_16728 v1@@13 i@@56) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v1@@13) i@@56) (|Select__T@[Int]Int_| (|v#Vec_37831| v2@@13) i@@56)))
 :qid |DiemAccountbpl.3149:13|
 :skolemid |115|
))))
 :qid |DiemAccountbpl.3147:28|
 :skolemid |116|
 :pattern ( (|$IsEqual'vec'u8''| v1@@13 v2@@13))
)))
(assert (forall ((v@@32 T@Vec_37831) ) (! (= (|$IsValid'vec'u8''| v@@32)  (and (|$IsValid'u64'| (|l#Vec_37831| v@@32)) (forall ((i@@57 Int) ) (!  (=> (InRangeVec_16728 v@@32 i@@57) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_37831| v@@32) i@@57)))
 :qid |DiemAccountbpl.3155:13|
 :skolemid |117|
))))
 :qid |DiemAccountbpl.3153:28|
 :skolemid |118|
 :pattern ( (|$IsValid'vec'u8''| v@@32))
)))
(assert (forall ((v@@33 T@Vec_37831) (e@@13 Int) ) (! (let ((i@@58 (|$IndexOfVec'u8'| v@@33 e@@13)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (InRangeVec_16728 v@@33 i@@59)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@33) i@@59) e@@13))
 :qid |DiemAccountbpl.3160:13|
 :skolemid |119|
))) (= i@@58 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@58) (InRangeVec_16728 v@@33 i@@58)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@33) i@@58) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@13) (>= j@@13 0)) (< j@@13 i@@58)) (not (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@33) j@@13) e@@13)))
 :qid |DiemAccountbpl.3168:17|
 :skolemid |120|
)))))
 :qid |DiemAccountbpl.3164:15|
 :skolemid |121|
 :pattern ( (|$IndexOfVec'u8'| v@@33 e@@13))
)))
(assert (forall ((v1@@14 T@Vec_37831) (v2@@14 T@Vec_37831) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14)))
 :qid |DiemAccountbpl.3341:15|
 :skolemid |122|
 :pattern ( ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14))
)))
(assert (forall ((v1@@15 T@Vec_37831) (v2@@15 T@Vec_37831) ) (! (= (|$IsEqual'vec'u8''| v1@@15 v2@@15) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15)))
 :qid |DiemAccountbpl.3357:15|
 :skolemid |123|
 :pattern ( ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15))
)))
(assert (forall ((k1 T@Vec_37831) (k2 T@Vec_37831) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemAccountbpl.3424:15|
 :skolemid |124|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_37831) (s2 T@Vec_37831) (k1@@0 T@Vec_37831) (k2@@0 T@Vec_37831) (m1 T@Vec_37831) (m2 T@Vec_37831) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemAccountbpl.3427:15|
 :skolemid |125|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@16 Int) (v2@@16 Int) ) (! (= (= v1@@16 v2@@16) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@16) (|$1_BCS_serialize'address'| v2@@16)))
 :qid |DiemAccountbpl.3454:15|
 :skolemid |126|
 :pattern ( (|$1_BCS_serialize'address'| v1@@16) (|$1_BCS_serialize'address'| v2@@16))
)))
(assert (forall ((v@@34 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@34)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_37831| r@@0) 0)))
 :qid |DiemAccountbpl.3459:15|
 :skolemid |127|
 :pattern ( (|$1_BCS_serialize'address'| v@@34))
)))
(assert (forall ((v@@35 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@35)))
(= (|l#Vec_37831| r@@1) $serialized_address_len))
 :qid |DiemAccountbpl.3473:15|
 :skolemid |128|
 :pattern ( (|$1_BCS_serialize'address'| v@@35))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_416285| stream) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| stream) v@@36) 0)
 :qid |DiemAccountbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemAccountbpl.3520:13|
 :skolemid |129|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemAccountbpl.3561:80|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@17 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@17 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@17)))
 :qid |DiemAccountbpl.3567:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@17))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemAccountbpl.3617:82|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@18 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@18 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@18) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@18)))
 :qid |DiemAccountbpl.3623:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@18) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@18))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemAccountbpl.3673:80|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@19 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@19 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@19) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@19)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@19) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@19))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@19) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@19))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@19) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@19)))
 :qid |DiemAccountbpl.3679:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@19) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@19))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemAccountbpl.3729:79|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_AdminTransactionEvent) (v2@@20 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@20 v2@@20) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@20)))
 :qid |DiemAccountbpl.3735:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@20))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemAccountbpl.3785:76|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_CreateAccountEvent) (v2@@21 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@21)))
 :qid |DiemAccountbpl.3791:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@21))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemAccountbpl.3841:78|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@22 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@22 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@22) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@22) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@22))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@22) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@22))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@22) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@22))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@22)))
 :qid |DiemAccountbpl.3847:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@22))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemAccountbpl.3897:74|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@23 T@$1_DiemAccount_SentPaymentEvent) (v2@@23 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@23) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@23) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@23))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@23) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@23))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@23) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@23))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@23) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@23)))
 :qid |DiemAccountbpl.3903:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@23) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@23))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemAccountbpl.3953:69|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@24 T@$1_DiemBlock_NewBlockEvent) (v2@@24 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@24) (|$round#$1_DiemBlock_NewBlockEvent| v2@@24)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@24) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@24))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@24) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@24))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@24) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@24))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@24) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@24)))
 :qid |DiemAccountbpl.3959:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@24) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@24))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemAccountbpl.4009:70|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@25 T@$1_DiemConfig_NewEpochEvent) (v2@@25 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@25 v2@@25) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@25) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@25)))
 :qid |DiemAccountbpl.4015:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@25) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@25))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemAccountbpl.4065:60|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@26 T@$1_Diem_BurnEvent) (v2@@26 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@26) (|$amount#$1_Diem_BurnEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@26) (|$currency_code#$1_Diem_BurnEvent| v2@@26))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@26) (|$preburn_address#$1_Diem_BurnEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@26)))
 :qid |DiemAccountbpl.4071:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@26))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemAccountbpl.4121:66|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@27 T@$1_Diem_CancelBurnEvent) (v2@@27 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@27) (|$amount#$1_Diem_CancelBurnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@27) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@27) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@27) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@27)))
 :qid |DiemAccountbpl.4127:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@27) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@27))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemAccountbpl.4177:60|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@28 T@$1_Diem_MintEvent) (v2@@28 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@28) (|$amount#$1_Diem_MintEvent| v2@@28)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@28) (|$currency_code#$1_Diem_MintEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@28) (|$ToEventRep'$1_Diem_MintEvent'| v2@@28)))
 :qid |DiemAccountbpl.4183:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@28) (|$ToEventRep'$1_Diem_MintEvent'| v2@@28))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemAccountbpl.4233:63|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@29 T@$1_Diem_PreburnEvent) (v2@@29 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@29) (|$amount#$1_Diem_PreburnEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@29) (|$currency_code#$1_Diem_PreburnEvent| v2@@29))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@29) (|$preburn_address#$1_Diem_PreburnEvent| v2@@29))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@29) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@29)))
 :qid |DiemAccountbpl.4239:15|
 :skolemid |156|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@29) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@29))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemAccountbpl.4289:79|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@30 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@30 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@30) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@30)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@30) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@30))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@30) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@30)))
 :qid |DiemAccountbpl.4295:15|
 :skolemid |158|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@30) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@30))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemAccountbpl.4345:82|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@31 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@31 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@31) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@31)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@31) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@31))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@31)))
 :qid |DiemAccountbpl.4351:15|
 :skolemid |160|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@31))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemAccountbpl.4401:88|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@32 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@32 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@32) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@32)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@32) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@32))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@32) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@32)))
 :qid |DiemAccountbpl.4407:15|
 :skolemid |162|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@32) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@32))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemAccountbpl.4457:72|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@33 T@$1_VASPDomain_VASPDomainEvent) (v2@@33 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@33) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@33)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@33)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@33)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@33) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@33))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@33) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@33)))
 :qid |DiemAccountbpl.4463:15|
 :skolemid |164|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@33) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@33))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |DiemAccountbpl.4517:15|
 :skolemid |165|
)))
(assert (forall ((addr Int) ) (! true
 :qid |DiemAccountbpl.4526:15|
 :skolemid |166|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |DiemAccountbpl.4556:61|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemAccountbpl.5157:36|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |DiemAccountbpl.9032:71|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemAccountbpl.9822:46|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemAccountbpl.9834:64|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemAccountbpl.9846:75|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemAccountbpl.9858:72|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemAccountbpl.9896:55|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemAccountbpl.9919:46|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemAccountbpl.11770:49|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemAccountbpl.11865:71|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemAccountbpl.11878:91|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemAccountbpl.11891:113|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemAccountbpl.11904:75|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemAccountbpl.11917:73|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DiemAccountbpl.11937:48|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DiemAccountbpl.11954:57|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DiemAccountbpl.11968:83|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DiemAccountbpl.11982:103|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DiemAccountbpl.11996:125|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |DiemAccountbpl.12010:87|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |DiemAccountbpl.12024:85|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |DiemAccountbpl.12038:48|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |DiemAccountbpl.12059:45|
 :skolemid |303|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |DiemAccountbpl.12073:51|
 :skolemid |304|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |DiemAccountbpl.12096:48|
 :skolemid |305|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |DiemAccountbpl.12409:49|
 :skolemid |306|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |DiemAccountbpl.12422:65|
 :skolemid |307|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |DiemAccountbpl.13035:45|
 :skolemid |308|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |DiemAccountbpl.13048:45|
 :skolemid |309|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |DiemAccountbpl.13061:37|
 :skolemid |310|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |DiemAccountbpl.13074:55|
 :skolemid |311|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DiemAccountbpl.13088:55|
 :skolemid |312|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@33) true)
 :qid |DiemAccountbpl.13102:47|
 :skolemid |313|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@34))))
 :qid |DiemAccountbpl.13122:38|
 :skolemid |314|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@35))))
 :qid |DiemAccountbpl.13144:44|
 :skolemid |315|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))))
 :qid |DiemAccountbpl.13196:53|
 :skolemid |316|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))))
 :qid |DiemAccountbpl.13269:53|
 :skolemid |317|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@38))))
 :qid |DiemAccountbpl.13342:45|
 :skolemid |318|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39) true)
 :qid |DiemAccountbpl.13379:55|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40) true)
 :qid |DiemAccountbpl.13393:55|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@41) true)
 :qid |DiemAccountbpl.13407:47|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |DiemAccountbpl.13424:38|
 :skolemid |322|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |DiemAccountbpl.13438:48|
 :skolemid |323|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |DiemAccountbpl.13452:48|
 :skolemid |324|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@45) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@45)))
 :qid |DiemAccountbpl.13466:40|
 :skolemid |325|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@46)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@46)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@46))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@46))))
 :qid |DiemAccountbpl.13486:41|
 :skolemid |326|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@47)))
 :qid |DiemAccountbpl.13502:53|
 :skolemid |327|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@48)))
 :qid |DiemAccountbpl.13515:53|
 :skolemid |328|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@49)))
 :qid |DiemAccountbpl.13528:45|
 :skolemid |329|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50))))
 :qid |DiemAccountbpl.13544:60|
 :skolemid |330|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51))))
 :qid |DiemAccountbpl.13561:60|
 :skolemid |331|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@52))))
 :qid |DiemAccountbpl.13578:52|
 :skolemid |332|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53))))
 :qid |DiemAccountbpl.13595:57|
 :skolemid |333|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54) true)
 :qid |DiemAccountbpl.18752:68|
 :skolemid |340|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))))
 :qid |DiemAccountbpl.18774:66|
 :skolemid |341|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))))
 :qid |DiemAccountbpl.18800:66|
 :skolemid |342|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@57))))
 :qid |DiemAccountbpl.18826:58|
 :skolemid |343|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@58)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))))
 :qid |DiemAccountbpl.18855:56|
 :skolemid |344|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))))
 :qid |DiemAccountbpl.18885:56|
 :skolemid |345|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@60))))
 :qid |DiemAccountbpl.18915:48|
 :skolemid |346|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@60))
)))
(assert (forall ((s@@61 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@61) true)
 :qid |DiemAccountbpl.19400:31|
 :skolemid |347|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@61))
)))
(assert (forall ((s@@62 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@62) true)
 :qid |DiemAccountbpl.19744:31|
 :skolemid |348|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@63)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@63)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@63))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@63))))
 :qid |DiemAccountbpl.19763:35|
 :skolemid |349|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@64)))
 :qid |DiemAccountbpl.20189:45|
 :skolemid |350|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@65))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@65))))
 :qid |DiemAccountbpl.20207:50|
 :skolemid |351|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@66)))
 :qid |DiemAccountbpl.20223:52|
 :skolemid |352|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@67)))
 :qid |DiemAccountbpl.20236:46|
 :skolemid |353|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@68) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@68)))
 :qid |DiemAccountbpl.22136:38|
 :skolemid |388|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@69) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@69)))
 :qid |DiemAccountbpl.22150:39|
 :skolemid |389|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@69))
)))
(assert (forall ((s@@70 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70))))
 :qid |DiemAccountbpl.23959:65|
 :skolemid |413|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@71))))
 :qid |DiemAccountbpl.23977:65|
 :skolemid |414|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@71))
)))
(assert (forall ((s@@72 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@72)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@72)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@72))))
 :qid |DiemAccountbpl.23995:57|
 :skolemid |415|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@72))
)))
(assert (forall ((payer Int) (metadata T@Vec_37831) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |DiemAccountbpl.25126:15|
 :skolemid |416|
)))
(assert (forall ((s@@73 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@73))))
 :qid |DiemAccountbpl.25154:60|
 :skolemid |417|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@74)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@74)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@74))))
 :qid |DiemAccountbpl.25171:66|
 :skolemid |418|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@75)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@75)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@75))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@75))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@75))))
 :qid |DiemAccountbpl.25200:50|
 :skolemid |419|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@76) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@76)))
 :qid |DiemAccountbpl.25223:45|
 :skolemid |420|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@77)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@77)) true))
 :qid |DiemAccountbpl.27088:87|
 :skolemid |459|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemTransactionPublishingOption_HaltAllTransactions) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@78) true)
 :qid |DiemAccountbpl.27102:75|
 :skolemid |460|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@79)))
 :qid |DiemAccountbpl.27766:47|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@80)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@80)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@80))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@80))))
 :qid |DiemAccountbpl.27785:58|
 :skolemid |462|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@81)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@81)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@81))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@81))))
 :qid |DiemAccountbpl.27807:61|
 :skolemid |463|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@82)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@82)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@82))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@82))))
 :qid |DiemAccountbpl.27830:61|
 :skolemid |464|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@83)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@83)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@83))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@83))))
 :qid |DiemAccountbpl.27853:53|
 :skolemid |465|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@83))
)))
(assert (forall ((s@@84 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@84) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@84)))
 :qid |DiemAccountbpl.31540:39|
 :skolemid |643|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@84))
)))
(assert (forall ((s@@85 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@85)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@85)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@85))))
 :qid |DiemAccountbpl.31656:58|
 :skolemid |644|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@86)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@86)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@86))))
 :qid |DiemAccountbpl.31673:58|
 :skolemid |645|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@86))
)))
(assert (forall ((s@@87 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@87) true)
 :qid |DiemAccountbpl.31688:51|
 :skolemid |646|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@87))
)))
(assert (forall ((s@@88 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@88)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@88)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@88))))
 :qid |DiemAccountbpl.31705:60|
 :skolemid |647|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@88))
)))
(assert (forall ((auth_key_prefix T@Vec_37831) ) (! (let (($$res@@0 ($1_DiemAccount_spec_abstract_create_authentication_key auth_key_prefix)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |DiemAccountbpl.33290:15|
 :skolemid |664|
)))
(assert (forall ((s@@89 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@89)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@89)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@89))))
 :qid |DiemAccountbpl.33370:47|
 :skolemid |665|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@90)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@90)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@90))))
 :qid |DiemAccountbpl.33396:63|
 :skolemid |666|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@91) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@91)))
 :qid |DiemAccountbpl.33411:57|
 :skolemid |667|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@91))
)))
(assert (forall ((s@@92 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@92) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@92)))
 :qid |DiemAccountbpl.33424:55|
 :skolemid |668|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@92))
)))
(assert (forall ((s@@93 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@93) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@93)))
 :qid |DiemAccountbpl.33438:55|
 :skolemid |669|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@93))
)))
(assert (forall ((s@@94 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@94) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@94)))
 :qid |DiemAccountbpl.33452:47|
 :skolemid |670|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@95)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@95)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@95))))
 :qid |DiemAccountbpl.33469:54|
 :skolemid |671|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@96) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@96)))
 :qid |DiemAccountbpl.33483:55|
 :skolemid |672|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@97) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@97)))
 :qid |DiemAccountbpl.33496:57|
 :skolemid |673|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@98)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@98)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@98))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@98))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@98))))
 :qid |DiemAccountbpl.33518:56|
 :skolemid |674|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@99)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@99)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@99))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@99))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@99))))
 :qid |DiemAccountbpl.33545:52|
 :skolemid |675|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@100) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@100)))
 :qid |DiemAccountbpl.33563:54|
 :skolemid |676|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@101)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@101)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@101))))
 :qid |DiemAccountbpl.99794:47|
 :skolemid |3795|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@102)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@102)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@102))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@102))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@102))))
 :qid |DiemAccountbpl.99818:47|
 :skolemid |3796|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@102))
)))
(assert (forall ((s@@103 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@103) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@103)))
 :qid |DiemAccountbpl.100061:49|
 :skolemid |3797|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@103))
)))
(assert (forall ((s@@104 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@104)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@104)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@104))))
 :qid |DiemAccountbpl.100103:49|
 :skolemid |3798|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@104))
)))
(assert (forall ((s@@105 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@105)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@105)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@105))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@105))))
 :qid |DiemAccountbpl.100132:48|
 :skolemid |3799|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@105))
)))
(assert (forall ((s@@106 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@106) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@106)))
 :qid |DiemAccountbpl.100428:47|
 :skolemid |3800|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@106))
)))
(assert (forall ((v@@37 T@Vec_418331) (i@@60 Int) ) (! (= (InRangeVec_375820 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_418331| v@@37))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_375820 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_416410) (i@@61 Int) ) (! (= (InRangeVec_376021 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_416410| v@@38))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_376021 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_416449) (i@@62 Int) ) (! (= (InRangeVec_376222 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_416449| v@@39))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_376222 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_416575) (i@@63 Int) ) (! (= (InRangeVec_376423 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_416575| v@@40))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_376423 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_416920) (i@@64 Int) ) (! (= (InRangeVec_376624 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_416920| v@@41))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_376624 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_416881) (i@@65 Int) ) (! (= (InRangeVec_376825 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_416881| v@@42))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_376825 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_416842) (i@@66 Int) ) (! (= (InRangeVec_377026 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_416842| v@@43))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_377026 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_417075) (i@@67 Int) ) (! (= (InRangeVec_377227 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_417075| v@@44))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_377227 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_416371) (i@@68 Int) ) (! (= (InRangeVec_377428 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_416371| v@@45))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_377428 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_442547) (i@@69 Int) ) (! (= (InRangeVec_377629 v@@46 i@@69)  (and (>= i@@69 0) (< i@@69 (|l#Vec_442547| v@@46))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_377629 v@@46 i@@69))
)))
(assert (forall ((v@@47 T@Vec_445227) (i@@70 Int) ) (! (= (InRangeVec_377830 v@@47 i@@70)  (and (>= i@@70 0) (< i@@70 (|l#Vec_445227| v@@47))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_377830 v@@47 i@@70))
)))
(assert (forall ((v@@48 T@Vec_416632) (i@@71 Int) ) (! (= (InRangeVec_447989 v@@48 i@@71)  (and (>= i@@71 0) (< i@@71 (|l#Vec_416632| v@@48))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_447989 v@@48 i@@71))
)))
(assert (forall ((v@@49 T@Vec_37831) (i@@72 Int) ) (! (= (InRangeVec_16728 v@@49 i@@72)  (and (>= i@@72 0) (< i@@72 (|l#Vec_37831| v@@49))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@49 i@@72))
)))
(assert (forall ((v@@50 T@Vec_37831) (e@@14 Int) ) (! (let ((i@@73 (IndexOfVec_37831 v@@50 e@@14)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_16728 v@@50 i@@74) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@50) i@@74) e@@14))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_16728 v@@50 i@@73) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@50) i@@73) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@73)) (not (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@50) j@@14) e@@14)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_37831 v@@50 e@@14))
)))
(assert (forall ((v@@51 T@Vec_416371) (e@@15 T@$1_ValidatorConfig_Config) ) (! (let ((i@@75 (IndexOfVec_416371 v@@51 e@@15)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_377428 v@@51 i@@76) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@51) i@@76) e@@15))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_377428 v@@51 i@@75) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@51) i@@75) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@75)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@51) j@@15) e@@15)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416371 v@@51 e@@15))
)))
(assert (forall ((v@@52 T@Vec_416410) (e@@16 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@77 (IndexOfVec_416410 v@@52 e@@16)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_376021 v@@52 i@@78) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@52) i@@78) e@@16))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_376021 v@@52 i@@77) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@52) i@@77) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@77)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@52) j@@16) e@@16)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416410 v@@52 e@@16))
)))
(assert (forall ((v@@53 T@Vec_416449) (e@@17 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@79 (IndexOfVec_416449 v@@53 e@@17)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_376222 v@@53 i@@80) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@53) i@@80) e@@17))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_376222 v@@53 i@@79) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@53) i@@79) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@79)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@53) j@@17) e@@17)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416449 v@@53 e@@17))
)))
(assert (forall ((v@@54 T@Vec_416575) (e@@18 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@81 (IndexOfVec_416575 v@@54 e@@18)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_376423 v@@54 i@@82) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@54) i@@82) e@@18))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_376423 v@@54 i@@81) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@54) i@@81) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@81)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@54) j@@18) e@@18)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416575 v@@54 e@@18))
)))
(assert (forall ((v@@55 T@Vec_416632) (e@@19 T@Vec_37831) ) (! (let ((i@@83 (IndexOfVec_416632 v@@55 e@@19)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_447989 v@@55 i@@84) (= (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@55) i@@84) e@@19))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_447989 v@@55 i@@83) (= (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@55) i@@83) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@83)) (not (= (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@55) j@@19) e@@19)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416632 v@@55 e@@19))
)))
(assert (forall ((v@@56 T@Vec_416842) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@85 (IndexOfVec_416842 v@@56 e@@20)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_377026 v@@56 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@56) i@@86) e@@20))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_377026 v@@56 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@56) i@@85) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@56) j@@20) e@@20)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416842 v@@56 e@@20))
)))
(assert (forall ((v@@57 T@Vec_416881) (e@@21 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@87 (IndexOfVec_416881 v@@57 e@@21)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_376825 v@@57 i@@88) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@57) i@@88) e@@21))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_376825 v@@57 i@@87) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@57) i@@87) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@87)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@57) j@@21) e@@21)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416881 v@@57 e@@21))
)))
(assert (forall ((v@@58 T@Vec_416920) (e@@22 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@89 (IndexOfVec_416920 v@@58 e@@22)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_376624 v@@58 i@@90) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@58) i@@90) e@@22))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_376624 v@@58 i@@89) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@58) i@@89) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@89)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@58) j@@22) e@@22)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416920 v@@58 e@@22))
)))
(assert (forall ((v@@59 T@Vec_417075) (e@@23 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@91 (IndexOfVec_417075 v@@59 e@@23)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_377227 v@@59 i@@92) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@59) i@@92) e@@23))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_377227 v@@59 i@@91) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@59) i@@91) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@91)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@59) j@@23) e@@23)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_417075 v@@59 e@@23))
)))
(assert (forall ((v@@60 T@Vec_418331) (e@@24 |T@#0|) ) (! (let ((i@@93 (IndexOfVec_418331 v@@60 e@@24)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_375820 v@@60 i@@94) (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@60) i@@94) e@@24))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_375820 v@@60 i@@93) (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@60) i@@93) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@93)) (not (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@60) j@@24) e@@24)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_418331 v@@60 e@@24))
)))
(assert (forall ((v@@61 T@Vec_442547) (e@@25 T@$1_XDX_XDX) ) (! (let ((i@@95 (IndexOfVec_442547 v@@61 e@@25)))
(ite  (not (exists ((i@@96 Int) ) (!  (and (InRangeVec_377629 v@@61 i@@96) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@61) i@@96) e@@25))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@95 (- 0 1))  (and (and (InRangeVec_377629 v@@61 i@@95) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@61) i@@95) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@95)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@61) j@@25) e@@25)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_442547 v@@61 e@@25))
)))
(assert (forall ((v@@62 T@Vec_445227) (e@@26 T@$1_XUS_XUS) ) (! (let ((i@@97 (IndexOfVec_445227 v@@62 e@@26)))
(ite  (not (exists ((i@@98 Int) ) (!  (and (InRangeVec_377830 v@@62 i@@98) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@62) i@@98) e@@26))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@97 (- 0 1))  (and (and (InRangeVec_377830 v@@62 i@@97) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@62) i@@97) e@@26)) (forall ((j@@26 Int) ) (!  (=> (and (>= j@@26 0) (< j@@26 i@@97)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@62) j@@26) e@@26)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_445227 v@@62 e@@26))
)))
(assert (forall ((|l#0| Bool) (i@@99 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@99) |l#0|)
 :qid |DiemAccountbpl.275:54|
 :skolemid |3886|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@99))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_416285|) (|l#1| |T@[$1_Event_EventHandle]Multiset_416285|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| |l#1| handle@@0))))
(Multiset_416285 (|lambda#42| (|v#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| |l#0@@0| handle@@0)) (|v#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemAccountbpl.3530:13|
 :skolemid |3887|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@100 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@100) (ite  (and (>= i@@100 |l#0@@1|) (< i@@100 |l#1@@0|)) (ite (< i@@100 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@100) (|Select__T@[Int]#0_| |l#4| (- i@@100 |l#5|))) |l#6|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3888|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@100))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@101 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@101) (ite  (and (<= |l#0@@2| i@@101) (< i@@101 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@101) |l#4@@0|)) |l#5@@0|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3889|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@101))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@27 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27) (ite  (and (>= j@@27 |l#0@@3|) (< j@@27 |l#1@@2|)) (ite (< j@@27 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@27) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@27 |l#5@@1|))) |l#6@@0|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3890|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@102) (ite  (and (>= i@@102 |l#0@@4|) (< i@@102 |l#1@@3|)) (ite (< i@@102 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@102) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@102 |l#5@@2|))) |l#6@@1|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3891|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@102))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@103) (ite  (and (<= |l#0@@5| i@@103) (< i@@103 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@103) |l#4@@3|)) |l#5@@3|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3892|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@103))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28) (ite  (and (>= j@@28 |l#0@@6|) (< j@@28 |l#1@@5|)) (ite (< j@@28 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@28) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@28 |l#5@@4|))) |l#6@@2|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3893|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@104) (ite  (and (>= i@@104 |l#0@@7|) (< i@@104 |l#1@@6|)) (ite (< i@@104 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@104) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@104 |l#5@@5|))) |l#6@@3|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3894|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@104))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@105) (ite  (and (<= |l#0@@8| i@@105) (< i@@105 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@105) |l#4@@6|)) |l#5@@6|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3895|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@105))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29) (ite  (and (>= j@@29 |l#0@@9|) (< j@@29 |l#1@@8|)) (ite (< j@@29 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@29) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@29 |l#5@@7|))) |l#6@@4|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3896|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@106) (ite  (and (>= i@@106 |l#0@@10|) (< i@@106 |l#1@@9|)) (ite (< i@@106 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@106) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@106 |l#5@@8|))) |l#6@@5|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3897|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@106))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@107) (ite  (and (<= |l#0@@11| i@@107) (< i@@107 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@107) |l#4@@9|)) |l#5@@9|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3898|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@107))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30) (ite  (and (>= j@@30 |l#0@@12|) (< j@@30 |l#1@@11|)) (ite (< j@@30 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@30) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@30 |l#5@@10|))) |l#6@@6|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3899|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@108) (ite  (and (>= i@@108 |l#0@@13|) (< i@@108 |l#1@@12|)) (ite (< i@@108 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@108 |l#5@@11|))) |l#6@@7|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3900|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@108))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@109) (ite  (and (<= |l#0@@14| i@@109) (< i@@109 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@109) |l#4@@12|)) |l#5@@12|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3901|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@109))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31) (ite  (and (>= j@@31 |l#0@@15|) (< j@@31 |l#1@@14|)) (ite (< j@@31 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@31 |l#5@@13|))) |l#6@@8|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3902|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@110) (ite  (and (>= i@@110 |l#0@@16|) (< i@@110 |l#1@@15|)) (ite (< i@@110 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@110) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@110 |l#5@@14|))) |l#6@@9|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3903|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@110))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@111) (ite  (and (<= |l#0@@17| i@@111) (< i@@111 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@111) |l#4@@15|)) |l#5@@15|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3904|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@111))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32) (ite  (and (>= j@@32 |l#0@@18|) (< j@@32 |l#1@@17|)) (ite (< j@@32 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@32 |l#5@@16|))) |l#6@@10|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3905|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@112) (ite  (and (>= i@@112 |l#0@@19|) (< i@@112 |l#1@@18|)) (ite (< i@@112 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@112) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@112 |l#5@@17|))) |l#6@@11|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3906|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@112))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@113) (ite  (and (<= |l#0@@20| i@@113) (< i@@113 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@113) |l#4@@18|)) |l#5@@18|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3907|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@113))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33) (ite  (and (>= j@@33 |l#0@@21|) (< j@@33 |l#1@@20|)) (ite (< j@@33 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@33) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@33 |l#5@@19|))) |l#6@@12|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3908|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@114) (ite  (and (>= i@@114 |l#0@@22|) (< i@@114 |l#1@@21|)) (ite (< i@@114 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@114) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@114 |l#5@@20|))) |l#6@@13|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3909|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@114))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@115) (ite  (and (<= |l#0@@23| i@@115) (< i@@115 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@115) |l#4@@21|)) |l#5@@21|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3910|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@115))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34) (ite  (and (>= j@@34 |l#0@@24|) (< j@@34 |l#1@@23|)) (ite (< j@@34 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@34) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@34 |l#5@@22|))) |l#6@@14|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3911|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@116) (ite  (and (>= i@@116 |l#0@@25|) (< i@@116 |l#1@@24|)) (ite (< i@@116 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@116) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@116 |l#5@@23|))) |l#6@@15|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3912|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@116))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@117) (ite  (and (<= |l#0@@26| i@@117) (< i@@117 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@117) |l#4@@24|)) |l#5@@24|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3913|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@117))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35) (ite  (and (>= j@@35 |l#0@@27|) (< j@@35 |l#1@@26|)) (ite (< j@@35 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@35) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@35 |l#5@@25|))) |l#6@@16|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3914|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@118 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@118) (ite  (and (>= i@@118 |l#0@@28|) (< i@@118 |l#1@@27|)) (ite (< i@@118 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@118) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@118 |l#5@@26|))) |l#6@@17|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3915|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@118))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@119 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@119) (ite  (and (<= |l#0@@29| i@@119) (< i@@119 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@119) |l#4@@27|)) |l#5@@27|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3916|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@119))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36) (ite  (and (>= j@@36 |l#0@@30|) (< j@@36 |l#1@@29|)) (ite (< j@@36 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@36) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@36 |l#5@@28|))) |l#6@@18|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3917|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@120 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@120) (ite  (and (>= i@@120 |l#0@@31|) (< i@@120 |l#1@@30|)) (ite (< i@@120 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@120) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@120 |l#5@@29|))) |l#6@@19|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3918|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@120))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@121 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@121) (ite  (and (<= |l#0@@32| i@@121) (< i@@121 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@121) |l#4@@30|)) |l#5@@30|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3919|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@121))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@37 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37) (ite  (and (>= j@@37 |l#0@@33|) (< j@@37 |l#1@@32|)) (ite (< j@@37 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@37) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@37 |l#5@@31|))) |l#6@@20|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3920|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_37831|) (|l#4@@32| |T@[Int]Vec_37831|) (|l#5@@32| Int) (|l#6@@21| T@Vec_37831) (i@@122 Int) ) (! (= (|Select__T@[Int]Vec_37831_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@122) (ite  (and (>= i@@122 |l#0@@34|) (< i@@122 |l#1@@33|)) (ite (< i@@122 |l#2@@32|) (|Select__T@[Int]Vec_37831_| |l#3@@32| i@@122) (|Select__T@[Int]Vec_37831_| |l#4@@32| (- i@@122 |l#5@@32|))) |l#6@@21|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3921|
 :pattern ( (|Select__T@[Int]Vec_37831_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@122))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_37831|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_37831) (i@@123 Int) ) (! (= (|Select__T@[Int]Vec_37831_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@123) (ite  (and (<= |l#0@@35| i@@123) (< i@@123 |l#1@@34|)) (|Select__T@[Int]Vec_37831_| |l#2@@33| (- (- |l#3@@33| i@@123) |l#4@@33|)) |l#5@@33|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3922|
 :pattern ( (|Select__T@[Int]Vec_37831_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@123))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_37831|) (|l#4@@34| |T@[Int]Vec_37831|) (|l#5@@34| Int) (|l#6@@22| T@Vec_37831) (j@@38 Int) ) (! (= (|Select__T@[Int]Vec_37831_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38) (ite  (and (>= j@@38 |l#0@@36|) (< j@@38 |l#1@@35|)) (ite (< j@@38 |l#2@@34|) (|Select__T@[Int]Vec_37831_| |l#3@@34| j@@38) (|Select__T@[Int]Vec_37831_| |l#4@@34| (+ j@@38 |l#5@@34|))) |l#6@@22|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3923|
 :pattern ( (|Select__T@[Int]Vec_37831_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@124 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@124) (ite  (and (>= i@@124 |l#0@@37|) (< i@@124 |l#1@@36|)) (ite (< i@@124 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@124) (|Select__T@[Int]Int_| |l#4@@35| (- i@@124 |l#5@@35|))) |l#6@@23|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3924|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@124))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@125 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@125) (ite  (and (<= |l#0@@38| i@@125) (< i@@125 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@125) |l#4@@36|)) |l#5@@36|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3925|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@125))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@39 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39) (ite  (and (>= j@@39 |l#0@@39|) (< j@@39 |l#1@@38|)) (ite (< j@@39 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@39) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@39 |l#5@@37|))) |l#6@@24|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3926|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@63 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@63) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@63) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@63)))
 :qid |DiemAccountbpl.154:29|
 :skolemid |3927|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@63))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $t50@1 () T@$Mutation_667554)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_596570)
(declare-fun _$t1 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_468705)
(declare-fun $t15 () Int)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_469420)
(declare-fun _$t0 () Int)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_469520)
(declare-fun |$1_AccountLimits_Window'#0'_$memory| () T@$Memory_525805)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun |Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'#0'| Int) |T@$1_AccountLimits_LimitsDefinition'#0'|)
(declare-fun |$1_AccountLimits_LimitsDefinition'#0'_$memory| () T@$Memory_526785)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'#0'_| (|T@[Int]$1_AccountLimits_Window'#0'| Int) |T@$1_AccountLimits_Window'#0'|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_463734)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_502017)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_590069)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int) |T@$1_DiemAccount_Balance'#0'|)
(declare-fun _$t5 () Bool)
(declare-fun _$t4 () T@Vec_37831)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_553588)
(declare-fun $t18 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun |Select__T@[Int]$1_DualAttestation_Credential_| (|T@[Int]$1_DualAttestation_Credential| Int) T@$1_DualAttestation_Credential)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_469122)
(declare-fun _$t3 () T@Vec_37831)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@0| () T@$Memory_596570)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t16 () T@$1_Event_EventHandle)
(declare-fun $t17 () T@$1_DiemAccount_ReceivedPaymentEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_416285_| (|T@[$1_Event_EventHandle]Multiset_416285| T@$1_Event_EventHandle T@Multiset_416285) |T@[$1_Event_EventHandle]Multiset_416285|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_416285|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_416285)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|Store__T@[$1_Event_EventHandle]Multiset_416285_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_416285|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_416285)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|Store__T@[$1_Event_EventHandle]Multiset_416285_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_416285_| ?x0 ?y1))) :weight 0)))
(declare-fun $t20@0 () Int)
(declare-fun $t34 () Bool)
(declare-fun $t20 () Int)
(declare-fun $t33 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun |inline$$1_Diem_value'#0'$0$$t1@1| () Int)
(declare-fun $t42 () Bool)
(declare-fun $t45 () Int)
(declare-fun $t43 () Bool)
(declare-fun $t37 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t38 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemAccount_ReceivedPaymentEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t51@0 () T@$Mutation_456960)
(declare-fun $t54@0 () T@$1_DiemAccount_ReceivedPaymentEvent)
(declare-fun $t53 () Bool)
(declare-fun $t52 () T@Vec_37831)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t50 () T@$Mutation_667554)
(declare-fun $t50@0 () T@$Mutation_667554)
(declare-fun MapConstVec_16957 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_16957 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t49 () Bool)
(declare-fun $t47@1 () T@$Mutation_552427)
(declare-fun $t47@0 () T@$Mutation_552427)
(declare-fun |$temp_0'$1_Diem_Diem'#0''@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t48@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun _$t2 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t46@2 () T@$Mutation_667508)
(declare-fun $t46@1 () T@$Mutation_667508)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_468892)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_468952)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_465676)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int |T@$1_DiemAccount_Balance'#0'|) |T@[Int]$1_DiemAccount_Balance'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemAccount_DiemAccount_$modifies () |T@[Int]Bool|)
(declare-fun $t46 () T@$Mutation_667508)
(declare-fun $t46@0 () T@$Mutation_667508)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun |$1_DiemAccount_Balance'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun |$1_AccountLimits_Window'#0'_$memory@2| () T@$Memory_525805)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_AccountLimits_Window'#0'_$memory@1| () T@$Memory_525805)
(declare-fun |$1_AccountLimits_Window'#0'_$memory@0| () T@$Memory_525805)
(declare-fun |Store__T@[Int]$1_AccountLimits_Window'#0'_| (|T@[Int]$1_AccountLimits_Window'#0'| Int |T@$1_AccountLimits_Window'#0'|) |T@[Int]$1_AccountLimits_Window'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_Window'#0'|) ( ?x1 Int) ( ?x2 |T@$1_AccountLimits_Window'#0'|)) (! (= (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|Store__T@[Int]$1_AccountLimits_Window'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_Window'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_AccountLimits_Window'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|Store__T@[Int]$1_AccountLimits_Window'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_AccountLimits_Window'#0''@0| () |T@$1_AccountLimits_Window'#0'|)
(declare-fun $t41@0 () T@$1_AccountLimits_AccountLimitMutationCapability)
(declare-fun $t40 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$1_AccountLimits_Window'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_465211)
(declare-fun $t40@0 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $abort_code@0 () Int)
(declare-fun $t36 () Bool)
(declare-fun $t30@0 () Bool)
(declare-fun $t32 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun $t29 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t26 () Int)
(declare-fun $t21 () Bool)
(declare-fun $t19 () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_495622)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_496194)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_495758)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_508646)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_501767)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_508727)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_501831)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_508808)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_509058)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_509175)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_509292)
(declare-fun |$1_AccountLimits_Window'$1_XUS_XUS'_$memory| () T@$Memory_525677)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_525873)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'_| (|T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| Int) |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun |$1_AccountLimits_Window'$1_XDX_XDX'_$memory| () T@$Memory_525741)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_526329)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| Int) |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_531513)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_548824)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_495839)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_589759)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_590447)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_465282)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $t47 () T@$Mutation_552427)
(declare-fun $t51 () T@$Mutation_456960)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_deposit$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 1985611) (let ((anon81_Else_correct  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 1221616) (- 0 1989732)) (<= (|l#Vec_416449| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_667554| $t50@1)))) 1)) (=> (<= (|l#Vec_416449| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_667554| $t50@1)))) 1) (and (=> (= (ControlFlow 0 1221616) (- 0 1989745)) (<= (|l#Vec_416410| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_667554| $t50@1)))) 1)) (=> (<= (|l#Vec_416410| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_667554| $t50@1)))) 1) (and (=> (= (ControlFlow 0 1221616) (- 0 1989764)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1))) (and (=> (= (ControlFlow 0 1221616) (- 0 1989775)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))) (and (=> (= (ControlFlow 0 1221616) (- 0 1989786)) (not (= $t15 0))) (=> (not (= $t15 0)) (and (=> (= (ControlFlow 0 1221616) (- 0 1989797)) (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000)) (and (<= (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (<= (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))))))))) (=> (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000)) (and (<= (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (<= (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))))))) (and (=> (= (ControlFlow 0 1221616) (- 0 1989827)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 1221616) (- 0 1989837)) (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (=> (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) (and (=> (= (ControlFlow 0 1221616) (- 0 1989863)) (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))))) (=> (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (and (=> (= (ControlFlow 0 1221616) (- 0 1989894)) (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) $MAX_U64))))) (=> (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) $MAX_U64)))) (and (=> (= (ControlFlow 0 1221616) (- 0 1989947)) (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) $MAX_U64))))) (=> (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) $MAX_U64)))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990000)) (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) $MAX_U64))))) (=> (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) $MAX_U64)))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990060)) (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (=> (not (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990096)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990106)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1))))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1)))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990115)) (not (> (+ (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1))) $t15) $MAX_U64))) (=> (not (> (+ (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1))) $t15) $MAX_U64)) (and (=> (= (ControlFlow 0 1221616) (- 0 1990132)) (not (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816)))))) (=> (not (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990154)) (not (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (=> (not (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990176)) (not (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 2) (div $t15 2) (+ 18446744073709551615 1)))) 18446744073709551615))))) (=> (not (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 2) (div $t15 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990203)) (not (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0))))) (=> (not (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0)))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990244)) (not (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0))))) (=> (not (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0)))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990285)) (not (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (let ((payee_compliance_key (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))))
 (and (and (= (|l#Vec_37831| _$t4) 64) (not (= (|l#Vec_37831| payee_compliance_key) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key ($1_DualAttestation_spec_dual_attestation_message _$t0 _$t3 $t15))))))))) (=> (not (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (let ((payee_compliance_key@@0 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))))
 (and (and (= (|l#Vec_37831| _$t4) 64) (not (= (|l#Vec_37831| payee_compliance_key@@0) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@0 ($1_DualAttestation_spec_dual_attestation_message _$t0 _$t3 $t15)))))))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990329)) (not (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1))))))) (=> (not (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990370)) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1) (and (=> (= (ControlFlow 0 1221616) (- 0 1990378)) (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory@0|) _$t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory@0|) _$t1) (and (=> (= (ControlFlow 0 1221616) (- 0 1990385)) (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))) (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))))) (=> (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))) (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990403)) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)))) (=> (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990421)) (= (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)))) (=> (= (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990439)) (= (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)))) (=> (= (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)) (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))) (and (=> (= (ControlFlow 0 1221616) (- 0 1990457)) (= (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory@0|) _$t1))) (+ (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1))) $t15))) (=> (= (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory@0|) _$t1))) (+ (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1))) $t15)) (and (=> (= (ControlFlow 0 1221616) (- 0 1990474)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@0) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@0)))))
 :qid |DiemAccountbpl.40959:15|
 :skolemid |1134|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@1) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@1)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@1)))))
 :qid |DiemAccountbpl.40959:15|
 :skolemid |1134|
)) (and (=> (= (ControlFlow 0 1221616) (- 0 1990510)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) addr@@2) (>= (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory@0|) addr@@2))) (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) addr@@2))))))
 :qid |DiemAccountbpl.40964:15|
 :skolemid |1135|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) addr@@3) (>= (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory@0|) addr@@3))) (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) addr@@3))))))
 :qid |DiemAccountbpl.40964:15|
 :skolemid |1135|
)) (and (=> (= (ControlFlow 0 1221616) (- 0 1990549)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $EmptyEventStore) $t16)))
(let ((stream_new (let ((len (|l#Multiset_416285| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| stream@@0) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| $t17))))
(Multiset_416285 (|Store__T@[$EventRep]Int_| (|v#Multiset_416285| stream@@0) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| $t17) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $EmptyEventStore) $t16 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@64 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| expected) handle@@1)) v@@64) (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| actual) handle@@1)) v@@64))
 :qid |DiemAccountbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemAccountbpl.3536:13|
 :skolemid |130|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $EmptyEventStore) $t16)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_416285| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| stream@@1) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| $t17))))
(Multiset_416285 (|Store__T@[$EventRep]Int_| (|v#Multiset_416285| stream@@1) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| $t17) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $EmptyEventStore) $t16 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@65 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| expected@@0) handle@@2)) v@@65) (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| actual@@0) handle@@2)) v@@65))
 :qid |DiemAccountbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemAccountbpl.3536:13|
 :skolemid |130|
))))) (=> (= (ControlFlow 0 1221616) (- 0 1990574)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $EmptyEventStore) $t16)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_416285| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| stream@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| $t17))))
(Multiset_416285 (|Store__T@[$EventRep]Int_| (|v#Multiset_416285| stream@@2) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| $t17) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $EmptyEventStore) $t16 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@66 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| actual@@1) handle@@3)) v@@66) (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| expected@@1) handle@@3)) v@@66))
 :qid |DiemAccountbpl.164:13|
 :skolemid |5|
)))
 :qid |DiemAccountbpl.3536:13|
 :skolemid |130|
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon63_Then_correct true))
(let ((L14_correct  (and (=> (= (ControlFlow 0 1219782) (- 0 1990677)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))) (= $t15 0)) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000)) (and (<= (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (<= (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) $MAX_U64)))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) $MAX_U64)))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) $MAX_U64)))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1)))) (> (+ (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1))) $t15) $MAX_U64)) (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))))) (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 2) (div $t15 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0)))) (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0)))) (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (let ((payee_compliance_key@@1 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))))
 (and (and (= (|l#Vec_37831| _$t4) 64) (not (= (|l#Vec_37831| payee_compliance_key@@1) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@1 ($1_DualAttestation_spec_dual_attestation_message _$t0 _$t3 $t15)))))))) (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1))))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))) (= $t15 0)) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000)) (and (<= (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (<= (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) $MAX_U64)))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) $MAX_U64)))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) $MAX_U64)))) (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1)))) (> (+ (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1))) $t15) $MAX_U64)) (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))))) (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 2) (div $t15 2) (+ 18446744073709551615 1)))) 18446744073709551615)))) (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0)))) (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0)))) (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (let ((payee_compliance_key@@2 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))))
 (and (and (= (|l#Vec_37831| _$t4) 64) (not (= (|l#Vec_37831| payee_compliance_key@@2) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@2 ($1_DualAttestation_spec_dual_attestation_message _$t0 _$t3 $t15)))))))) (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))))) (=> (= (ControlFlow 0 1219782) (- 0 1991218)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1)) (= 7 $t20@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)) (= 5 $t20@0))) (and (= $t15 0) (= 7 $t20@0))) (and (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000)) (and (<= (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (<= (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))))))) (= 8 $t20@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t20@0))) (and (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (= 5 $t20@0))) (and (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= 5 $t20@0))) (and (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) $MAX_U64))) (= 8 $t20@0))) (and (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))) $t15) $MAX_U64))) (= 8 $t20@0))) (and (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) $MAX_U64))) (= 8 $t20@0))) (and (and (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (= 1 $t20@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t20@0))) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1))) (= 1 $t20@0))) (and (> (+ (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1))) $t15) $MAX_U64) (= 8 $t20@0))) (and (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816)))) (= 5 $t20@0))) (and (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (= 5 $t20@0))) (and (and _$t5 (and (= (|l#Vec_37831| _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t18) 2) (div $t15 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (= 8 $t20@0))) (and (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0))) (= 1 $t20@0))) (and (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0))) (= 1 $t20@0))) (and (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (let ((payee_compliance_key@@3 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))))
 (and (and (= (|l#Vec_37831| _$t4) 64) (not (= (|l#Vec_37831| payee_compliance_key@@3) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@3 ($1_DualAttestation_spec_dual_attestation_message _$t0 _$t3 $t15))))))) (= 7 $t20@0))) (and (and _$t5 (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) $t15 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div $t15 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1))))) (= 5 $t20@0))))))))
(let ((anon67_Then_correct  (=> $t34 (=> (and (and (or (or (or (or (or (or (and (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (= 5 $t20)) (and (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t20))) (and (and (= (|l#Vec_37831| _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t33) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t33) 1) |inline$$1_Diem_value'#0'$0$$t1@1| (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t33) 2) (div |inline$$1_Diem_value'#0'$0$$t1@1| 2) (+ 18446744073709551615 1)))) 18446744073709551615)) (= 8 $t20))) (and (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) |inline$$1_Diem_value'#0'$0$$t1@1| (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div |inline$$1_Diem_value'#0'$0$$t1@1| 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0)) (= 1 $t20))) (and (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) |inline$$1_Diem_value'#0'$0$$t1@1| (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div |inline$$1_Diem_value'#0'$0$$t1@1| 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0)) (= 1 $t20))) (and (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) |inline$$1_Diem_value'#0'$0$$t1@1| (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div |inline$$1_Diem_value'#0'$0$$t1@1| 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (let ((payee_compliance_key@@4 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))))
 (and (and (= (|l#Vec_37831| _$t4) 64) (not (= (|l#Vec_37831| payee_compliance_key@@4) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@4 ($1_DualAttestation_spec_dual_attestation_message _$t0 _$t3 |inline$$1_Diem_value'#0'$0$$t1@1|)))))) (= 7 $t20))) (and (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) |inline$$1_Diem_value'#0'$0$$t1@1| (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div |inline$$1_Diem_value'#0'$0$$t1@1| 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) (= 5 $t20))) (= $t20 $t20)) (and (= $t20@0 $t20) (= (ControlFlow 0 1223188) 1219782))) L14_correct))))
(let ((anon74_Else_correct  (=> (and (and (not $t42) (= $t45 $t45)) (and (= $t20@0 $t45) (= (ControlFlow 0 1222254) 1219782))) L14_correct)))
(let ((anon72_Then_correct  (=> $t43 (=> (and (and (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (= 5 $t20)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) (= 5 $t20))) (and (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) 86400000000))) (> (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) $MAX_U64)) (= 8 $t20))) (and (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) 86400000000))) (> (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) $MAX_U64)) (= 8 $t20))) (and (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))))) $MAX_U64)) (= 8 $t20))) (and (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t20))) (= $t20 $t20)) (and (= $t20@0 $t20) (= (ControlFlow 0 1222494) 1219782))) L14_correct))))
(let ((anon71_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t20@0 $abort_code@1) (= (ControlFlow 0 1222508) 1219782))) L14_correct)))
(let ((anon69_Then_correct  (=> $t38 (=> (and (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= 7 $t20)) (= $t20 $t20)) (and (= $t20@0 $t20) (= (ControlFlow 0 1222598) 1219782))) L14_correct))))
(let ((anon81_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t20@0 $abort_code@4) (= (ControlFlow 0 1221630) 1219782))) L14_correct)))
(let ((|inline$$1_Event_emit_event'$1_DiemAccount_ReceivedPaymentEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemAccount_ReceivedPaymentEvent'$0$handle@1| (|v#$Mutation_456960| $t51@0)) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemAccount_ReceivedPaymentEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_416285| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| stream@@3) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| $t54@0))))
(Multiset_416285 (|Store__T@[$EventRep]Int_| (|v#Multiset_416285| stream@@3) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| $t54@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemAccount_ReceivedPaymentEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 1220574) 1221630) anon81_Then_correct) (=> (= (ControlFlow 0 1220574) 1221616) anon81_Else_correct)))))
(let ((anon80_Else_correct  (=> (not $t53) (=> (and (and (|$IsValid'vec'u8''| $t52) (|$IsEqual'vec'u8''| $t52 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t54@0 ($1_DiemAccount_ReceivedPaymentEvent |inline$$1_Diem_value'#0'$0$$t1@1| $t52 _$t0 _$t3)) (= (ControlFlow 0 1220580) 1220574))) |inline$$1_Event_emit_event'$1_DiemAccount_ReceivedPaymentEvent'$0$anon0_correct|))))
(let ((anon80_Then_correct  (=> $t53 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t20)) (= $t20 $t20)) (and (= $t20@0 $t20) (= (ControlFlow 0 1221656) 1219782))) L14_correct))))
(let ((anon79_Else_correct  (=> (not $abort_flag@3) (=> (and (= $t51@0 ($Mutation_456960 (|l#$Mutation_667554| $t50@1) (let ((l (|l#Vec_37831| (|p#$Mutation_667554| $t50@1))))
(Vec_37831 (|Store__T@[Int]Int_| (|v#Vec_37831| (|p#$Mutation_667554| $t50@1)) l 3) (+ l 1))) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_667554| $t50@1)))) (= $t53  (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 1220473) 1221656) anon80_Then_correct) (=> (= (ControlFlow 0 1220473) 1220580) anon80_Else_correct))))))
(let ((anon79_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t20@0 $abort_code@4) (= (ControlFlow 0 1221670) 1219782))) L14_correct)))
(let ((anon78_Then$1_correct  (=> (= $t50@1 $t50) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 1221722) 1221670) anon79_Then_correct) (=> (= (ControlFlow 0 1221722) 1220473) anon79_Else_correct))))))
(let ((anon78_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)) (= (ControlFlow 0 1221720) 1221722)) anon78_Then$1_correct)))
(let ((anon78_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1) (=> (and (and (= $t50@0 ($Mutation_667554 ($Global _$t1) (Vec_37831 (MapConstVec_16957 DefaultVecElem_16957) 0) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))) (= $t50@1 $t50@0)) (and (= $abort_code@4 $abort_code@3) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 1220441) 1221670) anon79_Then_correct) (=> (= (ControlFlow 0 1220441) 1220473) anon79_Else_correct))))))
(let ((anon77_Else_correct  (=> (and (and (and (not $t49) (= $t47@1 ($Mutation_552427 (|l#$Mutation_552427| $t47@0) (|p#$Mutation_552427| $t47@0) |$temp_0'$1_Diem_Diem'#0''@0|))) (and (|$IsValid'$1_Diem_Diem'#0''| (|v#$Mutation_552427| $t47@1)) (|$IsValid'$1_Diem_Diem'#0''| (|v#$Mutation_552427| $t47@1)))) (and (and (= (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_552427| $t47@1)) (+ (|$value#$1_Diem_Diem'#0'| $t48@0) (|$value#$1_Diem_Diem'#0'| _$t2))) (= $t46@2 ($Mutation_667508 (|l#$Mutation_667508| $t46@1) (|p#$Mutation_667508| $t46@1) (|$1_DiemAccount_Balance'#0'| (|v#$Mutation_552427| $t47@1))))) (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_468892| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_468952| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@4)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@4)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@4)) 2)))))
 :qid |DiemAccountbpl.40693:20|
 :skolemid |1126|
)) (= |$1_DiemAccount_Balance'#0'_$memory@0| ($Memory_596570 (|Store__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) (|a#$Global| (|l#$Mutation_667508| $t46@2)) true) (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) (|a#$Global| (|l#$Mutation_667508| $t46@2)) (|v#$Mutation_667508| $t46@2))))))) (and (=> (= (ControlFlow 0 1220419) (- 0 1989319)) (and (and (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468892| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_468892| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@5)))
 :qid |DiemAccountbpl.40716:17|
 :skolemid |1127|
)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468952| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_468952| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@6)))
 :qid |DiemAccountbpl.40716:215|
 :skolemid |1128|
))) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory@0|) addr@@7)))
 :qid |DiemAccountbpl.40716:414|
 :skolemid |1129|
)))) (=> (and (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468892| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_468892| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@8)))
 :qid |DiemAccountbpl.40716:17|
 :skolemid |1127|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468952| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_468952| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@9)))
 :qid |DiemAccountbpl.40716:215|
 :skolemid |1128|
))) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory@0|) addr@@10)))
 :qid |DiemAccountbpl.40716:414|
 :skolemid |1129|
))) (and (=> (= (ControlFlow 0 1220419) (- 0 1989391)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_468892| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_468952| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@11)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@11)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@11)) 2)))))
 :qid |DiemAccountbpl.40722:15|
 :skolemid |1130|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_468892| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_468952| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@12)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@12)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@12)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@12)) 2)))))
 :qid |DiemAccountbpl.40722:15|
 :skolemid |1130|
)) (and (=> (= (ControlFlow 0 1220419) (- 0 1989425)) (and (and (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468892| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@13)))
 :qid |DiemAccountbpl.40728:17|
 :skolemid |1131|
)) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468952| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@14)))
 :qid |DiemAccountbpl.40728:213|
 :skolemid |1132|
))) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory@0|) addr@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@15)))
 :qid |DiemAccountbpl.40728:410|
 :skolemid |1133|
)))) (=> (and (and (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468892| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@16)))
 :qid |DiemAccountbpl.40728:17|
 :skolemid |1131|
)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468952| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@17)))
 :qid |DiemAccountbpl.40728:213|
 :skolemid |1132|
))) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory@0|) addr@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@18)))
 :qid |DiemAccountbpl.40728:410|
 :skolemid |1133|
))) (and (=> (= (ControlFlow 0 1220419) (- 0 1989500)) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies _$t1)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies _$t1) (and (=> (= (ControlFlow 0 1220419) 1221720) anon78_Then_correct) (=> (= (ControlFlow 0 1220419) 1220441) anon78_Else_correct)))))))))))))
(let ((anon77_Then_correct  (=> $t49 (=> (and (and (and (> (+ (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_552427| $t47@0)) (|$value#$1_Diem_Diem'#0'| _$t2)) 18446744073709551615) (= 8 $t20)) (= $t20 $t20)) (and (= $t20@0 $t20) (= (ControlFlow 0 1221758) 1219782))) L14_correct))))
(let ((anon76_Else_correct  (=> (and (and (not $abort_flag@2) (= $t47@0 ($Mutation_552427 (|l#$Mutation_667508| $t46@1) (let ((l@@0 (|l#Vec_37831| (|p#$Mutation_667508| $t46@1))))
(Vec_37831 (|Store__T@[Int]Int_| (|v#Vec_37831| (|p#$Mutation_667508| $t46@1)) l@@0 0) (+ l@@0 1))) (|$coin#$1_DiemAccount_Balance'#0'| (|v#$Mutation_667508| $t46@1))))) (and (= $t48@0 (|v#$Mutation_552427| $t47@0)) (= $t49 (> (+ (|$value#$1_Diem_Diem'#0'| (|v#$Mutation_552427| $t47@0)) (|$value#$1_Diem_Diem'#0'| _$t2)) 18446744073709551615)))) (and (=> (= (ControlFlow 0 1220119) 1221758) anon77_Then_correct) (=> (= (ControlFlow 0 1220119) 1220419) anon77_Else_correct)))))
(let ((anon76_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t20@0 $abort_code@3) (= (ControlFlow 0 1221772) 1219782))) L14_correct)))
(let ((anon75_Then$1_correct  (=> (= $t46@1 $t46) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 1221824) 1221772) anon76_Then_correct) (=> (= (ControlFlow 0 1221824) 1220119) anon76_Else_correct))))))
(let ((anon75_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1)) (= (ControlFlow 0 1221822) 1221824)) anon75_Then$1_correct)))
(let ((anon75_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1) (=> (and (and (= $t46@0 ($Mutation_667508 ($Global _$t1) (Vec_37831 (MapConstVec_16957 DefaultVecElem_16957) 0) (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1))) (= $t46@1 $t46@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 1220075) 1221772) anon76_Then_correct) (=> (= (ControlFlow 0 1220075) 1220119) anon76_Else_correct))))))
(let ((L11_correct  (and (=> (= (ControlFlow 0 1220053) (- 0 1989031)) (|Select__T@[Int]Bool_| |$1_DiemAccount_Balance'#0'_$modifies| _$t1)) (=> (|Select__T@[Int]Bool_| |$1_DiemAccount_Balance'#0'_$modifies| _$t1) (and (=> (= (ControlFlow 0 1220053) 1221822) anon75_Then_correct) (=> (= (ControlFlow 0 1220053) 1220075) anon75_Else_correct))))))
(let ((anon74_Then_correct  (=> (and (and $t42 (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= (ControlFlow 0 1222258) 1220053))) L11_correct)))
(let ((anon37_correct  (=> (= $t42  (or (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) 86400000000)) (and (<= (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))))) (<= (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))))) (=> (and (ite  (and $t42 (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) 86400000000)))) (= (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory@2|) $t37) (|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| (|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) (|$window_outflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|$limit_address#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))))) (|$window_inflow#$1_AccountLimits_Window'#0'| (|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) (|$window_outflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|$limit_address#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))))) (|$window_outflow#$1_AccountLimits_Window'#0'| (|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) (|$window_outflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|$limit_address#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))))) (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) (|$limit_address#$1_AccountLimits_Window'#0'| (|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) (|$window_outflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|$limit_address#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))))  (or (= (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory@2|) $t37) (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (= (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory@2|) $t37) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) (|$IsValid'u64'| 3)) (=> (and (and (|$IsValid'u64'| $t45) (= $t45 8)) (and (= $t45 $t45) (= $t42 $t42))) (and (=> (= (ControlFlow 0 1222238) 1222258) anon74_Then_correct) (=> (= (ControlFlow 0 1222238) 1222254) anon74_Else_correct)))))))
(let ((anon73_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= |$1_AccountLimits_Window'#0'_$memory@1| ($Memory_525805 (|Store__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37 false) (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|)))) (and (= |$1_AccountLimits_Window'#0'_$memory@2| |$1_AccountLimits_Window'#0'_$memory@1|) (= (ControlFlow 0 1222104) 1222238))) anon37_correct)))
(let ((anon73_Then_correct  (=> (and (and |$temp_0'bool'@0| (= |$1_AccountLimits_Window'#0'_$memory@0| ($Memory_525805 (|Store__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37 true) (|Store__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37 |$temp_0'$1_AccountLimits_Window'#0''@0|)))) (and (= |$1_AccountLimits_Window'#0'_$memory@2| |$1_AccountLimits_Window'#0'_$memory@0|) (= (ControlFlow 0 1222270) 1222238))) anon37_correct)))
(let ((anon72_Else_correct  (=> (not $t43) (and (=> (= (ControlFlow 0 1222092) 1222270) anon73_Then_correct) (=> (= (ControlFlow 0 1222092) 1222104) anon73_Else_correct)))))
(let ((anon71_Else_correct  (=> (and (not $abort_flag@0) (= $t41@0 (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t40))) (and (=> (= (ControlFlow 0 1222084) (- 0 1988440)) (|Select__T@[Int]Bool_| |$1_AccountLimits_Window'#0'_$modifies| $t37)) (=> (|Select__T@[Int]Bool_| |$1_AccountLimits_Window'#0'_$modifies| $t37) (=> (= $t43  (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) 86400000000))) (> (+ (|$window_inflow#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) $MAX_U64))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) 86400000000))) (> (+ (|$tracked_balance#$1_AccountLimits_Window'#0'| (ite (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))))) (|$1_AccountLimits_Window'#0'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0 0 (|$tracked_balance#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))) |inline$$1_Diem_value'#0'$0$$t1@1|) $MAX_U64))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) 86400000000))) (> (+ (|$window_start#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37))))) $MAX_U64))) (and (not (and (and (and (= (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64) (= (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) $MAX_U64)) (= (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $t37)))) 86400000000))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 1222084) 1222494) anon72_Then_correct) (=> (= (ControlFlow 0 1222084) 1222092) anon72_Else_correct))))))))
(let ((anon70_Then$1_correct  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 1222560) 1222508) anon71_Then_correct) (=> (= (ControlFlow 0 1222560) 1222084) anon71_Else_correct)))))
(let ((anon70_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_465211| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (= (ControlFlow 0 1222558) 1222560)) anon70_Then$1_correct)))
(let ((anon70_Else_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_465211| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (= $t40@0 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_465211| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 1221896) 1222508) anon71_Then_correct) (=> (= (ControlFlow 0 1221896) 1222084) anon71_Else_correct)))))
(let ((anon69_Else_correct  (=> (and (and (not $t38) (|$IsValid'address'| $t37)) (and (= $t37 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|$IsValid'address'| 173345816))) (and (=> (= (ControlFlow 0 1221882) 1222558) anon70_Then_correct) (=> (= (ControlFlow 0 1221882) 1221896) anon70_Else_correct)))))
(let ((anon68_Then_correct  (=> (and $t36 (= $t38  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))))) (and (=> (= (ControlFlow 0 1221852) 1222598) anon69_Then_correct) (=> (= (ControlFlow 0 1221852) 1221882) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (and (not $t36) (= $abort_code@2 $abort_code@0)) (and (= $abort_flag@1 false) (= (ControlFlow 0 1220045) 1220053))) L11_correct)))
(let ((L8_correct  (=> (= $t36 (ite false  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))  (and (and (ite  (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))))))))) (and (=> (= (ControlFlow 0 1220039) 1221852) anon68_Then_correct) (=> (= (ControlFlow 0 1220039) 1220045) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (not $t34) (= (ControlFlow 0 1222874) 1220039)) L8_correct)))
(let ((anon66_Then_correct  (=> _$t5 (=> (and (= $t33 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t34  (or (or (or (or (or (or (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (and (= (|l#Vec_37831| _$t4) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= (|l#Vec_37831| _$t4) 0) (> (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t33) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t33) 1) |inline$$1_Diem_value'#0'$0$$t1@1| (ite (= (|$value#$1_FixedPoint32_FixedPoint32| $t33) 2) (div |inline$$1_Diem_value'#0'$0$$t1@1| 2) (+ 18446744073709551615 1)))) 18446744073709551615))) (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) |inline$$1_Diem_value'#0'$0$$t1@1| (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div |inline$$1_Diem_value'#0'$0$$t1@1| 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0))) (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) |inline$$1_Diem_value'#0'$0$$t1@1| (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div |inline$$1_Diem_value'#0'$0$$t1@1| 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (= (|l#Vec_37831| (|$base_url#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))) 0))) (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) |inline$$1_Diem_value'#0'$0$$t1@1| (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div |inline$$1_Diem_value'#0'$0$$t1@1| 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (let ((payee_compliance_key@@5 (|$compliance_public_key#$1_DualAttestation_Credential| (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1)))))
 (and (and (= (|l#Vec_37831| _$t4) 64) (not (= (|l#Vec_37831| payee_compliance_key@@5) 0))) ($1_Signature_$ed25519_verify _$t4 payee_compliance_key@@5 ($1_DualAttestation_spec_dual_attestation_message _$t0 _$t3 |inline$$1_Diem_value'#0'$0$$t1@1|))))))) (and (or (not (= (|l#Vec_37831| _$t4) 0)) (and (and (>= (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 0) 0 (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 1) |inline$$1_Diem_value'#0'$0$$t1@1| (ite (= (|$value#$1_FixedPoint32_FixedPoint32| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) 2) (div |inline$$1_Diem_value'#0'$0$$t1@1| 2) (+ 18446744073709551615 1)))) (|$micro_xdx_limit#$1_DualAttestation_Limit| (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (not (= _$t0 _$t1))) (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) (not (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_469122| $1_DualAttestation_Credential_$memory) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1))) _$t1))))))) (and (=> (= (ControlFlow 0 1222866) 1223188) anon67_Then_correct) (=> (= (ControlFlow 0 1222866) 1222874) anon67_Else_correct))))))
(let ((anon66_Else_correct  (=> (and (not _$t5) (= (ControlFlow 0 1220009) 1220039)) L8_correct)))
(let ((anon65_Then_correct  (=> $t30@0 (and (=> (= (ControlFlow 0 1220003) 1222866) anon66_Then_correct) (=> (= (ControlFlow 0 1220003) 1220009) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (and (and (not $t30@0) (= $t32 $t32)) (and (= $t20@0 $t32) (= (ControlFlow 0 1219999) 1219782))) L14_correct)))
(let ((anon64_Then_correct  (=> inline$$1_DiemAccount_exists_at$0$$t1@1 (=> (and (= $t30@0 (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) _$t1)) (|$IsValid'u64'| 18)) (=> (and (and (|$IsValid'u64'| $t32) (= $t32 7)) (and (= $t32 $t32) (= $t30@0 $t30@0))) (and (=> (= (ControlFlow 0 1219983) 1220003) anon65_Then_correct) (=> (= (ControlFlow 0 1219983) 1219999) anon65_Else_correct)))))))
(let ((anon64_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1) (= $t29 $t29)) (and (= $t20@0 $t29) (= (ControlFlow 0 1219941) 1219782))) L14_correct)))
(let ((anon63_Else_correct  (=> (and (not false) (|$IsValid'u64'| 17)) (=> (and (and (|$IsValid'u64'| $t29) (= $t29 5)) (and (= $t29 $t29) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 1219925) 1219983) anon64_Then_correct) (=> (= (ControlFlow 0 1219925) 1219941) anon64_Else_correct))))))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= _$t1 _$t1) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 1219883) 1223202) anon63_Then_correct) (=> (= (ControlFlow 0 1219883) 1219925) anon63_Else_correct))))))
(let ((anon62_Then_correct  (=> (and inline$$Gt$0$dst@1 (= (ControlFlow 0 1219889) 1219883)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((anon62_Else_correct  (=> (and (and (not inline$$Gt$0$dst@1) (= $t26 $t26)) (and (= $t20@0 $t26) (= (ControlFlow 0 1218202) 1219782))) L14_correct)))
(let ((anon61_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t26) (= $t26 7)) (and (= $t26 $t26) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 1218186) 1219889) anon62_Then_correct) (=> (= (ControlFlow 0 1218186) 1218202) anon62_Else_correct))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> |inline$$1_Diem_value'#0'$0$$t1@1| 0)) (= (ControlFlow 0 1218150) 1218186)) anon61_Else$1_correct)))
(let ((anon61_Else_correct  (=> (and (and (not false) (= |inline$$1_Diem_value'#0'$0$$t1@1| |inline$$1_Diem_value'#0'$0$$t1@1|)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 1218156) 1218150))) inline$$Gt$0$anon0_correct)))
(let ((anon60_Then_correct  (=> $t21 (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1))) (= 1 $t20)) (= $t20 $t20)) (and (= $t20@0 $t20) (= (ControlFlow 0 1223242) 1219782))) L14_correct))))
(let ((anon59_Then_correct  (=> $t19 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t20)) (= $t20 $t20)) (and (= $t20@0 $t20) (= (ControlFlow 0 1223268) 1219782))) L14_correct))))
(let ((anon61_Then_correct true))
(let ((|inline$$1_Diem_value'#0'$0$anon0_correct|  (=> (= _$t2 _$t2) (=> (and (= |inline$$1_Diem_value'#0'$0$$t1@1| (|$value#$1_Diem_Diem'#0'| _$t2)) (= |inline$$1_Diem_value'#0'$0$$t1@1| |inline$$1_Diem_value'#0'$0$$t1@1|)) (and (=> (= (ControlFlow 0 1218082) 1223216) anon61_Then_correct) (=> (= (ControlFlow 0 1218082) 1218156) anon61_Else_correct))))))
(let ((anon60_Else_correct  (=> (and (not $t21) (= (ControlFlow 0 1218088) 1218082)) |inline$$1_Diem_value'#0'$0$anon0_correct|)))
(let ((anon59_Else_correct  (=> (and (not $t19) (= $t21  (and (|Select__T@[Int]Bool_| (|domain#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) _$t1))))) (and (=> (= (ControlFlow 0 1217981) 1223242) anon60_Then_correct) (=> (= (ControlFlow 0 1217981) 1218088) anon60_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_495622| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_495622| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_496194| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_495758| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))) (and (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_508646| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_501767| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemAccountbpl.39901:22|
 :skolemid |1089|
)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_508727| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_501831| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemAccountbpl.39901:222|
 :skolemid |1090|
))) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_508808| |$1_Diem_Preburn'#0'_$memory|) addr@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemAccountbpl.39901:423|
 :skolemid |1091|
)))) (and (and (and (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_509058| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_501767| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |DiemAccountbpl.39905:22|
 :skolemid |1092|
)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_509175| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_501831| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |DiemAccountbpl.39905:227|
 :skolemid |1093|
))) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_509292| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |DiemAccountbpl.39905:433|
 :skolemid |1094|
))) (and (and (forall ((window_addr Int) ) (!  (=> (|$IsValid'address'| window_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_525677| |$1_AccountLimits_Window'$1_XUS_XUS'_$memory|) window_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_525873| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'_| (|contents#$Memory_525677| |$1_AccountLimits_Window'$1_XUS_XUS'_$memory|) window_addr)))))
 :qid |DiemAccountbpl.39909:22|
 :skolemid |1095|
)) (forall ((window_addr@@0 Int) ) (!  (=> (|$IsValid'address'| window_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_525741| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) window_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_526329| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| (|Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|contents#$Memory_525741| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) window_addr@@0)))))
 :qid |DiemAccountbpl.39909:369|
 :skolemid |1096|
))) (forall ((window_addr@@1 Int) ) (!  (=> (|$IsValid'address'| window_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) window_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) (|$limit_address#$1_AccountLimits_Window'#0'| (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) window_addr@@1)))))
 :qid |DiemAccountbpl.39909:717|
 :skolemid |1097|
))))) (=> (and (and (and (and (and (and (and (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_525677| |$1_AccountLimits_Window'$1_XUS_XUS'_$memory|) addr@@25) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@25) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@25)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@25)) 6)))))
 :qid |DiemAccountbpl.39913:22|
 :skolemid |1098|
)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_525741| |$1_AccountLimits_Window'$1_XDX_XDX'_$memory|) addr@@26) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@26) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@26)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@26)) 6)))))
 :qid |DiemAccountbpl.39913:388|
 :skolemid |1099|
))) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) addr@@27) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@27) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@27)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@27)) 6)))))
 :qid |DiemAccountbpl.39913:755|
 :skolemid |1100|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_501767| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_525873| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_531513| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_501831| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_526329| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |DiemAccountbpl.39937:20|
 :skolemid |1101|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_548824| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_553588| $1_DualAttestation_Limit_$memory) 173345816))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_469122| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |DiemAccountbpl.39949:20|
 :skolemid |1102|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_495839| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_589759| $1_ChainId_ChainId_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_590447| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) 186537453))))))))) (and (and (and (and (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@28) (or (= (|l#Vec_416410| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@28)))) 0) (and (not (= (|l#Vec_416410| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@28)))) 0)) (= addr@@28 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@28)))) 0)))))))
 :qid |DiemAccountbpl.39973:20|
 :skolemid |1103|
)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@29) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@29) (= (|l#Vec_416449| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@29)))) 0)) (and (not (= (|l#Vec_416449| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@29)))) 0)) (= addr@@29 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@29)))) 0)))))))
 :qid |DiemAccountbpl.39977:20|
 :skolemid |1104|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_465211| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_465282| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)))) (and (and (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@30) (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@30)))
 :qid |DiemAccountbpl.39989:20|
 :skolemid |1105|
)) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (= addr@@31 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@31)) (|Select__T@[Int]Bool_| (|domain#$Memory_465211| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@31)))
 :qid |DiemAccountbpl.39993:20|
 :skolemid |1106|
))) (and (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_469122| $1_DualAttestation_Credential_$memory) addr@@32) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@32)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@32)) 5)))))
 :qid |DiemAccountbpl.39997:20|
 :skolemid |1107|
)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@33) (|Select__T@[Int]Bool_| (|domain#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) addr@@33)))
 :qid |DiemAccountbpl.40001:20|
 :skolemid |1108|
))))) (and (and (and (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468892| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@34) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@34)))
 :qid |DiemAccountbpl.40005:22|
 :skolemid |1109|
)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_468952| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@35) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@35)))
 :qid |DiemAccountbpl.40005:218|
 :skolemid |1110|
))) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) addr@@36) (|Select__T@[Int]Bool_| (|domain#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) addr@@36)))
 :qid |DiemAccountbpl.40005:415|
 :skolemid |1111|
))) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) addr@@37) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@37)) 5))))
 :qid |DiemAccountbpl.40009:20|
 :skolemid |1112|
))))) (and (and (and (and (and (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_469520| $1_VASP_ChildVASP_$memory) addr@@38) (and (|Select__T@[Int]Bool_| (|domain#$Memory_465676| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_465676| $1_Roles_RoleId_$memory) addr@@38)) 6))))
 :qid |DiemAccountbpl.40013:20|
 :skolemid |1113|
)) (|$IsValid'address'| _$t0)) (and (|$IsValid'address'| _$t1) (|$IsValid'$1_Diem_Diem'#0''| _$t2))) (and (and (|$IsValid'vec'u8''| _$t3) (|$IsValid'vec'u8''| _$t4)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemAccountbpl.40034:20|
 :skolemid |1114|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@0) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0) 10000000000))))
 :qid |DiemAccountbpl.40038:20|
 :skolemid |1115|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0))
))))) (and (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| $rsc@@1) (and (and (and (> (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| $rsc@@1) 0) (> (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| $rsc@@1) 0)) (> (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| $rsc@@1) 0)) (> (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| $rsc@@1) 0))))
 :qid |DiemAccountbpl.40042:20|
 :skolemid |1116|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|contents#$Memory_526785| |$1_AccountLimits_LimitsDefinition'#0'_$memory|) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $a_0@@2)))
(|$IsValid'$1_AccountLimits_Window'#0''| $rsc@@2))
 :qid |DiemAccountbpl.40046:20|
 :skolemid |1117|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_525805| |$1_AccountLimits_Window'#0'_$memory|) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) $a_0@@3)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@3))
 :qid |DiemAccountbpl.40050:20|
 :skolemid |1118|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_469420| $1_VASP_ParentVASP_$memory) $a_0@@4)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@4))
 :qid |DiemAccountbpl.40054:20|
 :skolemid |1119|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_469420| $1_VASP_ParentVASP_$memory) $a_0@@4))
)))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) $a_0@@5)))
(|$IsValid'$1_DualAttestation_Credential'| $rsc@@5))
 :qid |DiemAccountbpl.40058:20|
 :skolemid |1120|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Credential_| (|contents#$Memory_469122| $1_DualAttestation_Credential_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) $a_0@@6)))
(|$IsValid'$1_DualAttestation_Limit'| $rsc@@6))
 :qid |DiemAccountbpl.40062:20|
 :skolemid |1121|
 :pattern ( (|Select__T@[Int]$1_DualAttestation_Limit_| (|contents#$Memory_553588| $1_DualAttestation_Limit_$memory) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) $a_0@@7)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@7))
 :qid |DiemAccountbpl.40066:20|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_590069| $1_AccountFreezing_FreezingBit_$memory) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) $a_0@@8)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@8) (and (<= (|l#Vec_416449| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@8))) 1) (<= (|l#Vec_416410| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@8))) 1))))
 :qid |DiemAccountbpl.40070:20|
 :skolemid |1123|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) $a_0@@8))
)))))) (and (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_465211| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@9)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@9))
 :qid |DiemAccountbpl.40074:20|
 :skolemid |1124|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_465211| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@10)))
(|$IsValid'$1_DiemAccount_Balance'#0''| $rsc@@10))
 :qid |DiemAccountbpl.40078:20|
 :skolemid |1125|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_596570| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@10))
))) (and (= $t15 (|$value#$1_Diem_Diem'#0'| _$t2)) (= $t16 (|$received_events#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_468705| $1_DiemAccount_DiemAccount_$memory) _$t1))))) (and (and (= $t17 ($1_DiemAccount_ReceivedPaymentEvent $t15 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t0 _$t3)) (= $t18 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_502017| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (|Select__T@[Int]Bool_| |$1_DiemAccount_Balance'#0'_$modifies| _$t1) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies _$t1)))) (and (and (and (|Select__T@[Int]Bool_| |$1_AccountLimits_Window'#0'_$modifies| (ite (|Select__T@[Int]Bool_| (|domain#$Memory_469420| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_469520| $1_VASP_ChildVASP_$memory) _$t1)))) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= _$t2 _$t2))) (and (and (= _$t3 _$t3) (= _$t4 _$t4)) (and (= _$t5 _$t5) (= $t19  (not (|Select__T@[Int]Bool_| (|domain#$Memory_463734| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))) (and (=> (= (ControlFlow 0 1217963) 1223268) anon59_Then_correct) (=> (= (ControlFlow 0 1217963) 1217981) anon59_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_416285| stream@@4) 0) (forall ((v@@67 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| stream@@4) v@@67) 0)
 :qid |DiemAccountbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemAccountbpl.3520:13|
 :skolemid |129|
))) (= (ControlFlow 0 1216474) 1217963)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (|l#Vec_37831| (|p#$Mutation_667508| $t46)) 0) (=> (and (and (= (|l#Vec_37831| (|p#$Mutation_552427| $t47)) 0) (= (|l#Vec_37831| (|p#$Mutation_667554| $t50)) 0)) (and (= (|l#Vec_37831| (|p#$Mutation_456960| $t51)) 0) (= (ControlFlow 0 1216484) 1216474))) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 1985611) 1216484) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_456329 0)) ((($Memory_456329 (|domain#$Memory_456329| |T@[Int]Bool|) (|contents#$Memory_456329| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_418331 0)) (((Vec_418331 (|v#Vec_418331| |T@[Int]#0|) (|l#Vec_418331| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_1071867 0)) ((($Memory_1071867 (|domain#$Memory_1071867| |T@[Int]Bool|) (|contents#$Memory_1071867| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_465282 0)) ((($Memory_465282 (|domain#$Memory_465282| |T@[Int]Bool|) (|contents#$Memory_465282| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_590069 0)) ((($Memory_590069 (|domain#$Memory_590069| |T@[Int]Bool|) (|contents#$Memory_590069| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_590447 0)) ((($Memory_590447 (|domain#$Memory_590447| |T@[Int]Bool|) (|contents#$Memory_590447| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_589759 0)) ((($Memory_589759 (|domain#$Memory_589759| |T@[Int]Bool|) (|contents#$Memory_589759| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_469037 0)) ((($Memory_469037 (|domain#$Memory_469037| |T@[Int]Bool|) (|contents#$Memory_469037| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_HaltAllTransactions 0)) ((($1_DiemTransactionPublishingOption_HaltAllTransactions (|$dummy_field#$1_DiemTransactionPublishingOption_HaltAllTransactions| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions| 0)
(declare-datatypes ((T@$Memory_562714 0)) ((($Memory_562714 (|domain#$Memory_562714| |T@[Int]Bool|) (|contents#$Memory_562714| |T@[Int]$1_DiemTransactionPublishingOption_HaltAllTransactions|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_553588 0)) ((($Memory_553588 (|domain#$Memory_553588| |T@[Int]Bool|) (|contents#$Memory_553588| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_469420 0)) ((($Memory_469420 (|domain#$Memory_469420| |T@[Int]Bool|) (|contents#$Memory_469420| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_469520 0)) ((($Memory_469520 (|domain#$Memory_469520| |T@[Int]Bool|) (|contents#$Memory_469520| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_468805 0)) ((($Memory_468805 (|domain#$Memory_468805| |T@[Int]Bool|) (|contents#$Memory_468805| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_442547 0)) (((Vec_442547 (|v#Vec_442547| |T@[Int]$1_XDX_XDX|) (|l#Vec_442547| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_445227 0)) (((Vec_445227 (|v#Vec_445227| |T@[Int]$1_XUS_XUS|) (|l#Vec_445227| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_525805 0)) ((($Memory_525805 (|domain#$Memory_525805| |T@[Int]Bool|) (|contents#$Memory_525805| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_525741 0)) ((($Memory_525741 (|domain#$Memory_525741| |T@[Int]Bool|) (|contents#$Memory_525741| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_525677 0)) ((($Memory_525677 (|domain#$Memory_525677| |T@[Int]Bool|) (|contents#$Memory_525677| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_526785 0)) ((($Memory_526785 (|domain#$Memory_526785| |T@[Int]Bool|) (|contents#$Memory_526785| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_526329 0)) ((($Memory_526329 (|domain#$Memory_526329| |T@[Int]Bool|) (|contents#$Memory_526329| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_525873 0)) ((($Memory_525873 (|domain#$Memory_525873| |T@[Int]Bool|) (|contents#$Memory_525873| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_465211 0)) ((($Memory_465211 (|domain#$Memory_465211| |T@[Int]Bool|) (|contents#$Memory_465211| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_508479 0)) ((($Memory_508479 (|domain#$Memory_508479| |T@[Int]Bool|) (|contents#$Memory_508479| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_508392 0)) ((($Memory_508392 (|domain#$Memory_508392| |T@[Int]Bool|) (|contents#$Memory_508392| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_508305 0)) ((($Memory_508305 (|domain#$Memory_508305| |T@[Int]Bool|) (|contents#$Memory_508305| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_502894 0)) ((($Memory_502894 (|domain#$Memory_502894| |T@[Int]Bool|) (|contents#$Memory_502894| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_502807 0)) ((($Memory_502807 (|domain#$Memory_502807| |T@[Int]Bool|) (|contents#$Memory_502807| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_502720 0)) ((($Memory_502720 (|domain#$Memory_502720| |T@[Int]Bool|) (|contents#$Memory_502720| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_596570 0)) ((($Memory_596570 (|domain#$Memory_596570| |T@[Int]Bool|) (|contents#$Memory_596570| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_508808 0)) ((($Memory_508808 (|domain#$Memory_508808| |T@[Int]Bool|) (|contents#$Memory_508808| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'#0'| 0)) (((|$1_TransactionFee_TransactionFee'#0'| (|$balance#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Diem'#0'|) (|$preburn#$1_TransactionFee_TransactionFee'#0'| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'#0'| 0)
(declare-datatypes ((T@$Memory_548952 0)) ((($Memory_548952 (|domain#$Memory_548952| |T@[Int]Bool|) (|contents#$Memory_548952| |T@[Int]$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_468952 0)) ((($Memory_468952 (|domain#$Memory_468952| |T@[Int]Bool|) (|contents#$Memory_468952| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_508727 0)) ((($Memory_508727 (|domain#$Memory_508727| |T@[Int]Bool|) (|contents#$Memory_508727| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XDX_XDX'| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_548888 0)) ((($Memory_548888 (|domain#$Memory_548888| |T@[Int]Bool|) (|contents#$Memory_548888| |T@[Int]$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_531513 0)) ((($Memory_531513 (|domain#$Memory_531513| |T@[Int]Bool|) (|contents#$Memory_531513| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_468892 0)) ((($Memory_468892 (|domain#$Memory_468892| |T@[Int]Bool|) (|contents#$Memory_468892| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_508646 0)) ((($Memory_508646 (|domain#$Memory_508646| |T@[Int]Bool|) (|contents#$Memory_508646| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_548824 0)) ((($Memory_548824 (|domain#$Memory_548824| |T@[Int]Bool|) (|contents#$Memory_548824| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_497679 0)) ((($Memory_497679 (|domain#$Memory_497679| |T@[Int]Bool|) (|contents#$Memory_497679| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_497592 0)) ((($Memory_497592 (|domain#$Memory_497592| |T@[Int]Bool|) (|contents#$Memory_497592| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_497505 0)) ((($Memory_497505 (|domain#$Memory_497505| |T@[Int]Bool|) (|contents#$Memory_497505| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_497418 0)) ((($Memory_497418 (|domain#$Memory_497418| |T@[Int]Bool|) (|contents#$Memory_497418| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_497331 0)) ((($Memory_497331 (|domain#$Memory_497331| |T@[Int]Bool|) (|contents#$Memory_497331| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_497934 0)) ((($Memory_497934 (|domain#$Memory_497934| |T@[Int]Bool|) (|contents#$Memory_497934| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_496082 0)) ((($Memory_496082 (|domain#$Memory_496082| |T@[Int]Bool|) (|contents#$Memory_496082| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_496194 0)) ((($Memory_496194 (|domain#$Memory_496194| |T@[Int]Bool|) (|contents#$Memory_496194| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_496001 0)) ((($Memory_496001 (|domain#$Memory_496001| |T@[Int]Bool|) (|contents#$Memory_496001| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_495622 0)) ((($Memory_495622 (|domain#$Memory_495622| |T@[Int]Bool|) (|contents#$Memory_495622| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_416449 0)) (((Vec_416449 (|v#Vec_416449| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_416449| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_416449) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_416410 0)) (((Vec_416410 (|v#Vec_416410| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_416410| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_416410) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_37831 0)) (((Vec_37831 (|v#Vec_37831| |T@[Int]Int|) (|l#Vec_37831| Int) ) ) ))
(declare-sort |T@[Int]Vec_37831| 0)
(declare-datatypes ((T@Vec_416632 0)) (((Vec_416632 (|v#Vec_416632| |T@[Int]Vec_37831|) (|l#Vec_416632| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_416632) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_495839 0)) ((($Memory_495839 (|domain#$Memory_495839| |T@[Int]Bool|) (|contents#$Memory_495839| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_416632) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_495758 0)) ((($Memory_495758 (|domain#$Memory_495758| |T@[Int]Bool|) (|contents#$Memory_495758| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_37831) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_37831) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_495920 0)) ((($Memory_495920 (|domain#$Memory_495920| |T@[Int]Bool|) (|contents#$Memory_495920| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_37831) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_468705 0)) ((($Memory_468705 (|domain#$Memory_468705| |T@[Int]Bool|) (|contents#$Memory_468705| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_565768 0)) ((($Memory_565768 (|domain#$Memory_565768| |T@[Int]Bool|) (|contents#$Memory_565768| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_565545 0)) ((($Memory_565545 (|domain#$Memory_565545| |T@[Int]Bool|) (|contents#$Memory_565545| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)) (((|$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_565322 0)) ((($Memory_565322 (|domain#$Memory_565322| |T@[Int]Bool|) (|contents#$Memory_565322| |T@[Int]$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_37831) (|$base_url#$1_DualAttestation_Credential| T@Vec_37831) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_37831) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_469122 0)) ((($Memory_469122 (|domain#$Memory_469122| |T@[Int]Bool|) (|contents#$Memory_469122| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_417075 0)) (((Vec_417075 (|v#Vec_417075| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_417075| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_417075) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_532840 0)) ((($Memory_532840 (|domain#$Memory_532840| |T@[Int]Bool|) (|contents#$Memory_532840| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_416920 0)) (((Vec_416920 (|v#Vec_416920| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_416920| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_416920) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_509292 0)) ((($Memory_509292 (|domain#$Memory_509292| |T@[Int]Bool|) (|contents#$Memory_509292| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_416881 0)) (((Vec_416881 (|v#Vec_416881| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_416881| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_416881) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_509175 0)) ((($Memory_509175 (|domain#$Memory_509175| |T@[Int]Bool|) (|contents#$Memory_509175| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_416842 0)) (((Vec_416842 (|v#Vec_416842| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_416842| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_416842) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_509058 0)) ((($Memory_509058 (|domain#$Memory_509058| |T@[Int]Bool|) (|contents#$Memory_509058| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_37831) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_502017 0)) ((($Memory_502017 (|domain#$Memory_502017| |T@[Int]Bool|) (|contents#$Memory_502017| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_37831) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_501831 0)) ((($Memory_501831 (|domain#$Memory_501831| |T@[Int]Bool|) (|contents#$Memory_501831| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_37831) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_501767 0)) ((($Memory_501767 (|domain#$Memory_501767| |T@[Int]Bool|) (|contents#$Memory_501767| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_37831) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_37831) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_416371 0)) (((Vec_416371 (|v#Vec_416371| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_416371| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_416371) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_416575 0)) (((Vec_416575 (|v#Vec_416575| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_416575| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_416575) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_495677 0)) ((($Memory_495677 (|domain#$Memory_495677| |T@[Int]Bool|) (|contents#$Memory_495677| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_37831) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_469220 0)) ((($Memory_469220 (|domain#$Memory_469220| |T@[Int]Bool|) (|contents#$Memory_469220| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_37831) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_469320 0)) ((($Memory_469320 (|domain#$Memory_469320| |T@[Int]Bool|) (|contents#$Memory_469320| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_465676 0)) ((($Memory_465676 (|domain#$Memory_465676| |T@[Int]Bool|) (|contents#$Memory_465676| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_463734 0)) ((($Memory_463734 (|domain#$Memory_463734| |T@[Int]Bool|) (|contents#$Memory_463734| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_37831) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_37831) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_37831) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_37831) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_37831) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_37831) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_37831) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_37831) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_37831) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_37831) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_37831) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_37831) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_37831) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_416285 0)) (((Multiset_416285 (|v#Multiset_416285| |T@[$EventRep]Int|) (|l#Multiset_416285| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_416285| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_416285|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_1063555 0)) ((($Mutation_1063555 (|l#$Mutation_1063555| T@$Location) (|p#$Mutation_1063555| T@Vec_37831) (|v#$Mutation_1063555| T@$1_DiemAccount_DiemWriteSetManager) ) ) ))
(declare-datatypes ((T@$Mutation_872575 0)) ((($Mutation_872575 (|l#$Mutation_872575| T@$Location) (|p#$Mutation_872575| T@Vec_37831) (|v#$Mutation_872575| T@$1_DiemAccount_AccountOperationsCapability) ) ) ))
(declare-datatypes ((T@$Mutation_868853 0)) ((($Mutation_868853 (|l#$Mutation_868853| T@$Location) (|p#$Mutation_868853| T@Vec_37831) (|v#$Mutation_868853| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_865882 0)) ((($Mutation_865882 (|l#$Mutation_865882| T@$Location) (|p#$Mutation_865882| T@Vec_37831) (|v#$Mutation_865882| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_689862 0)) ((($Mutation_689862 (|l#$Mutation_689862| T@$Location) (|p#$Mutation_689862| T@Vec_37831) (|v#$Mutation_689862| |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_678716 0)) ((($Mutation_678716 (|l#$Mutation_678716| T@$Location) (|p#$Mutation_678716| T@Vec_37831) (|v#$Mutation_678716| |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_667554 0)) ((($Mutation_667554 (|l#$Mutation_667554| T@$Location) (|p#$Mutation_667554| T@Vec_37831) (|v#$Mutation_667554| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_667508 0)) ((($Mutation_667508 (|l#$Mutation_667508| T@$Location) (|p#$Mutation_667508| T@Vec_37831) (|v#$Mutation_667508| |T@$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_592079 0)) ((($Mutation_592079 (|l#$Mutation_592079| T@$Location) (|p#$Mutation_592079| T@Vec_37831) (|v#$Mutation_592079| T@$1_AccountFreezing_FreezeEventsHolder) ) ) ))
(declare-datatypes ((T@$Mutation_592036 0)) ((($Mutation_592036 (|l#$Mutation_592036| T@$Location) (|p#$Mutation_592036| T@Vec_37831) (|v#$Mutation_592036| T@$1_AccountFreezing_FreezingBit) ) ) ))
(declare-datatypes ((T@$Mutation_579987 0)) ((($Mutation_579987 (|l#$Mutation_579987| T@$Location) (|p#$Mutation_579987| T@Vec_37831) (|v#$Mutation_579987| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_558933 0)) ((($Mutation_558933 (|l#$Mutation_558933| T@$Location) (|p#$Mutation_558933| T@Vec_37831) (|v#$Mutation_558933| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_552427 0)) ((($Mutation_552427 (|l#$Mutation_552427| T@$Location) (|p#$Mutation_552427| T@Vec_37831) (|v#$Mutation_552427| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_552381 0)) ((($Mutation_552381 (|l#$Mutation_552381| T@$Location) (|p#$Mutation_552381| T@Vec_37831) (|v#$Mutation_552381| |T@$1_TransactionFee_TransactionFee'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_551443 0)) ((($Mutation_551443 (|l#$Mutation_551443| T@$Location) (|p#$Mutation_551443| T@Vec_37831) (|v#$Mutation_551443| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_551397 0)) ((($Mutation_551397 (|l#$Mutation_551397| T@$Location) (|p#$Mutation_551397| T@Vec_37831) (|v#$Mutation_551397| |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_550513 0)) ((($Mutation_550513 (|l#$Mutation_550513| T@$Location) (|p#$Mutation_550513| T@Vec_37831) (|v#$Mutation_550513| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_550467 0)) ((($Mutation_550467 (|l#$Mutation_550467| T@$Location) (|p#$Mutation_550467| T@Vec_37831) (|v#$Mutation_550467| |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_542522 0)) ((($Mutation_542522 (|l#$Mutation_542522| T@$Location) (|p#$Mutation_542522| T@Vec_37831) (|v#$Mutation_542522| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_533326 0)) ((($Mutation_533326 (|l#$Mutation_533326| T@$Location) (|p#$Mutation_533326| T@Vec_37831) (|v#$Mutation_533326| T@$1_VASPDomain_VASPDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_533261 0)) ((($Mutation_533261 (|l#$Mutation_533261| T@$Location) (|p#$Mutation_533261| T@Vec_37831) (|v#$Mutation_533261| T@$1_VASPDomain_VASPDomains) ) ) ))
(declare-datatypes ((T@$Mutation_65773 0)) ((($Mutation_65773 (|l#$Mutation_65773| T@$Location) (|p#$Mutation_65773| T@Vec_37831) (|v#$Mutation_65773| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_515714 0)) ((($Mutation_515714 (|l#$Mutation_515714| T@$Location) (|p#$Mutation_515714| T@Vec_37831) (|v#$Mutation_515714| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_513949 0)) ((($Mutation_513949 (|l#$Mutation_513949| T@$Location) (|p#$Mutation_513949| T@Vec_37831) (|v#$Mutation_513949| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_512184 0)) ((($Mutation_512184 (|l#$Mutation_512184| T@$Location) (|p#$Mutation_512184| T@Vec_37831) (|v#$Mutation_512184| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_500469 0)) ((($Mutation_500469 (|l#$Mutation_500469| T@$Location) (|p#$Mutation_500469| T@Vec_37831) (|v#$Mutation_500469| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_491893 0)) ((($Mutation_491893 (|l#$Mutation_491893| T@$Location) (|p#$Mutation_491893| T@Vec_37831) (|v#$Mutation_491893| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) ) ))
(declare-datatypes ((T@$Mutation_490338 0)) ((($Mutation_490338 (|l#$Mutation_490338| T@$Location) (|p#$Mutation_490338| T@Vec_37831) (|v#$Mutation_490338| |T@$1_Option_Option'address'|) ) ) ))
(declare-datatypes ((T@$Mutation_490297 0)) ((($Mutation_490297 (|l#$Mutation_490297| T@$Location) (|p#$Mutation_490297| T@Vec_37831) (|v#$Mutation_490297| T@$1_ValidatorConfig_ValidatorConfig) ) ) ))
(declare-datatypes ((T@$Mutation_464253 0)) ((($Mutation_464253 (|l#$Mutation_464253| T@$Location) (|p#$Mutation_464253| T@Vec_37831) (|v#$Mutation_464253| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_456960 0)) ((($Mutation_456960 (|l#$Mutation_456960| T@$Location) (|p#$Mutation_456960| T@Vec_37831) (|v#$Mutation_456960| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_37831) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_449654 0)) ((($Mutation_449654 (|l#$Mutation_449654| T@$Location) (|p#$Mutation_449654| T@Vec_37831) (|v#$Mutation_449654| T@Vec_37831) ) ) ))
(declare-datatypes ((T@$Mutation_448566 0)) ((($Mutation_448566 (|l#$Mutation_448566| T@$Location) (|p#$Mutation_448566| T@Vec_37831) (|v#$Mutation_448566| T@Vec_416632) ) ) ))
(declare-datatypes ((T@$Mutation_446857 0)) ((($Mutation_446857 (|l#$Mutation_446857| T@$Location) (|p#$Mutation_446857| T@Vec_37831) (|v#$Mutation_446857| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_445870 0)) ((($Mutation_445870 (|l#$Mutation_445870| T@$Location) (|p#$Mutation_445870| T@Vec_37831) (|v#$Mutation_445870| T@Vec_445227) ) ) ))
(declare-datatypes ((T@$Mutation_444177 0)) ((($Mutation_444177 (|l#$Mutation_444177| T@$Location) (|p#$Mutation_444177| T@Vec_37831) (|v#$Mutation_444177| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_443190 0)) ((($Mutation_443190 (|l#$Mutation_443190| T@$Location) (|p#$Mutation_443190| T@Vec_37831) (|v#$Mutation_443190| T@Vec_442547) ) ) ))
(declare-datatypes ((T@$Mutation_441497 0)) ((($Mutation_441497 (|l#$Mutation_441497| T@$Location) (|p#$Mutation_441497| T@Vec_37831) (|v#$Mutation_441497| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_440510 0)) ((($Mutation_440510 (|l#$Mutation_440510| T@$Location) (|p#$Mutation_440510| T@Vec_37831) (|v#$Mutation_440510| T@Vec_416371) ) ) ))
(declare-datatypes ((T@$Mutation_438855 0)) ((($Mutation_438855 (|l#$Mutation_438855| T@$Location) (|p#$Mutation_438855| T@Vec_37831) (|v#$Mutation_438855| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_437868 0)) ((($Mutation_437868 (|l#$Mutation_437868| T@$Location) (|p#$Mutation_437868| T@Vec_37831) (|v#$Mutation_437868| T@Vec_417075) ) ) ))
(declare-datatypes ((T@$Mutation_436190 0)) ((($Mutation_436190 (|l#$Mutation_436190| T@$Location) (|p#$Mutation_436190| T@Vec_37831) (|v#$Mutation_436190| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_435203 0)) ((($Mutation_435203 (|l#$Mutation_435203| T@$Location) (|p#$Mutation_435203| T@Vec_37831) (|v#$Mutation_435203| T@Vec_416842) ) ) ))
(declare-datatypes ((T@$Mutation_433494 0)) ((($Mutation_433494 (|l#$Mutation_433494| T@$Location) (|p#$Mutation_433494| T@Vec_37831) (|v#$Mutation_433494| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_432507 0)) ((($Mutation_432507 (|l#$Mutation_432507| T@$Location) (|p#$Mutation_432507| T@Vec_37831) (|v#$Mutation_432507| T@Vec_416881) ) ) ))
(declare-datatypes ((T@$Mutation_430798 0)) ((($Mutation_430798 (|l#$Mutation_430798| T@$Location) (|p#$Mutation_430798| T@Vec_37831) (|v#$Mutation_430798| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_429811 0)) ((($Mutation_429811 (|l#$Mutation_429811| T@$Location) (|p#$Mutation_429811| T@Vec_37831) (|v#$Mutation_429811| T@Vec_416920) ) ) ))
(declare-datatypes ((T@$Mutation_428102 0)) ((($Mutation_428102 (|l#$Mutation_428102| T@$Location) (|p#$Mutation_428102| T@Vec_37831) (|v#$Mutation_428102| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_427115 0)) ((($Mutation_427115 (|l#$Mutation_427115| T@$Location) (|p#$Mutation_427115| T@Vec_37831) (|v#$Mutation_427115| T@Vec_416575) ) ) ))
(declare-datatypes ((T@$Mutation_425315 0)) ((($Mutation_425315 (|l#$Mutation_425315| T@$Location) (|p#$Mutation_425315| T@Vec_37831) (|v#$Mutation_425315| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_424328 0)) ((($Mutation_424328 (|l#$Mutation_424328| T@$Location) (|p#$Mutation_424328| T@Vec_37831) (|v#$Mutation_424328| T@Vec_416449) ) ) ))
(declare-datatypes ((T@$Mutation_422663 0)) ((($Mutation_422663 (|l#$Mutation_422663| T@$Location) (|p#$Mutation_422663| T@Vec_37831) (|v#$Mutation_422663| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_421676 0)) ((($Mutation_421676 (|l#$Mutation_421676| T@$Location) (|p#$Mutation_421676| T@Vec_37831) (|v#$Mutation_421676| T@Vec_416410) ) ) ))
(declare-datatypes ((T@$Mutation_419963 0)) ((($Mutation_419963 (|l#$Mutation_419963| T@$Location) (|p#$Mutation_419963| T@Vec_37831) (|v#$Mutation_419963| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_418976 0)) ((($Mutation_418976 (|l#$Mutation_418976| T@$Location) (|p#$Mutation_418976| T@Vec_37831) (|v#$Mutation_418976| T@Vec_418331) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_418331 T@Vec_418331) Bool)
(declare-fun InRangeVec_375820 (T@Vec_418331 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_418331) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_418331 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_416410 T@Vec_416410) Bool)
(declare-fun InRangeVec_376021 (T@Vec_416410 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_416410) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_416410 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_416449 T@Vec_416449) Bool)
(declare-fun InRangeVec_376222 (T@Vec_416449 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_416449) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_416449 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_416575 T@Vec_416575) Bool)
(declare-fun InRangeVec_376423 (T@Vec_416575 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_37831 T@Vec_37831) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_416575) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_416575 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_416920 T@Vec_416920) Bool)
(declare-fun InRangeVec_376624 (T@Vec_416920 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_416920) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_416920 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_416881 T@Vec_416881) Bool)
(declare-fun InRangeVec_376825 (T@Vec_416881 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_416881) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_416881 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_416842 T@Vec_416842) Bool)
(declare-fun InRangeVec_377026 (T@Vec_416842 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_416842) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_416842 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_417075 T@Vec_417075) Bool)
(declare-fun InRangeVec_377227 (T@Vec_417075 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_417075) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_417075 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_416371 T@Vec_416371) Bool)
(declare-fun InRangeVec_377428 (T@Vec_416371 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_416371) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_416371 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_442547 T@Vec_442547) Bool)
(declare-fun InRangeVec_377629 (T@Vec_442547 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_442547) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_442547 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_445227 T@Vec_445227) Bool)
(declare-fun InRangeVec_377830 (T@Vec_445227 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_445227) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_445227 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_416632 T@Vec_416632) Bool)
(declare-fun InRangeVec_447989 (T@Vec_416632 Int) Bool)
(declare-fun |Select__T@[Int]Vec_37831_| (|T@[Int]Vec_37831| Int) T@Vec_37831)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_416632) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_37831) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_416632 T@Vec_37831) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_37831 T@Vec_37831) Bool)
(declare-fun InRangeVec_16728 (T@Vec_37831 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_37831) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_37831 Int) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_37831 T@Vec_37831) Bool)
(declare-fun |$IsValid'vec'u64''| (T@Vec_37831) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_37831 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_37831 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_37831) T@Vec_37831)
(declare-fun $1_Hash_sha3 (T@Vec_37831) T@Vec_37831)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_37831) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_37831 T@Vec_37831 T@Vec_37831) Bool)
(declare-fun |$1_BCS_serialize'address'| (Int) T@Vec_37831)
(declare-fun $serialized_address_len () Int)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_416285_| (|T@[$1_Event_EventHandle]Multiset_416285| T@$1_Event_EventHandle) T@Multiset_416285)
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
(declare-fun $1_DualAttestation_spec_dual_attestation_message (Int T@Vec_37831 Int) T@Vec_37831)
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
(declare-fun |$IsValid'$1_AccountFreezing_FreezeAccountEvent'| (T@$1_AccountFreezing_FreezeAccountEvent) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezeEventsHolder'| (T@$1_AccountFreezing_FreezeEventsHolder) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_FreezingBit'| (T@$1_AccountFreezing_FreezingBit) Bool)
(declare-fun |$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| (T@$1_AccountFreezing_UnfreezeAccountEvent) Bool)
(declare-fun $1_DiemAccount_spec_abstract_create_authentication_key (T@Vec_37831) T@Vec_37831)
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
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun IndexOfVec_37831 (T@Vec_37831 Int) Int)
(declare-fun IndexOfVec_416371 (T@Vec_416371 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_416410 (T@Vec_416410 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_416449 (T@Vec_416449 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_416575 (T@Vec_416575 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_416632 (T@Vec_416632 T@Vec_37831) Int)
(declare-fun IndexOfVec_416842 (T@Vec_416842 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_416881 (T@Vec_416881 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_416920 (T@Vec_416920 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_417075 (T@Vec_417075 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_418331 (T@Vec_418331 |T@#0|) Int)
(declare-fun IndexOfVec_442547 (T@Vec_442547 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_445227 (T@Vec_445227 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_416285| |T@[$1_Event_EventHandle]Multiset_416285|) |T@[$1_Event_EventHandle]Multiset_416285|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_37831| |T@[Int]Vec_37831| Int T@Vec_37831) |T@[Int]Vec_37831|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_37831| Int Int T@Vec_37831) |T@[Int]Vec_37831|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_37831| |T@[Int]Vec_37831| Int T@Vec_37831) |T@[Int]Vec_37831|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemAccountbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemAccountbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemAccountbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemAccountbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemAccountbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemAccountbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemAccountbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_418331) (v2 T@Vec_418331) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_418331| v1) (|l#Vec_418331| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_375820 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_418331| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_418331| v2) i@@0)))
 :qid |DiemAccountbpl.615:13|
 :skolemid |17|
))))
 :qid |DiemAccountbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_418331) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_418331| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_375820 v@@4 i@@1) true)
 :qid |DiemAccountbpl.621:13|
 :skolemid |19|
))))
 :qid |DiemAccountbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_418331) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_375820 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@5) i@@3) e))
 :qid |DiemAccountbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_375820 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@5) j) e)))
 :qid |DiemAccountbpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemAccountbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_416410) (v2@@0 T@Vec_416410) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_416410| v1@@0) (|l#Vec_416410| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_376021 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v2@@0) i@@4)))
 :qid |DiemAccountbpl.796:13|
 :skolemid |24|
))))
 :qid |DiemAccountbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_416410) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_416410| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_376021 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@6) i@@5)))
 :qid |DiemAccountbpl.802:13|
 :skolemid |26|
))))
 :qid |DiemAccountbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_416410) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_376021 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@7) i@@7) e@@0))
 :qid |DiemAccountbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_376021 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@7) j@@0) e@@0)))
 :qid |DiemAccountbpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemAccountbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_416449) (v2@@1 T@Vec_416449) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_416449| v1@@1) (|l#Vec_416449| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_376222 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v2@@1) i@@8)))
 :qid |DiemAccountbpl.977:13|
 :skolemid |31|
))))
 :qid |DiemAccountbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_416449) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_416449| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_376222 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@8) i@@9)))
 :qid |DiemAccountbpl.983:13|
 :skolemid |33|
))))
 :qid |DiemAccountbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_416449) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_376222 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@9) i@@11) e@@1))
 :qid |DiemAccountbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_376222 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@9) j@@1) e@@1)))
 :qid |DiemAccountbpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemAccountbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_416575) (v2@@2 T@Vec_416575) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_416575| v1@@2) (|l#Vec_416575| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_376423 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v2@@2) i@@12)))))
 :qid |DiemAccountbpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemAccountbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_416575) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_416575| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_376423 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@10) i@@13)))
 :qid |DiemAccountbpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemAccountbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_416575) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_376423 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemAccountbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_376423 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemAccountbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemAccountbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_416920) (v2@@3 T@Vec_416920) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_416920| v1@@3) (|l#Vec_416920| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_376624 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v2@@3) i@@16)))))
 :qid |DiemAccountbpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemAccountbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_416920) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_416920| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_376624 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@12) i@@17)))
 :qid |DiemAccountbpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemAccountbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_416920) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_376624 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemAccountbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_376624 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemAccountbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemAccountbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_416881) (v2@@4 T@Vec_416881) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_416881| v1@@4) (|l#Vec_416881| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_376825 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v2@@4) i@@20)))))
 :qid |DiemAccountbpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemAccountbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_416881) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_416881| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_376825 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@14) i@@21)))
 :qid |DiemAccountbpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemAccountbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_416881) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_376825 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemAccountbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_376825 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemAccountbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemAccountbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_416842) (v2@@5 T@Vec_416842) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_416842| v1@@5) (|l#Vec_416842| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_377026 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v2@@5) i@@24)))))
 :qid |DiemAccountbpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemAccountbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_416842) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_416842| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_377026 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@16) i@@25)))
 :qid |DiemAccountbpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemAccountbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_416842) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_377026 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemAccountbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_377026 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemAccountbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemAccountbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_417075) (v2@@6 T@Vec_417075) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_417075| v1@@6) (|l#Vec_417075| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_377227 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v2@@6) i@@28))))
 :qid |DiemAccountbpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemAccountbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_417075) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_417075| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_377227 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@18) i@@29)))
 :qid |DiemAccountbpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemAccountbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_417075) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_377227 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |DiemAccountbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_377227 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |DiemAccountbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemAccountbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_416371) (v2@@7 T@Vec_416371) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_416371| v1@@7) (|l#Vec_416371| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_377428 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v2@@7) i@@32)))))
 :qid |DiemAccountbpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemAccountbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_416371) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_416371| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_377428 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@20) i@@33)))
 :qid |DiemAccountbpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemAccountbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_416371) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_377428 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |DiemAccountbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_377428 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |DiemAccountbpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemAccountbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_442547) (v2@@8 T@Vec_442547) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_442547| v1@@8) (|l#Vec_442547| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_377629 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v2@@8) i@@36)))
 :qid |DiemAccountbpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemAccountbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_442547) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_442547| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_377629 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@22) i@@37)))
 :qid |DiemAccountbpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemAccountbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_442547) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_377629 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@23) i@@39) e@@8))
 :qid |DiemAccountbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_377629 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@23) j@@8) e@@8)))
 :qid |DiemAccountbpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemAccountbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_445227) (v2@@9 T@Vec_445227) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_445227| v1@@9) (|l#Vec_445227| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_377830 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v2@@9) i@@40)))
 :qid |DiemAccountbpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemAccountbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_445227) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_445227| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_377830 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@24) i@@41)))
 :qid |DiemAccountbpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemAccountbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_445227) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_377830 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@25) i@@43) e@@9))
 :qid |DiemAccountbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_377830 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@25) j@@9) e@@9)))
 :qid |DiemAccountbpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemAccountbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_416632) (v2@@10 T@Vec_416632) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_416632| v1@@10) (|l#Vec_416632| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_447989 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v1@@10) i@@44) (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v2@@10) i@@44)))
 :qid |DiemAccountbpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemAccountbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_416632) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_416632| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_447989 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@26) i@@45)))
 :qid |DiemAccountbpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemAccountbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_416632) (e@@10 T@Vec_37831) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_447989 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@27) i@@47) e@@10))
 :qid |DiemAccountbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_447989 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@27) j@@10) e@@10)))
 :qid |DiemAccountbpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemAccountbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_37831) (v2@@11 T@Vec_37831) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_37831| v1@@11) (|l#Vec_37831| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_37831| v2@@11) i@@48)))
 :qid |DiemAccountbpl.2787:13|
 :skolemid |101|
))))
 :qid |DiemAccountbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_37831) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_37831| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_37831| v@@28) i@@49)))
 :qid |DiemAccountbpl.2793:13|
 :skolemid |103|
))))
 :qid |DiemAccountbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_37831) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@29) i@@51) e@@11))
 :qid |DiemAccountbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@29) j@@11) e@@11)))
 :qid |DiemAccountbpl.2806:17|
 :skolemid |106|
)))))
 :qid |DiemAccountbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_37831) (v2@@12 T@Vec_37831) ) (! (= (|$IsEqual'vec'u64''| v1@@12 v2@@12)  (and (= (|l#Vec_37831| v1@@12) (|l#Vec_37831| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_37831| v2@@12) i@@52)))
 :qid |DiemAccountbpl.2968:13|
 :skolemid |108|
))))
 :qid |DiemAccountbpl.2966:29|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u64''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_37831) ) (! (= (|$IsValid'vec'u64''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_37831| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_37831| v@@30) i@@53)))
 :qid |DiemAccountbpl.2974:13|
 :skolemid |110|
))))
 :qid |DiemAccountbpl.2972:29|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u64''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_37831) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u64'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@31) i@@55) e@@12))
 :qid |DiemAccountbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@31) j@@12) e@@12)))
 :qid |DiemAccountbpl.2987:17|
 :skolemid |113|
)))))
 :qid |DiemAccountbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u64'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_37831) (v2@@13 T@Vec_37831) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13)  (and (= (|l#Vec_37831| v1@@13) (|l#Vec_37831| v2@@13)) (forall ((i@@56 Int) ) (!  (=> (InRangeVec_16728 v1@@13 i@@56) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v1@@13) i@@56) (|Select__T@[Int]Int_| (|v#Vec_37831| v2@@13) i@@56)))
 :qid |DiemAccountbpl.3149:13|
 :skolemid |115|
))))
 :qid |DiemAccountbpl.3147:28|
 :skolemid |116|
 :pattern ( (|$IsEqual'vec'u8''| v1@@13 v2@@13))
)))
(assert (forall ((v@@32 T@Vec_37831) ) (! (= (|$IsValid'vec'u8''| v@@32)  (and (|$IsValid'u64'| (|l#Vec_37831| v@@32)) (forall ((i@@57 Int) ) (!  (=> (InRangeVec_16728 v@@32 i@@57) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_37831| v@@32) i@@57)))
 :qid |DiemAccountbpl.3155:13|
 :skolemid |117|
))))
 :qid |DiemAccountbpl.3153:28|
 :skolemid |118|
 :pattern ( (|$IsValid'vec'u8''| v@@32))
)))
(assert (forall ((v@@33 T@Vec_37831) (e@@13 Int) ) (! (let ((i@@58 (|$IndexOfVec'u8'| v@@33 e@@13)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (InRangeVec_16728 v@@33 i@@59)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@33) i@@59) e@@13))
 :qid |DiemAccountbpl.3160:13|
 :skolemid |119|
))) (= i@@58 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@58) (InRangeVec_16728 v@@33 i@@58)) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@33) i@@58) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@13) (>= j@@13 0)) (< j@@13 i@@58)) (not (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@33) j@@13) e@@13)))
 :qid |DiemAccountbpl.3168:17|
 :skolemid |120|
)))))
 :qid |DiemAccountbpl.3164:15|
 :skolemid |121|
 :pattern ( (|$IndexOfVec'u8'| v@@33 e@@13))
)))
(assert (forall ((v1@@14 T@Vec_37831) (v2@@14 T@Vec_37831) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14)))
 :qid |DiemAccountbpl.3341:15|
 :skolemid |122|
 :pattern ( ($1_Hash_sha2 v1@@14) ($1_Hash_sha2 v2@@14))
)))
(assert (forall ((v1@@15 T@Vec_37831) (v2@@15 T@Vec_37831) ) (! (= (|$IsEqual'vec'u8''| v1@@15 v2@@15) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15)))
 :qid |DiemAccountbpl.3357:15|
 :skolemid |123|
 :pattern ( ($1_Hash_sha3 v1@@15) ($1_Hash_sha3 v2@@15))
)))
(assert (forall ((k1 T@Vec_37831) (k2 T@Vec_37831) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemAccountbpl.3424:15|
 :skolemid |124|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_37831) (s2 T@Vec_37831) (k1@@0 T@Vec_37831) (k2@@0 T@Vec_37831) (m1 T@Vec_37831) (m2 T@Vec_37831) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemAccountbpl.3427:15|
 :skolemid |125|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@16 Int) (v2@@16 Int) ) (! (= (= v1@@16 v2@@16) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'address'| v1@@16) (|$1_BCS_serialize'address'| v2@@16)))
 :qid |DiemAccountbpl.3454:15|
 :skolemid |126|
 :pattern ( (|$1_BCS_serialize'address'| v1@@16) (|$1_BCS_serialize'address'| v2@@16))
)))
(assert (forall ((v@@34 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'address'| v@@34)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_37831| r@@0) 0)))
 :qid |DiemAccountbpl.3459:15|
 :skolemid |127|
 :pattern ( (|$1_BCS_serialize'address'| v@@34))
)))
(assert (forall ((v@@35 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@35)))
(= (|l#Vec_37831| r@@1) $serialized_address_len))
 :qid |DiemAccountbpl.3473:15|
 :skolemid |128|
 :pattern ( (|$1_BCS_serialize'address'| v@@35))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_416285| stream) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_416285| stream) v@@36) 0)
 :qid |DiemAccountbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemAccountbpl.3520:13|
 :skolemid |129|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemAccountbpl.3561:80|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@17 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@17 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@17)))
 :qid |DiemAccountbpl.3567:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@17) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@17))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemAccountbpl.3617:82|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@18 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@18 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@18) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@18)))
 :qid |DiemAccountbpl.3623:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@18) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@18))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemAccountbpl.3673:80|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@19 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@19 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@19) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@19)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@19) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@19))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@19) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@19))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@19) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@19)))
 :qid |DiemAccountbpl.3679:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@19) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@19))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemAccountbpl.3729:79|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_AdminTransactionEvent) (v2@@20 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@20 v2@@20) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@20)))
 :qid |DiemAccountbpl.3735:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@20))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemAccountbpl.3785:76|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_CreateAccountEvent) (v2@@21 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@21)))
 :qid |DiemAccountbpl.3791:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@21))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemAccountbpl.3841:78|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@22 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@22 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@22) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@22) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@22))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@22) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@22))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@22) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@22))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@22)))
 :qid |DiemAccountbpl.3847:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@22) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@22))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemAccountbpl.3897:74|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@23 T@$1_DiemAccount_SentPaymentEvent) (v2@@23 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@23) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@23) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@23))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@23) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@23))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@23) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@23))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@23) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@23)))
 :qid |DiemAccountbpl.3903:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@23) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@23))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemAccountbpl.3953:69|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@24 T@$1_DiemBlock_NewBlockEvent) (v2@@24 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@24) (|$round#$1_DiemBlock_NewBlockEvent| v2@@24)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@24) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@24))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@24) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@24))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@24) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@24))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@24) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@24)))
 :qid |DiemAccountbpl.3959:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@24) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@24))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemAccountbpl.4009:70|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@25 T@$1_DiemConfig_NewEpochEvent) (v2@@25 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@25 v2@@25) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@25) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@25)))
 :qid |DiemAccountbpl.4015:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@25) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@25))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemAccountbpl.4065:60|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@26 T@$1_Diem_BurnEvent) (v2@@26 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@26) (|$amount#$1_Diem_BurnEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@26) (|$currency_code#$1_Diem_BurnEvent| v2@@26))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@26) (|$preburn_address#$1_Diem_BurnEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@26)))
 :qid |DiemAccountbpl.4071:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@26) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@26))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemAccountbpl.4121:66|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@27 T@$1_Diem_CancelBurnEvent) (v2@@27 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@27) (|$amount#$1_Diem_CancelBurnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@27) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@27) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@27) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@27)))
 :qid |DiemAccountbpl.4127:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@27) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@27))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemAccountbpl.4177:60|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@28 T@$1_Diem_MintEvent) (v2@@28 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@28) (|$amount#$1_Diem_MintEvent| v2@@28)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@28) (|$currency_code#$1_Diem_MintEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@28) (|$ToEventRep'$1_Diem_MintEvent'| v2@@28)))
 :qid |DiemAccountbpl.4183:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@28) (|$ToEventRep'$1_Diem_MintEvent'| v2@@28))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemAccountbpl.4233:63|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@29 T@$1_Diem_PreburnEvent) (v2@@29 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@29) (|$amount#$1_Diem_PreburnEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@29) (|$currency_code#$1_Diem_PreburnEvent| v2@@29))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@29) (|$preburn_address#$1_Diem_PreburnEvent| v2@@29))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@29) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@29)))
 :qid |DiemAccountbpl.4239:15|
 :skolemid |156|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@29) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@29))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemAccountbpl.4289:79|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@30 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@30 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@30) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@30)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@30) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@30))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@30) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@30)))
 :qid |DiemAccountbpl.4295:15|
 :skolemid |158|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@30) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@30))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemAccountbpl.4345:82|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@31 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@31 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@31) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@31)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@31) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@31))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@31)))
 :qid |DiemAccountbpl.4351:15|
 :skolemid |160|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@31) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@31))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemAccountbpl.4401:88|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@32 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@32 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@32) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@32)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@32) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@32))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@32) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@32)))
 :qid |DiemAccountbpl.4407:15|
 :skolemid |162|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@32) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@32))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemAccountbpl.4457:72|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@33 T@$1_VASPDomain_VASPDomainEvent) (v2@@33 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@33) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@33)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@33)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@33)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@33) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@33))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@33) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@33)))
 :qid |DiemAccountbpl.4463:15|
 :skolemid |164|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@33) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@33))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |DiemAccountbpl.4517:15|
 :skolemid |165|
)))
(assert (forall ((addr Int) ) (! true
 :qid |DiemAccountbpl.4526:15|
 :skolemid |166|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |DiemAccountbpl.4556:61|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemAccountbpl.5157:36|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |DiemAccountbpl.9032:71|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemAccountbpl.9822:46|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemAccountbpl.9834:64|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemAccountbpl.9846:75|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemAccountbpl.9858:72|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemAccountbpl.9896:55|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemAccountbpl.9919:46|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemAccountbpl.11770:49|
 :skolemid |289|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemAccountbpl.11865:71|
 :skolemid |290|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemAccountbpl.11878:91|
 :skolemid |291|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemAccountbpl.11891:113|
 :skolemid |292|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemAccountbpl.11904:75|
 :skolemid |293|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemAccountbpl.11917:73|
 :skolemid |294|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DiemAccountbpl.11937:48|
 :skolemid |295|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DiemAccountbpl.11954:57|
 :skolemid |296|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DiemAccountbpl.11968:83|
 :skolemid |297|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DiemAccountbpl.11982:103|
 :skolemid |298|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DiemAccountbpl.11996:125|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |DiemAccountbpl.12010:87|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |DiemAccountbpl.12024:85|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |DiemAccountbpl.12038:48|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |DiemAccountbpl.12059:45|
 :skolemid |303|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |DiemAccountbpl.12073:51|
 :skolemid |304|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |DiemAccountbpl.12096:48|
 :skolemid |305|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |DiemAccountbpl.12409:49|
 :skolemid |306|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |DiemAccountbpl.12422:65|
 :skolemid |307|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |DiemAccountbpl.13035:45|
 :skolemid |308|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |DiemAccountbpl.13048:45|
 :skolemid |309|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |DiemAccountbpl.13061:37|
 :skolemid |310|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |DiemAccountbpl.13074:55|
 :skolemid |311|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DiemAccountbpl.13088:55|
 :skolemid |312|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@33) true)
 :qid |DiemAccountbpl.13102:47|
 :skolemid |313|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@34))))
 :qid |DiemAccountbpl.13122:38|
 :skolemid |314|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@35))))
 :qid |DiemAccountbpl.13144:44|
 :skolemid |315|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))))
 :qid |DiemAccountbpl.13196:53|
 :skolemid |316|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))))
 :qid |DiemAccountbpl.13269:53|
 :skolemid |317|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@38))))
 :qid |DiemAccountbpl.13342:45|
 :skolemid |318|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39) true)
 :qid |DiemAccountbpl.13379:55|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40) true)
 :qid |DiemAccountbpl.13393:55|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@41) true)
 :qid |DiemAccountbpl.13407:47|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |DiemAccountbpl.13424:38|
 :skolemid |322|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |DiemAccountbpl.13438:48|
 :skolemid |323|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |DiemAccountbpl.13452:48|
 :skolemid |324|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@45) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@45)))
 :qid |DiemAccountbpl.13466:40|
 :skolemid |325|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@46)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@46)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@46))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@46))))
 :qid |DiemAccountbpl.13486:41|
 :skolemid |326|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@47)))
 :qid |DiemAccountbpl.13502:53|
 :skolemid |327|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@48)))
 :qid |DiemAccountbpl.13515:53|
 :skolemid |328|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@49)))
 :qid |DiemAccountbpl.13528:45|
 :skolemid |329|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50))))
 :qid |DiemAccountbpl.13544:60|
 :skolemid |330|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51))))
 :qid |DiemAccountbpl.13561:60|
 :skolemid |331|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@52))))
 :qid |DiemAccountbpl.13578:52|
 :skolemid |332|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53))))
 :qid |DiemAccountbpl.13595:57|
 :skolemid |333|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54) true)
 :qid |DiemAccountbpl.18752:68|
 :skolemid |340|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))))
 :qid |DiemAccountbpl.18774:66|
 :skolemid |341|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))))
 :qid |DiemAccountbpl.18800:66|
 :skolemid |342|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@57))))
 :qid |DiemAccountbpl.18826:58|
 :skolemid |343|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@58)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@58))))
 :qid |DiemAccountbpl.18855:56|
 :skolemid |344|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@59))))
 :qid |DiemAccountbpl.18885:56|
 :skolemid |345|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@60))))
 :qid |DiemAccountbpl.18915:48|
 :skolemid |346|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@60))
)))
(assert (forall ((s@@61 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@61) true)
 :qid |DiemAccountbpl.19400:31|
 :skolemid |347|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@61))
)))
(assert (forall ((s@@62 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@62) true)
 :qid |DiemAccountbpl.19744:31|
 :skolemid |348|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@63)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@63)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@63))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@63))))
 :qid |DiemAccountbpl.19763:35|
 :skolemid |349|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@64)))
 :qid |DiemAccountbpl.20189:45|
 :skolemid |350|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@65))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@65))))
 :qid |DiemAccountbpl.20207:50|
 :skolemid |351|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@66)))
 :qid |DiemAccountbpl.20223:52|
 :skolemid |352|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@67)))
 :qid |DiemAccountbpl.20236:46|
 :skolemid |353|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@68) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@68)))
 :qid |DiemAccountbpl.22136:38|
 :skolemid |388|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@69) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@69)))
 :qid |DiemAccountbpl.22150:39|
 :skolemid |389|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@69))
)))
(assert (forall ((s@@70 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70))))
 :qid |DiemAccountbpl.23959:65|
 :skolemid |413|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$balance#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XDX_XDX'| s@@71))))
 :qid |DiemAccountbpl.23977:65|
 :skolemid |414|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XDX_XDX''| s@@71))
)))
(assert (forall ((s@@72 |T@$1_TransactionFee_TransactionFee'#0'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@72)  (and (|$IsValid'$1_Diem_Diem'#0''| (|$balance#$1_TransactionFee_TransactionFee'#0'| s@@72)) (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_TransactionFee_TransactionFee'#0'| s@@72))))
 :qid |DiemAccountbpl.23995:57|
 :skolemid |415|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'#0''| s@@72))
)))
(assert (forall ((payer Int) (metadata T@Vec_37831) (deposit_value Int) ) (! (let (($$res ($1_DualAttestation_spec_dual_attestation_message payer metadata deposit_value)))
(|$IsValid'vec'u8''| $$res))
 :qid |DiemAccountbpl.25126:15|
 :skolemid |416|
)))
(assert (forall ((s@@73 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@73))))
 :qid |DiemAccountbpl.25154:60|
 :skolemid |417|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@74)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@74)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@74))))
 :qid |DiemAccountbpl.25171:66|
 :skolemid |418|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@75)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@75)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@75))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@75))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@75))))
 :qid |DiemAccountbpl.25200:50|
 :skolemid |419|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@76) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@76)))
 :qid |DiemAccountbpl.25223:45|
 :skolemid |420|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@77)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@77)) true))
 :qid |DiemAccountbpl.27088:87|
 :skolemid |459|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemTransactionPublishingOption_HaltAllTransactions) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@78) true)
 :qid |DiemAccountbpl.27102:75|
 :skolemid |460|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_HaltAllTransactions'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@79)))
 :qid |DiemAccountbpl.27766:47|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@80)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@80)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@80))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@80))))
 :qid |DiemAccountbpl.27785:58|
 :skolemid |462|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@80))
)))
(assert (forall ((s@@81 |T@$1_DesignatedDealer_TierInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@81)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@81)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@81))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XUS_XUS'| s@@81))))
 :qid |DiemAccountbpl.27807:61|
 :skolemid |463|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XUS_XUS''| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DesignatedDealer_TierInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@82)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@82)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@82))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'$1_XDX_XDX'| s@@82))))
 :qid |DiemAccountbpl.27830:61|
 :skolemid |464|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'$1_XDX_XDX''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@83)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@83)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@83))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@83))))
 :qid |DiemAccountbpl.27853:53|
 :skolemid |465|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@83))
)))
(assert (forall ((s@@84 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@84) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@84)))
 :qid |DiemAccountbpl.31540:39|
 :skolemid |643|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@84))
)))
(assert (forall ((s@@85 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@85)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@85)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@85))))
 :qid |DiemAccountbpl.31656:58|
 :skolemid |644|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@86)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@86)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@86))))
 :qid |DiemAccountbpl.31673:58|
 :skolemid |645|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@86))
)))
(assert (forall ((s@@87 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@87) true)
 :qid |DiemAccountbpl.31688:51|
 :skolemid |646|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@87))
)))
(assert (forall ((s@@88 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@88)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@88)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@88))))
 :qid |DiemAccountbpl.31705:60|
 :skolemid |647|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@88))
)))
(assert (forall ((auth_key_prefix T@Vec_37831) ) (! (let (($$res@@0 ($1_DiemAccount_spec_abstract_create_authentication_key auth_key_prefix)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |DiemAccountbpl.33290:15|
 :skolemid |664|
)))
(assert (forall ((s@@89 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@89)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@89)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@89))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@89))))
 :qid |DiemAccountbpl.33370:47|
 :skolemid |665|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@90)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@90)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@90))))
 :qid |DiemAccountbpl.33396:63|
 :skolemid |666|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@91) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@91)))
 :qid |DiemAccountbpl.33411:57|
 :skolemid |667|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@91))
)))
(assert (forall ((s@@92 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@92) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@92)))
 :qid |DiemAccountbpl.33424:55|
 :skolemid |668|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@92))
)))
(assert (forall ((s@@93 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@93) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@93)))
 :qid |DiemAccountbpl.33438:55|
 :skolemid |669|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@93))
)))
(assert (forall ((s@@94 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@94) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@94)))
 :qid |DiemAccountbpl.33452:47|
 :skolemid |670|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@95)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@95)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@95))))
 :qid |DiemAccountbpl.33469:54|
 :skolemid |671|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@96) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@96)))
 :qid |DiemAccountbpl.33483:55|
 :skolemid |672|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@97) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@97)))
 :qid |DiemAccountbpl.33496:57|
 :skolemid |673|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@98)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@98)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@98))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@98))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@98))))
 :qid |DiemAccountbpl.33518:56|
 :skolemid |674|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@99)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@99)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@99))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@99))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@99))))
 :qid |DiemAccountbpl.33545:52|
 :skolemid |675|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@100) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@100)))
 :qid |DiemAccountbpl.33563:54|
 :skolemid |676|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@101)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@101)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@101))))
 :qid |DiemAccountbpl.99794:47|
 :skolemid |3795|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@102)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@102)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@102))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@102))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@102))))
 :qid |DiemAccountbpl.99818:47|
 :skolemid |3796|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@102))
)))
(assert (forall ((s@@103 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@103) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@103)))
 :qid |DiemAccountbpl.100061:49|
 :skolemid |3797|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@103))
)))
(assert (forall ((s@@104 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@104)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@104)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@104))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@104))))
 :qid |DiemAccountbpl.100103:49|
 :skolemid |3798|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@104))
)))
(assert (forall ((s@@105 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@105)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@105)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@105))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@105))))
 :qid |DiemAccountbpl.100132:48|
 :skolemid |3799|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@105))
)))
(assert (forall ((s@@106 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@106) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@106)))
 :qid |DiemAccountbpl.100428:47|
 :skolemid |3800|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@106))
)))
(assert (forall ((v@@37 T@Vec_418331) (i@@60 Int) ) (! (= (InRangeVec_375820 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_418331| v@@37))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_375820 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_416410) (i@@61 Int) ) (! (= (InRangeVec_376021 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_416410| v@@38))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_376021 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_416449) (i@@62 Int) ) (! (= (InRangeVec_376222 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_416449| v@@39))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_376222 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_416575) (i@@63 Int) ) (! (= (InRangeVec_376423 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_416575| v@@40))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_376423 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_416920) (i@@64 Int) ) (! (= (InRangeVec_376624 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_416920| v@@41))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_376624 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_416881) (i@@65 Int) ) (! (= (InRangeVec_376825 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_416881| v@@42))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_376825 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_416842) (i@@66 Int) ) (! (= (InRangeVec_377026 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_416842| v@@43))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_377026 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_417075) (i@@67 Int) ) (! (= (InRangeVec_377227 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_417075| v@@44))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_377227 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_416371) (i@@68 Int) ) (! (= (InRangeVec_377428 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_416371| v@@45))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_377428 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_442547) (i@@69 Int) ) (! (= (InRangeVec_377629 v@@46 i@@69)  (and (>= i@@69 0) (< i@@69 (|l#Vec_442547| v@@46))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_377629 v@@46 i@@69))
)))
(assert (forall ((v@@47 T@Vec_445227) (i@@70 Int) ) (! (= (InRangeVec_377830 v@@47 i@@70)  (and (>= i@@70 0) (< i@@70 (|l#Vec_445227| v@@47))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_377830 v@@47 i@@70))
)))
(assert (forall ((v@@48 T@Vec_416632) (i@@71 Int) ) (! (= (InRangeVec_447989 v@@48 i@@71)  (and (>= i@@71 0) (< i@@71 (|l#Vec_416632| v@@48))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_447989 v@@48 i@@71))
)))
(assert (forall ((v@@49 T@Vec_37831) (i@@72 Int) ) (! (= (InRangeVec_16728 v@@49 i@@72)  (and (>= i@@72 0) (< i@@72 (|l#Vec_37831| v@@49))))
 :qid |DiemAccountbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@49 i@@72))
)))
(assert (forall ((v@@50 T@Vec_37831) (e@@14 Int) ) (! (let ((i@@73 (IndexOfVec_37831 v@@50 e@@14)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_16728 v@@50 i@@74) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@50) i@@74) e@@14))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_16728 v@@50 i@@73) (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@50) i@@73) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@73)) (not (= (|Select__T@[Int]Int_| (|v#Vec_37831| v@@50) j@@14) e@@14)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_37831 v@@50 e@@14))
)))
(assert (forall ((v@@51 T@Vec_416371) (e@@15 T@$1_ValidatorConfig_Config) ) (! (let ((i@@75 (IndexOfVec_416371 v@@51 e@@15)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_377428 v@@51 i@@76) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@51) i@@76) e@@15))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_377428 v@@51 i@@75) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@51) i@@75) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@75)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_416371| v@@51) j@@15) e@@15)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416371 v@@51 e@@15))
)))
(assert (forall ((v@@52 T@Vec_416410) (e@@16 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@77 (IndexOfVec_416410 v@@52 e@@16)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_376021 v@@52 i@@78) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@52) i@@78) e@@16))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_376021 v@@52 i@@77) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@52) i@@77) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@77)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_416410| v@@52) j@@16) e@@16)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416410 v@@52 e@@16))
)))
(assert (forall ((v@@53 T@Vec_416449) (e@@17 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@79 (IndexOfVec_416449 v@@53 e@@17)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_376222 v@@53 i@@80) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@53) i@@80) e@@17))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_376222 v@@53 i@@79) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@53) i@@79) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@79)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_416449| v@@53) j@@17) e@@17)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416449 v@@53 e@@17))
)))
(assert (forall ((v@@54 T@Vec_416575) (e@@18 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@81 (IndexOfVec_416575 v@@54 e@@18)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_376423 v@@54 i@@82) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@54) i@@82) e@@18))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_376423 v@@54 i@@81) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@54) i@@81) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@81)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_416575| v@@54) j@@18) e@@18)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416575 v@@54 e@@18))
)))
(assert (forall ((v@@55 T@Vec_416632) (e@@19 T@Vec_37831) ) (! (let ((i@@83 (IndexOfVec_416632 v@@55 e@@19)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_447989 v@@55 i@@84) (= (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@55) i@@84) e@@19))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_447989 v@@55 i@@83) (= (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@55) i@@83) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@83)) (not (= (|Select__T@[Int]Vec_37831_| (|v#Vec_416632| v@@55) j@@19) e@@19)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416632 v@@55 e@@19))
)))
(assert (forall ((v@@56 T@Vec_416842) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@85 (IndexOfVec_416842 v@@56 e@@20)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_377026 v@@56 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@56) i@@86) e@@20))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_377026 v@@56 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@56) i@@85) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_416842| v@@56) j@@20) e@@20)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416842 v@@56 e@@20))
)))
(assert (forall ((v@@57 T@Vec_416881) (e@@21 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@87 (IndexOfVec_416881 v@@57 e@@21)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_376825 v@@57 i@@88) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@57) i@@88) e@@21))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_376825 v@@57 i@@87) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@57) i@@87) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@87)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_416881| v@@57) j@@21) e@@21)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416881 v@@57 e@@21))
)))
(assert (forall ((v@@58 T@Vec_416920) (e@@22 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@89 (IndexOfVec_416920 v@@58 e@@22)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_376624 v@@58 i@@90) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@58) i@@90) e@@22))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_376624 v@@58 i@@89) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@58) i@@89) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@89)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_416920| v@@58) j@@22) e@@22)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_416920 v@@58 e@@22))
)))
(assert (forall ((v@@59 T@Vec_417075) (e@@23 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@91 (IndexOfVec_417075 v@@59 e@@23)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_377227 v@@59 i@@92) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@59) i@@92) e@@23))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_377227 v@@59 i@@91) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@59) i@@91) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@91)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_417075| v@@59) j@@23) e@@23)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_417075 v@@59 e@@23))
)))
(assert (forall ((v@@60 T@Vec_418331) (e@@24 |T@#0|) ) (! (let ((i@@93 (IndexOfVec_418331 v@@60 e@@24)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_375820 v@@60 i@@94) (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@60) i@@94) e@@24))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_375820 v@@60 i@@93) (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@60) i@@93) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@93)) (not (= (|Select__T@[Int]#0_| (|v#Vec_418331| v@@60) j@@24) e@@24)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_418331 v@@60 e@@24))
)))
(assert (forall ((v@@61 T@Vec_442547) (e@@25 T@$1_XDX_XDX) ) (! (let ((i@@95 (IndexOfVec_442547 v@@61 e@@25)))
(ite  (not (exists ((i@@96 Int) ) (!  (and (InRangeVec_377629 v@@61 i@@96) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@61) i@@96) e@@25))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@95 (- 0 1))  (and (and (InRangeVec_377629 v@@61 i@@95) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@61) i@@95) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@95)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_442547| v@@61) j@@25) e@@25)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_442547 v@@61 e@@25))
)))
(assert (forall ((v@@62 T@Vec_445227) (e@@26 T@$1_XUS_XUS) ) (! (let ((i@@97 (IndexOfVec_445227 v@@62 e@@26)))
(ite  (not (exists ((i@@98 Int) ) (!  (and (InRangeVec_377830 v@@62 i@@98) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@62) i@@98) e@@26))
 :qid |DiemAccountbpl.109:13|
 :skolemid |0|
))) (= i@@97 (- 0 1))  (and (and (InRangeVec_377830 v@@62 i@@97) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@62) i@@97) e@@26)) (forall ((j@@26 Int) ) (!  (=> (and (>= j@@26 0) (< j@@26 i@@97)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_445227| v@@62) j@@26) e@@26)))
 :qid |DiemAccountbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemAccountbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_445227 v@@62 e@@26))
)))
(assert (forall ((|l#0| Bool) (i@@99 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@99) |l#0|)
 :qid |DiemAccountbpl.275:54|
 :skolemid |3886|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@99))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_416285|) (|l#1| |T@[$1_Event_EventHandle]Multiset_416285|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| |l#1| handle@@0))))
(Multiset_416285 (|lambda#42| (|v#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| |l#0@@0| handle@@0)) (|v#Multiset_416285| (|Select__T@[$1_Event_EventHandle]Multiset_416285_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemAccountbpl.3530:13|
 :skolemid |3887|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_416285_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@100 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@100) (ite  (and (>= i@@100 |l#0@@1|) (< i@@100 |l#1@@0|)) (ite (< i@@100 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@100) (|Select__T@[Int]#0_| |l#4| (- i@@100 |l#5|))) |l#6|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3888|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@100))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@101 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@101) (ite  (and (<= |l#0@@2| i@@101) (< i@@101 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@101) |l#4@@0|)) |l#5@@0|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3889|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@101))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@27 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27) (ite  (and (>= j@@27 |l#0@@3|) (< j@@27 |l#1@@2|)) (ite (< j@@27 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@27) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@27 |l#5@@1|))) |l#6@@0|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3890|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@27))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@102) (ite  (and (>= i@@102 |l#0@@4|) (< i@@102 |l#1@@3|)) (ite (< i@@102 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@102) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@102 |l#5@@2|))) |l#6@@1|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3891|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@102))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@103) (ite  (and (<= |l#0@@5| i@@103) (< i@@103 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@103) |l#4@@3|)) |l#5@@3|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3892|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@103))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28) (ite  (and (>= j@@28 |l#0@@6|) (< j@@28 |l#1@@5|)) (ite (< j@@28 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@28) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@28 |l#5@@4|))) |l#6@@2|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3893|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@28))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@104) (ite  (and (>= i@@104 |l#0@@7|) (< i@@104 |l#1@@6|)) (ite (< i@@104 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@104) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@104 |l#5@@5|))) |l#6@@3|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3894|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@104))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@105) (ite  (and (<= |l#0@@8| i@@105) (< i@@105 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@105) |l#4@@6|)) |l#5@@6|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3895|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@105))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29) (ite  (and (>= j@@29 |l#0@@9|) (< j@@29 |l#1@@8|)) (ite (< j@@29 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@29) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@29 |l#5@@7|))) |l#6@@4|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3896|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@29))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@106) (ite  (and (>= i@@106 |l#0@@10|) (< i@@106 |l#1@@9|)) (ite (< i@@106 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@106) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@106 |l#5@@8|))) |l#6@@5|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3897|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@106))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@107) (ite  (and (<= |l#0@@11| i@@107) (< i@@107 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@107) |l#4@@9|)) |l#5@@9|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3898|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@107))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30) (ite  (and (>= j@@30 |l#0@@12|) (< j@@30 |l#1@@11|)) (ite (< j@@30 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@30) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@30 |l#5@@10|))) |l#6@@6|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3899|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@30))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@108) (ite  (and (>= i@@108 |l#0@@13|) (< i@@108 |l#1@@12|)) (ite (< i@@108 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@108 |l#5@@11|))) |l#6@@7|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3900|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@108))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@109) (ite  (and (<= |l#0@@14| i@@109) (< i@@109 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@109) |l#4@@12|)) |l#5@@12|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3901|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@109))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31) (ite  (and (>= j@@31 |l#0@@15|) (< j@@31 |l#1@@14|)) (ite (< j@@31 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@31 |l#5@@13|))) |l#6@@8|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3902|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@31))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@110) (ite  (and (>= i@@110 |l#0@@16|) (< i@@110 |l#1@@15|)) (ite (< i@@110 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@110) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@110 |l#5@@14|))) |l#6@@9|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3903|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@110))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@111) (ite  (and (<= |l#0@@17| i@@111) (< i@@111 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@111) |l#4@@15|)) |l#5@@15|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3904|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@111))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32) (ite  (and (>= j@@32 |l#0@@18|) (< j@@32 |l#1@@17|)) (ite (< j@@32 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@32 |l#5@@16|))) |l#6@@10|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3905|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@32))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@112) (ite  (and (>= i@@112 |l#0@@19|) (< i@@112 |l#1@@18|)) (ite (< i@@112 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@112) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@112 |l#5@@17|))) |l#6@@11|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3906|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@112))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@113) (ite  (and (<= |l#0@@20| i@@113) (< i@@113 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@113) |l#4@@18|)) |l#5@@18|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3907|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@113))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33) (ite  (and (>= j@@33 |l#0@@21|) (< j@@33 |l#1@@20|)) (ite (< j@@33 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@33) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@33 |l#5@@19|))) |l#6@@12|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3908|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@33))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@114) (ite  (and (>= i@@114 |l#0@@22|) (< i@@114 |l#1@@21|)) (ite (< i@@114 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@114) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@114 |l#5@@20|))) |l#6@@13|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3909|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@114))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@115) (ite  (and (<= |l#0@@23| i@@115) (< i@@115 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@115) |l#4@@21|)) |l#5@@21|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3910|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@115))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34) (ite  (and (>= j@@34 |l#0@@24|) (< j@@34 |l#1@@23|)) (ite (< j@@34 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@34) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@34 |l#5@@22|))) |l#6@@14|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3911|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@34))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@116) (ite  (and (>= i@@116 |l#0@@25|) (< i@@116 |l#1@@24|)) (ite (< i@@116 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@116) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@116 |l#5@@23|))) |l#6@@15|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3912|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@116))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@117) (ite  (and (<= |l#0@@26| i@@117) (< i@@117 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@117) |l#4@@24|)) |l#5@@24|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3913|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@117))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35) (ite  (and (>= j@@35 |l#0@@27|) (< j@@35 |l#1@@26|)) (ite (< j@@35 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@35) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@35 |l#5@@25|))) |l#6@@16|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3914|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@35))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@118 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@118) (ite  (and (>= i@@118 |l#0@@28|) (< i@@118 |l#1@@27|)) (ite (< i@@118 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@118) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@118 |l#5@@26|))) |l#6@@17|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3915|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@118))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@119 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@119) (ite  (and (<= |l#0@@29| i@@119) (< i@@119 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@119) |l#4@@27|)) |l#5@@27|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3916|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@119))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36) (ite  (and (>= j@@36 |l#0@@30|) (< j@@36 |l#1@@29|)) (ite (< j@@36 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@36) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@36 |l#5@@28|))) |l#6@@18|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3917|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@36))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@120 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@120) (ite  (and (>= i@@120 |l#0@@31|) (< i@@120 |l#1@@30|)) (ite (< i@@120 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@120) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@120 |l#5@@29|))) |l#6@@19|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3918|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@120))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@121 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@121) (ite  (and (<= |l#0@@32| i@@121) (< i@@121 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@121) |l#4@@30|)) |l#5@@30|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3919|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@121))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@37 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37) (ite  (and (>= j@@37 |l#0@@33|) (< j@@37 |l#1@@32|)) (ite (< j@@37 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@37) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@37 |l#5@@31|))) |l#6@@20|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3920|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@37))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_37831|) (|l#4@@32| |T@[Int]Vec_37831|) (|l#5@@32| Int) (|l#6@@21| T@Vec_37831) (i@@122 Int) ) (! (= (|Select__T@[Int]Vec_37831_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@122) (ite  (and (>= i@@122 |l#0@@34|) (< i@@122 |l#1@@33|)) (ite (< i@@122 |l#2@@32|) (|Select__T@[Int]Vec_37831_| |l#3@@32| i@@122) (|Select__T@[Int]Vec_37831_| |l#4@@32| (- i@@122 |l#5@@32|))) |l#6@@21|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3921|
 :pattern ( (|Select__T@[Int]Vec_37831_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@122))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_37831|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_37831) (i@@123 Int) ) (! (= (|Select__T@[Int]Vec_37831_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@123) (ite  (and (<= |l#0@@35| i@@123) (< i@@123 |l#1@@34|)) (|Select__T@[Int]Vec_37831_| |l#2@@33| (- (- |l#3@@33| i@@123) |l#4@@33|)) |l#5@@33|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3922|
 :pattern ( (|Select__T@[Int]Vec_37831_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@123))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_37831|) (|l#4@@34| |T@[Int]Vec_37831|) (|l#5@@34| Int) (|l#6@@22| T@Vec_37831) (j@@38 Int) ) (! (= (|Select__T@[Int]Vec_37831_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38) (ite  (and (>= j@@38 |l#0@@36|) (< j@@38 |l#1@@35|)) (ite (< j@@38 |l#2@@34|) (|Select__T@[Int]Vec_37831_| |l#3@@34| j@@38) (|Select__T@[Int]Vec_37831_| |l#4@@34| (+ j@@38 |l#5@@34|))) |l#6@@22|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3923|
 :pattern ( (|Select__T@[Int]Vec_37831_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@38))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@124 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@124) (ite  (and (>= i@@124 |l#0@@37|) (< i@@124 |l#1@@36|)) (ite (< i@@124 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@124) (|Select__T@[Int]Int_| |l#4@@35| (- i@@124 |l#5@@35|))) |l#6@@23|))
 :qid |DiemAccountbpl.73:19|
 :skolemid |3924|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@124))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@125 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@125) (ite  (and (<= |l#0@@38| i@@125) (< i@@125 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@125) |l#4@@36|)) |l#5@@36|))
 :qid |DiemAccountbpl.82:30|
 :skolemid |3925|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@125))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@39 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39) (ite  (and (>= j@@39 |l#0@@39|) (< j@@39 |l#1@@38|)) (ite (< j@@39 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@39) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@39 |l#5@@37|))) |l#6@@24|))
 :qid |DiemAccountbpl.63:20|
 :skolemid |3926|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@39))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@63 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@63) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@63) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@63)))
 :qid |DiemAccountbpl.154:29|
 :skolemid |3927|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@63))
)))
; Valid

