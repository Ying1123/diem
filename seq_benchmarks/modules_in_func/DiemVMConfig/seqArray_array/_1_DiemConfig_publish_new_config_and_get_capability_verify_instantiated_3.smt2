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
(declare-datatypes ((T@$Memory_216284 0)) ((($Memory_216284 (|domain#$Memory_216284| |T@[Int]Bool|) (|contents#$Memory_216284| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_179849 0)) (((Vec_179849 (|v#Vec_179849| |T@[Int]#0|) (|l#Vec_179849| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_226038 0)) ((($Memory_226038 (|domain#$Memory_226038| |T@[Int]Bool|) (|contents#$Memory_226038| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_225967 0)) ((($Memory_225967 (|domain#$Memory_225967| |T@[Int]Bool|) (|contents#$Memory_225967| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_225724 0)) ((($Memory_225724 (|domain#$Memory_225724| |T@[Int]Bool|) (|contents#$Memory_225724| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_225653 0)) ((($Memory_225653 (|domain#$Memory_225653| |T@[Int]Bool|) (|contents#$Memory_225653| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_225582 0)) ((($Memory_225582 (|domain#$Memory_225582| |T@[Int]Bool|) (|contents#$Memory_225582| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_312564 0)) ((($Memory_312564 (|domain#$Memory_312564| |T@[Int]Bool|) (|contents#$Memory_312564| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_225414 0)) ((($Memory_225414 (|domain#$Memory_225414| |T@[Int]Bool|) (|contents#$Memory_225414| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_305663 0)) ((($Memory_305663 (|domain#$Memory_305663| |T@[Int]Bool|) (|contents#$Memory_305663| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_305599 0)) ((($Memory_305599 (|domain#$Memory_305599| |T@[Int]Bool|) (|contents#$Memory_305599| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_304207 0)) ((($Memory_304207 (|domain#$Memory_304207| |T@[Int]Bool|) (|contents#$Memory_304207| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_204065 0)) (((Vec_204065 (|v#Vec_204065| |T@[Int]$1_XDX_XDX|) (|l#Vec_204065| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_206745 0)) (((Vec_206745 (|v#Vec_206745| |T@[Int]$1_XUS_XUS|) (|l#Vec_206745| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_300647 0)) ((($Memory_300647 (|domain#$Memory_300647| |T@[Int]Bool|) (|contents#$Memory_300647| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_300360 0)) ((($Memory_300360 (|domain#$Memory_300360| |T@[Int]Bool|) (|contents#$Memory_300360| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_225246 0)) ((($Memory_225246 (|domain#$Memory_225246| |T@[Int]Bool|) (|contents#$Memory_225246| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_225007 0)) ((($Memory_225007 (|domain#$Memory_225007| |T@[Int]Bool|) (|contents#$Memory_225007| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_225896 0)) ((($Memory_225896 (|domain#$Memory_225896| |T@[Int]Bool|) (|contents#$Memory_225896| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_286341 0)) ((($Memory_286341 (|domain#$Memory_286341| |T@[Int]Bool|) (|contents#$Memory_286341| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_286277 0)) ((($Memory_286277 (|domain#$Memory_286277| |T@[Int]Bool|) (|contents#$Memory_286277| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_286213 0)) ((($Memory_286213 (|domain#$Memory_286213| |T@[Int]Bool|) (|contents#$Memory_286213| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_286708 0)) ((($Memory_286708 (|domain#$Memory_286708| |T@[Int]Bool|) (|contents#$Memory_286708| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_286621 0)) ((($Memory_286621 (|domain#$Memory_286621| |T@[Int]Bool|) (|contents#$Memory_286621| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_314862 0)) ((($Memory_314862 (|domain#$Memory_314862| |T@[Int]Bool|) (|contents#$Memory_314862| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_292535 0)) ((($Memory_292535 (|domain#$Memory_292535| |T@[Int]Bool|) (|contents#$Memory_292535| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251917 0)) ((($Memory_251917 (|domain#$Memory_251917| |T@[Int]Bool|) (|contents#$Memory_251917| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_292454 0)) ((($Memory_292454 (|domain#$Memory_292454| |T@[Int]Bool|) (|contents#$Memory_292454| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_225078 0)) ((($Memory_225078 (|domain#$Memory_225078| |T@[Int]Bool|) (|contents#$Memory_225078| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251857 0)) ((($Memory_251857 (|domain#$Memory_251857| |T@[Int]Bool|) (|contents#$Memory_251857| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_292373 0)) ((($Memory_292373 (|domain#$Memory_292373| |T@[Int]Bool|) (|contents#$Memory_292373| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_225317 0)) ((($Memory_225317 (|domain#$Memory_225317| |T@[Int]Bool|) (|contents#$Memory_225317| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_237799 0)) ((($Memory_237799 (|domain#$Memory_237799| |T@[Int]Bool|) (|contents#$Memory_237799| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_237712 0)) ((($Memory_237712 (|domain#$Memory_237712| |T@[Int]Bool|) (|contents#$Memory_237712| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_237625 0)) ((($Memory_237625 (|domain#$Memory_237625| |T@[Int]Bool|) (|contents#$Memory_237625| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_237538 0)) ((($Memory_237538 (|domain#$Memory_237538| |T@[Int]Bool|) (|contents#$Memory_237538| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_237451 0)) ((($Memory_237451 (|domain#$Memory_237451| |T@[Int]Bool|) (|contents#$Memory_237451| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_237364 0)) ((($Memory_237364 (|domain#$Memory_237364| |T@[Int]Bool|) (|contents#$Memory_237364| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_237277 0)) ((($Memory_237277 (|domain#$Memory_237277| |T@[Int]Bool|) (|contents#$Memory_237277| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_224768 0)) ((($Memory_224768 (|domain#$Memory_224768| |T@[Int]Bool|) (|contents#$Memory_224768| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_236038 0)) ((($Memory_236038 (|domain#$Memory_236038| |T@[Int]Bool|) (|contents#$Memory_236038| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_224609 0)) ((($Memory_224609 (|domain#$Memory_224609| |T@[Int]Bool|) (|contents#$Memory_224609| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_235957 0)) ((($Memory_235957 (|domain#$Memory_235957| |T@[Int]Bool|) (|contents#$Memory_235957| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_224200 0)) ((($Memory_224200 (|domain#$Memory_224200| |T@[Int]Bool|) (|contents#$Memory_224200| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_224516 0)) ((($Memory_224516 (|domain#$Memory_224516| |T@[Int]Bool|) (|contents#$Memory_224516| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_177995 0)) (((Vec_177995 (|v#Vec_177995| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_177995| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_177995) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_177956 0)) (((Vec_177956 (|v#Vec_177956| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_177956| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_177956) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_320759 0)) ((($Memory_320759 (|domain#$Memory_320759| |T@[Int]Bool|) (|contents#$Memory_320759| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_177956) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_29362 0)) (((Vec_29362 (|v#Vec_29362| |T@[Int]Int|) (|l#Vec_29362| Int) ) ) ))
(declare-sort |T@[Int]Vec_29362| 0)
(declare-datatypes ((T@Vec_178194 0)) (((Vec_178194 (|v#Vec_178194| |T@[Int]Vec_29362|) (|l#Vec_178194| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_178194) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_225498 0)) ((($Memory_225498 (|domain#$Memory_225498| |T@[Int]Bool|) (|contents#$Memory_225498| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_178194) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_224839 0)) ((($Memory_224839 (|domain#$Memory_224839| |T@[Int]Bool|) (|contents#$Memory_224839| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_29362) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_29362) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_226122 0)) ((($Memory_226122 (|domain#$Memory_226122| |T@[Int]Bool|) (|contents#$Memory_226122| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_29362) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_235824 0)) ((($Memory_235824 (|domain#$Memory_235824| |T@[Int]Bool|) (|contents#$Memory_235824| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_29362) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_313615 0)) ((($Memory_313615 (|domain#$Memory_313615| |T@[Int]Bool|) (|contents#$Memory_313615| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_29362) (|$base_url#$1_DualAttestation_Credential| T@Vec_29362) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_29362) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_251742 0)) ((($Memory_251742 (|domain#$Memory_251742| |T@[Int]Bool|) (|contents#$Memory_251742| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_178621 0)) (((Vec_178621 (|v#Vec_178621| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_178621| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_178621) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_304143 0)) ((($Memory_304143 (|domain#$Memory_304143| |T@[Int]Bool|) (|contents#$Memory_304143| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_178479 0)) (((Vec_178479 (|v#Vec_178479| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_178479| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_178479) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_293019 0)) ((($Memory_293019 (|domain#$Memory_293019| |T@[Int]Bool|) (|contents#$Memory_293019| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_178440 0)) (((Vec_178440 (|v#Vec_178440| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_178440| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_178440) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_292902 0)) ((($Memory_292902 (|domain#$Memory_292902| |T@[Int]Bool|) (|contents#$Memory_292902| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_178401 0)) (((Vec_178401 (|v#Vec_178401| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_178401| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_178401) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_292785 0)) ((($Memory_292785 (|domain#$Memory_292785| |T@[Int]Bool|) (|contents#$Memory_292785| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_29362) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_285912 0)) ((($Memory_285912 (|domain#$Memory_285912| |T@[Int]Bool|) (|contents#$Memory_285912| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_29362) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_225162 0)) ((($Memory_225162 (|domain#$Memory_225162| |T@[Int]Bool|) (|contents#$Memory_225162| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_29362) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_224923 0)) ((($Memory_224923 (|domain#$Memory_224923| |T@[Int]Bool|) (|contents#$Memory_224923| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_29362) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_29362) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_177917 0)) (((Vec_177917 (|v#Vec_177917| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_177917| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_177917) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_178137 0)) (((Vec_178137 (|v#Vec_178137| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_178137| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_178137) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_224695 0)) ((($Memory_224695 (|domain#$Memory_224695| |T@[Int]Bool|) (|contents#$Memory_224695| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_29362) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_234181 0)) ((($Memory_234181 (|domain#$Memory_234181| |T@[Int]Bool|) (|contents#$Memory_234181| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_232617 0)) ((($Memory_232617 (|domain#$Memory_232617| |T@[Int]Bool|) (|contents#$Memory_232617| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_224329 0)) ((($Memory_224329 (|domain#$Memory_224329| |T@[Int]Bool|) (|contents#$Memory_224329| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_223647 0)) ((($Memory_223647 (|domain#$Memory_223647| |T@[Int]Bool|) (|contents#$Memory_223647| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_29362) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_29362) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_29362) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_29362) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_29362) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_29362) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_29362) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_29362) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_29362) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_29362) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_29362) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_29362) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_29362) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_177831 0)) (((Multiset_177831 (|v#Multiset_177831| |T@[$EventRep]Int|) (|l#Multiset_177831| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_177831| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_177831|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_429544 0)) ((($Mutation_429544 (|l#$Mutation_429544| T@$Location) (|p#$Mutation_429544| T@Vec_29362) (|v#$Mutation_429544| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((T@$Mutation_429497 0)) ((($Mutation_429497 (|l#$Mutation_429497| T@$Location) (|p#$Mutation_429497| T@Vec_29362) (|v#$Mutation_429497| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$Mutation_418632 0)) ((($Mutation_418632 (|l#$Mutation_418632| T@$Location) (|p#$Mutation_418632| T@Vec_29362) (|v#$Mutation_418632| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_418587 0)) ((($Mutation_418587 (|l#$Mutation_418587| T@$Location) (|p#$Mutation_418587| T@Vec_29362) (|v#$Mutation_418587| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_305982 0)) ((($Mutation_305982 (|l#$Mutation_305982| T@$Location) (|p#$Mutation_305982| T@Vec_29362) (|v#$Mutation_305982| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_70889 0)) ((($Mutation_70889 (|l#$Mutation_70889| T@$Location) (|p#$Mutation_70889| T@Vec_29362) (|v#$Mutation_70889| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_298513 0)) ((($Mutation_298513 (|l#$Mutation_298513| T@$Location) (|p#$Mutation_298513| T@Vec_29362) (|v#$Mutation_298513| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_284601 0)) ((($Mutation_284601 (|l#$Mutation_284601| T@$Location) (|p#$Mutation_284601| T@Vec_29362) (|v#$Mutation_284601| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_248560 0)) ((($Mutation_248560 (|l#$Mutation_248560| T@$Location) (|p#$Mutation_248560| T@Vec_29362) (|v#$Mutation_248560| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-datatypes ((T@$Mutation_248514 0)) ((($Mutation_248514 (|l#$Mutation_248514| T@$Location) (|p#$Mutation_248514| T@Vec_29362) (|v#$Mutation_248514| |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$Mutation_245910 0)) ((($Mutation_245910 (|l#$Mutation_245910| T@$Location) (|p#$Mutation_245910| T@Vec_29362) (|v#$Mutation_245910| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_245864 0)) ((($Mutation_245864 (|l#$Mutation_245864| T@$Location) (|p#$Mutation_245864| T@Vec_29362) (|v#$Mutation_245864| |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_243260 0)) ((($Mutation_243260 (|l#$Mutation_243260| T@$Location) (|p#$Mutation_243260| T@Vec_29362) (|v#$Mutation_243260| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-datatypes ((T@$Mutation_243214 0)) ((($Mutation_243214 (|l#$Mutation_243214| T@$Location) (|p#$Mutation_243214| T@Vec_29362) (|v#$Mutation_243214| |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_240610 0)) ((($Mutation_240610 (|l#$Mutation_240610| T@$Location) (|p#$Mutation_240610| T@Vec_29362) (|v#$Mutation_240610| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_240564 0)) ((($Mutation_240564 (|l#$Mutation_240564| T@$Location) (|p#$Mutation_240564| T@Vec_29362) (|v#$Mutation_240564| |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$Mutation_237878 0)) ((($Mutation_237878 (|l#$Mutation_237878| T@$Location) (|p#$Mutation_237878| T@Vec_29362) (|v#$Mutation_237878| |T@$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_224142 0)) ((($Mutation_224142 (|l#$Mutation_224142| T@$Location) (|p#$Mutation_224142| T@Vec_29362) (|v#$Mutation_224142| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_216915 0)) ((($Mutation_216915 (|l#$Mutation_216915| T@$Location) (|p#$Mutation_216915| T@Vec_29362) (|v#$Mutation_216915| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_29362) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_211172 0)) ((($Mutation_211172 (|l#$Mutation_211172| T@$Location) (|p#$Mutation_211172| T@Vec_29362) (|v#$Mutation_211172| T@Vec_29362) ) ) ))
(declare-datatypes ((T@$Mutation_210084 0)) ((($Mutation_210084 (|l#$Mutation_210084| T@$Location) (|p#$Mutation_210084| T@Vec_29362) (|v#$Mutation_210084| T@Vec_178194) ) ) ))
(declare-datatypes ((T@$Mutation_208375 0)) ((($Mutation_208375 (|l#$Mutation_208375| T@$Location) (|p#$Mutation_208375| T@Vec_29362) (|v#$Mutation_208375| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_207388 0)) ((($Mutation_207388 (|l#$Mutation_207388| T@$Location) (|p#$Mutation_207388| T@Vec_29362) (|v#$Mutation_207388| T@Vec_206745) ) ) ))
(declare-datatypes ((T@$Mutation_205695 0)) ((($Mutation_205695 (|l#$Mutation_205695| T@$Location) (|p#$Mutation_205695| T@Vec_29362) (|v#$Mutation_205695| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_204708 0)) ((($Mutation_204708 (|l#$Mutation_204708| T@$Location) (|p#$Mutation_204708| T@Vec_29362) (|v#$Mutation_204708| T@Vec_204065) ) ) ))
(declare-datatypes ((T@$Mutation_203015 0)) ((($Mutation_203015 (|l#$Mutation_203015| T@$Location) (|p#$Mutation_203015| T@Vec_29362) (|v#$Mutation_203015| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_202028 0)) ((($Mutation_202028 (|l#$Mutation_202028| T@$Location) (|p#$Mutation_202028| T@Vec_29362) (|v#$Mutation_202028| T@Vec_177917) ) ) ))
(declare-datatypes ((T@$Mutation_200373 0)) ((($Mutation_200373 (|l#$Mutation_200373| T@$Location) (|p#$Mutation_200373| T@Vec_29362) (|v#$Mutation_200373| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_199386 0)) ((($Mutation_199386 (|l#$Mutation_199386| T@$Location) (|p#$Mutation_199386| T@Vec_29362) (|v#$Mutation_199386| T@Vec_178621) ) ) ))
(declare-datatypes ((T@$Mutation_197708 0)) ((($Mutation_197708 (|l#$Mutation_197708| T@$Location) (|p#$Mutation_197708| T@Vec_29362) (|v#$Mutation_197708| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_196721 0)) ((($Mutation_196721 (|l#$Mutation_196721| T@$Location) (|p#$Mutation_196721| T@Vec_29362) (|v#$Mutation_196721| T@Vec_178401) ) ) ))
(declare-datatypes ((T@$Mutation_195012 0)) ((($Mutation_195012 (|l#$Mutation_195012| T@$Location) (|p#$Mutation_195012| T@Vec_29362) (|v#$Mutation_195012| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_194025 0)) ((($Mutation_194025 (|l#$Mutation_194025| T@$Location) (|p#$Mutation_194025| T@Vec_29362) (|v#$Mutation_194025| T@Vec_178440) ) ) ))
(declare-datatypes ((T@$Mutation_192316 0)) ((($Mutation_192316 (|l#$Mutation_192316| T@$Location) (|p#$Mutation_192316| T@Vec_29362) (|v#$Mutation_192316| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_191329 0)) ((($Mutation_191329 (|l#$Mutation_191329| T@$Location) (|p#$Mutation_191329| T@Vec_29362) (|v#$Mutation_191329| T@Vec_178479) ) ) ))
(declare-datatypes ((T@$Mutation_189620 0)) ((($Mutation_189620 (|l#$Mutation_189620| T@$Location) (|p#$Mutation_189620| T@Vec_29362) (|v#$Mutation_189620| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_188633 0)) ((($Mutation_188633 (|l#$Mutation_188633| T@$Location) (|p#$Mutation_188633| T@Vec_29362) (|v#$Mutation_188633| T@Vec_178137) ) ) ))
(declare-datatypes ((T@$Mutation_186833 0)) ((($Mutation_186833 (|l#$Mutation_186833| T@$Location) (|p#$Mutation_186833| T@Vec_29362) (|v#$Mutation_186833| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_185846 0)) ((($Mutation_185846 (|l#$Mutation_185846| T@$Location) (|p#$Mutation_185846| T@Vec_29362) (|v#$Mutation_185846| T@Vec_177995) ) ) ))
(declare-datatypes ((T@$Mutation_184181 0)) ((($Mutation_184181 (|l#$Mutation_184181| T@$Location) (|p#$Mutation_184181| T@Vec_29362) (|v#$Mutation_184181| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_183194 0)) ((($Mutation_183194 (|l#$Mutation_183194| T@$Location) (|p#$Mutation_183194| T@Vec_29362) (|v#$Mutation_183194| T@Vec_177956) ) ) ))
(declare-datatypes ((T@$Mutation_181481 0)) ((($Mutation_181481 (|l#$Mutation_181481| T@$Location) (|p#$Mutation_181481| T@Vec_29362) (|v#$Mutation_181481| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_180494 0)) ((($Mutation_180494 (|l#$Mutation_180494| T@$Location) (|p#$Mutation_180494| T@Vec_29362) (|v#$Mutation_180494| T@Vec_179849) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_179849 T@Vec_179849) Bool)
(declare-fun InRangeVec_159891 (T@Vec_179849 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_179849) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_179849 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_177956 T@Vec_177956) Bool)
(declare-fun InRangeVec_160092 (T@Vec_177956 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_177956) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_177956 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_177995 T@Vec_177995) Bool)
(declare-fun InRangeVec_160293 (T@Vec_177995 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_177995) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_177995 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_178137 T@Vec_178137) Bool)
(declare-fun InRangeVec_160494 (T@Vec_178137 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_29362 T@Vec_29362) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_178137) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_178137 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_178479 T@Vec_178479) Bool)
(declare-fun InRangeVec_160695 (T@Vec_178479 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_178479) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_178479 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_178440 T@Vec_178440) Bool)
(declare-fun InRangeVec_160896 (T@Vec_178440 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_178440) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_178440 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_178401 T@Vec_178401) Bool)
(declare-fun InRangeVec_161097 (T@Vec_178401 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_178401) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_178401 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_178621 T@Vec_178621) Bool)
(declare-fun InRangeVec_161298 (T@Vec_178621 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_178621) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_178621 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_177917 T@Vec_177917) Bool)
(declare-fun InRangeVec_161499 (T@Vec_177917 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_177917) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_177917 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_204065 T@Vec_204065) Bool)
(declare-fun InRangeVec_161700 (T@Vec_204065 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_204065) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_204065 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_206745 T@Vec_206745) Bool)
(declare-fun InRangeVec_161901 (T@Vec_206745 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_206745) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_206745 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_178194 T@Vec_178194) Bool)
(declare-fun InRangeVec_209507 (T@Vec_178194 Int) Bool)
(declare-fun |Select__T@[Int]Vec_29362_| (|T@[Int]Vec_29362| Int) T@Vec_29362)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_178194) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_29362) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_178194 T@Vec_29362) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_29362 T@Vec_29362) Bool)
(declare-fun InRangeVec_16728 (T@Vec_29362 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_29362) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_29362 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_29362 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_29362) T@Vec_29362)
(declare-fun $1_Hash_sha3 (T@Vec_29362) T@Vec_29362)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_29362) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_29362 T@Vec_29362 T@Vec_29362) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_177831_| (|T@[$1_Event_EventHandle]Multiset_177831| T@$1_Event_EventHandle) T@Multiset_177831)
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
(declare-fun IndexOfVec_29362 (T@Vec_29362 Int) Int)
(declare-fun IndexOfVec_177917 (T@Vec_177917 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_177956 (T@Vec_177956 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_177995 (T@Vec_177995 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_178137 (T@Vec_178137 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_178194 (T@Vec_178194 T@Vec_29362) Int)
(declare-fun IndexOfVec_178401 (T@Vec_178401 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_178440 (T@Vec_178440 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_178479 (T@Vec_178479 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_178621 (T@Vec_178621 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_179849 (T@Vec_179849 |T@#0|) Int)
(declare-fun IndexOfVec_204065 (T@Vec_204065 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_206745 (T@Vec_206745 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_177831| |T@[$1_Event_EventHandle]Multiset_177831|) |T@[$1_Event_EventHandle]Multiset_177831|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_29362| |T@[Int]Vec_29362| Int T@Vec_29362) |T@[Int]Vec_29362|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_29362| Int Int T@Vec_29362) |T@[Int]Vec_29362|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_29362| |T@[Int]Vec_29362| Int T@Vec_29362) |T@[Int]Vec_29362|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemVMConfigbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemVMConfigbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemVMConfigbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemVMConfigbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemVMConfigbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemVMConfigbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemVMConfigbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemVMConfigbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_179849) (v2 T@Vec_179849) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_179849| v1) (|l#Vec_179849| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_159891 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_179849| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_179849| v2) i@@0)))
 :qid |DiemVMConfigbpl.615:13|
 :skolemid |17|
))))
 :qid |DiemVMConfigbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_179849) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_179849| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_159891 v@@4 i@@1) true)
 :qid |DiemVMConfigbpl.621:13|
 :skolemid |19|
))))
 :qid |DiemVMConfigbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_179849) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_159891 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@5) i@@3) e))
 :qid |DiemVMConfigbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_159891 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@5) j) e)))
 :qid |DiemVMConfigbpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemVMConfigbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_177956) (v2@@0 T@Vec_177956) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_177956| v1@@0) (|l#Vec_177956| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_160092 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v2@@0) i@@4)))
 :qid |DiemVMConfigbpl.796:13|
 :skolemid |24|
))))
 :qid |DiemVMConfigbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_177956) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_177956| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_160092 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@6) i@@5)))
 :qid |DiemVMConfigbpl.802:13|
 :skolemid |26|
))))
 :qid |DiemVMConfigbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_177956) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_160092 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@7) i@@7) e@@0))
 :qid |DiemVMConfigbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_160092 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@7) j@@0) e@@0)))
 :qid |DiemVMConfigbpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemVMConfigbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_177995) (v2@@1 T@Vec_177995) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_177995| v1@@1) (|l#Vec_177995| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_160293 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v2@@1) i@@8)))
 :qid |DiemVMConfigbpl.977:13|
 :skolemid |31|
))))
 :qid |DiemVMConfigbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_177995) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_177995| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_160293 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@8) i@@9)))
 :qid |DiemVMConfigbpl.983:13|
 :skolemid |33|
))))
 :qid |DiemVMConfigbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_177995) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_160293 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@9) i@@11) e@@1))
 :qid |DiemVMConfigbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_160293 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@9) j@@1) e@@1)))
 :qid |DiemVMConfigbpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemVMConfigbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_178137) (v2@@2 T@Vec_178137) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_178137| v1@@2) (|l#Vec_178137| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_160494 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12)))))
 :qid |DiemVMConfigbpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemVMConfigbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_178137) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_178137| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_160494 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@10) i@@13)))
 :qid |DiemVMConfigbpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemVMConfigbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_178137) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_160494 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemVMConfigbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_160494 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemVMConfigbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemVMConfigbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_178479) (v2@@3 T@Vec_178479) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_178479| v1@@3) (|l#Vec_178479| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_160695 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v2@@3) i@@16)))))
 :qid |DiemVMConfigbpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemVMConfigbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_178479) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_178479| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_160695 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@12) i@@17)))
 :qid |DiemVMConfigbpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemVMConfigbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_178479) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_160695 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemVMConfigbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_160695 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemVMConfigbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemVMConfigbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_178440) (v2@@4 T@Vec_178440) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_178440| v1@@4) (|l#Vec_178440| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_160896 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v2@@4) i@@20)))))
 :qid |DiemVMConfigbpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemVMConfigbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_178440) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_178440| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_160896 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@14) i@@21)))
 :qid |DiemVMConfigbpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemVMConfigbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_178440) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_160896 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemVMConfigbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_160896 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemVMConfigbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemVMConfigbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_178401) (v2@@5 T@Vec_178401) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_178401| v1@@5) (|l#Vec_178401| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_161097 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v2@@5) i@@24)))))
 :qid |DiemVMConfigbpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemVMConfigbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_178401) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_178401| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_161097 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@16) i@@25)))
 :qid |DiemVMConfigbpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemVMConfigbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_178401) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_161097 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemVMConfigbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_161097 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemVMConfigbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemVMConfigbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_178621) (v2@@6 T@Vec_178621) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_178621| v1@@6) (|l#Vec_178621| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_161298 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v2@@6) i@@28))))
 :qid |DiemVMConfigbpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemVMConfigbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_178621) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_178621| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_161298 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@18) i@@29)))
 :qid |DiemVMConfigbpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemVMConfigbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_178621) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_161298 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |DiemVMConfigbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_161298 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |DiemVMConfigbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemVMConfigbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_177917) (v2@@7 T@Vec_177917) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_177917| v1@@7) (|l#Vec_177917| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_161499 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v2@@7) i@@32)))))
 :qid |DiemVMConfigbpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemVMConfigbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_177917) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_177917| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_161499 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@20) i@@33)))
 :qid |DiemVMConfigbpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemVMConfigbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_177917) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_161499 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |DiemVMConfigbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_161499 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |DiemVMConfigbpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemVMConfigbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_204065) (v2@@8 T@Vec_204065) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_204065| v1@@8) (|l#Vec_204065| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_161700 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v2@@8) i@@36)))
 :qid |DiemVMConfigbpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemVMConfigbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_204065) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_204065| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_161700 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@22) i@@37)))
 :qid |DiemVMConfigbpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemVMConfigbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_204065) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_161700 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@23) i@@39) e@@8))
 :qid |DiemVMConfigbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_161700 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@23) j@@8) e@@8)))
 :qid |DiemVMConfigbpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemVMConfigbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_206745) (v2@@9 T@Vec_206745) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_206745| v1@@9) (|l#Vec_206745| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_161901 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v2@@9) i@@40)))
 :qid |DiemVMConfigbpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemVMConfigbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_206745) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_206745| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_161901 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@24) i@@41)))
 :qid |DiemVMConfigbpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemVMConfigbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_206745) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_161901 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@25) i@@43) e@@9))
 :qid |DiemVMConfigbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_161901 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@25) j@@9) e@@9)))
 :qid |DiemVMConfigbpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemVMConfigbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_178194) (v2@@10 T@Vec_178194) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_178194| v1@@10) (|l#Vec_178194| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_209507 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v1@@10) i@@44) (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v2@@10) i@@44)))
 :qid |DiemVMConfigbpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemVMConfigbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_178194) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_178194| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_209507 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@26) i@@45)))
 :qid |DiemVMConfigbpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemVMConfigbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_178194) (e@@10 T@Vec_29362) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_209507 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@27) i@@47) e@@10))
 :qid |DiemVMConfigbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_209507 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@27) j@@10) e@@10)))
 :qid |DiemVMConfigbpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemVMConfigbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_29362) (v2@@11 T@Vec_29362) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_29362| v1@@11) (|l#Vec_29362| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_29362| v2@@11) i@@48)))
 :qid |DiemVMConfigbpl.2787:13|
 :skolemid |101|
))))
 :qid |DiemVMConfigbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_29362) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_29362| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_29362| v@@28) i@@49)))
 :qid |DiemVMConfigbpl.2793:13|
 :skolemid |103|
))))
 :qid |DiemVMConfigbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_29362) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@29) i@@51) e@@11))
 :qid |DiemVMConfigbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@29) j@@11) e@@11)))
 :qid |DiemVMConfigbpl.2806:17|
 :skolemid |106|
)))))
 :qid |DiemVMConfigbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_29362) (v2@@12 T@Vec_29362) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12)  (and (= (|l#Vec_29362| v1@@12) (|l#Vec_29362| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_29362| v2@@12) i@@52)))
 :qid |DiemVMConfigbpl.2968:13|
 :skolemid |108|
))))
 :qid |DiemVMConfigbpl.2966:28|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u8''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_29362) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_29362| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_29362| v@@30) i@@53)))
 :qid |DiemVMConfigbpl.2974:13|
 :skolemid |110|
))))
 :qid |DiemVMConfigbpl.2972:28|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_29362) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@31) i@@55) e@@12))
 :qid |DiemVMConfigbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@31) j@@12) e@@12)))
 :qid |DiemVMConfigbpl.2987:17|
 :skolemid |113|
)))))
 :qid |DiemVMConfigbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_29362) (v2@@13 T@Vec_29362) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13)))
 :qid |DiemVMConfigbpl.3160:15|
 :skolemid |115|
 :pattern ( ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13))
)))
(assert (forall ((v1@@14 T@Vec_29362) (v2@@14 T@Vec_29362) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14)))
 :qid |DiemVMConfigbpl.3176:15|
 :skolemid |116|
 :pattern ( ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14))
)))
(assert (forall ((k1 T@Vec_29362) (k2 T@Vec_29362) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemVMConfigbpl.3247:15|
 :skolemid |117|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_29362) (s2 T@Vec_29362) (k1@@0 T@Vec_29362) (k2@@0 T@Vec_29362) (m1 T@Vec_29362) (m2 T@Vec_29362) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemVMConfigbpl.3250:15|
 :skolemid |118|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_177831_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_177831| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_177831| stream) v@@32) 0)
 :qid |DiemVMConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemVMConfigbpl.3311:13|
 :skolemid |119|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemVMConfigbpl.3352:80|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@15 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@15 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15)))
 :qid |DiemVMConfigbpl.3358:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemVMConfigbpl.3408:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16)))
 :qid |DiemVMConfigbpl.3414:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemVMConfigbpl.3464:80|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@17 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@17 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@17)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17)))
 :qid |DiemVMConfigbpl.3470:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemVMConfigbpl.3520:79|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_AdminTransactionEvent) (v2@@18 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18)))
 :qid |DiemVMConfigbpl.3526:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemVMConfigbpl.3576:76|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_CreateAccountEvent) (v2@@19 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19)))
 :qid |DiemVMConfigbpl.3582:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemVMConfigbpl.3632:78|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@20 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20)))
 :qid |DiemVMConfigbpl.3638:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemVMConfigbpl.3688:74|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_SentPaymentEvent) (v2@@21 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21)))
 :qid |DiemVMConfigbpl.3694:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemVMConfigbpl.3744:69|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@22 T@$1_DiemBlock_NewBlockEvent) (v2@@22 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@22) (|$round#$1_DiemBlock_NewBlockEvent| v2@@22)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@22) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@22))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@22) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@22) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22)))
 :qid |DiemVMConfigbpl.3750:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemVMConfigbpl.3800:70|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@23 T@$1_DiemConfig_NewEpochEvent) (v2@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@23 v2@@23) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23)))
 :qid |DiemVMConfigbpl.3806:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemVMConfigbpl.3856:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@24 T@$1_Diem_BurnEvent) (v2@@24 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@24) (|$amount#$1_Diem_BurnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@24) (|$currency_code#$1_Diem_BurnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@24) (|$preburn_address#$1_Diem_BurnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24)))
 :qid |DiemVMConfigbpl.3862:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemVMConfigbpl.3912:66|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@25 T@$1_Diem_CancelBurnEvent) (v2@@25 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@25) (|$amount#$1_Diem_CancelBurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@25) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@25) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25)))
 :qid |DiemVMConfigbpl.3918:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemVMConfigbpl.3968:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@26 T@$1_Diem_MintEvent) (v2@@26 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@26) (|$amount#$1_Diem_MintEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@26) (|$currency_code#$1_Diem_MintEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26)))
 :qid |DiemVMConfigbpl.3974:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemVMConfigbpl.4024:63|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@27 T@$1_Diem_PreburnEvent) (v2@@27 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@27) (|$amount#$1_Diem_PreburnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@27) (|$currency_code#$1_Diem_PreburnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@27) (|$preburn_address#$1_Diem_PreburnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27)))
 :qid |DiemVMConfigbpl.4030:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemVMConfigbpl.4080:79|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28)))
 :qid |DiemVMConfigbpl.4086:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemVMConfigbpl.4136:82|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@29 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@29 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@29)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@29))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29)))
 :qid |DiemVMConfigbpl.4142:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemVMConfigbpl.4192:88|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30)))
 :qid |DiemVMConfigbpl.4198:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemVMConfigbpl.4248:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@31 T@$1_VASPDomain_VASPDomainEvent) (v2@@31 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@31)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@31)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@31))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31)))
 :qid |DiemVMConfigbpl.4254:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemVMConfigbpl.4333:61|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemVMConfigbpl.5148:36|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemVMConfigbpl.6649:71|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemVMConfigbpl.7018:46|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemVMConfigbpl.7030:64|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemVMConfigbpl.7042:75|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemVMConfigbpl.7054:72|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemVMConfigbpl.7087:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemVMConfigbpl.7110:46|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemVMConfigbpl.7392:49|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemVMConfigbpl.7497:71|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemVMConfigbpl.7510:91|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemVMConfigbpl.7523:113|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |DiemVMConfigbpl.7536:89|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemVMConfigbpl.7549:75|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemVMConfigbpl.7562:73|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15) true)
 :qid |DiemVMConfigbpl.7576:49|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@16)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@16)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@16))))
 :qid |DiemVMConfigbpl.7596:48|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17) true)
 :qid |DiemVMConfigbpl.7613:57|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18) true)
 :qid |DiemVMConfigbpl.7627:83|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19) true)
 :qid |DiemVMConfigbpl.7641:103|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20) true)
 :qid |DiemVMConfigbpl.7655:125|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@21) true)
 :qid |DiemVMConfigbpl.7669:101|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@22) true)
 :qid |DiemVMConfigbpl.7683:87|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@23) true)
 :qid |DiemVMConfigbpl.7697:85|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@24) true)
 :qid |DiemVMConfigbpl.7711:61|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@25) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@25)))
 :qid |DiemVMConfigbpl.7725:48|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@26)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@26)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@26))))
 :qid |DiemVMConfigbpl.16318:45|
 :skolemid |476|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@27) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@27)))
 :qid |DiemVMConfigbpl.16332:51|
 :skolemid |477|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@27))
)))
(assert (forall ((s@@28 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@28)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@28)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@28))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@28))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@28))))
 :qid |DiemVMConfigbpl.16355:48|
 :skolemid |478|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@28))
)))
(assert (forall ((s@@29 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@29) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@29)))
 :qid |DiemVMConfigbpl.16649:49|
 :skolemid |479|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@29))
)))
(assert (forall ((s@@30 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@30) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@30)))
 :qid |DiemVMConfigbpl.16662:65|
 :skolemid |480|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@31)))
 :qid |DiemVMConfigbpl.17203:45|
 :skolemid |481|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@32) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@32)))
 :qid |DiemVMConfigbpl.17216:45|
 :skolemid |482|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@33) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@33)))
 :qid |DiemVMConfigbpl.17229:37|
 :skolemid |483|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34) true)
 :qid |DiemVMConfigbpl.17242:55|
 :skolemid |484|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35) true)
 :qid |DiemVMConfigbpl.17256:55|
 :skolemid |485|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@36))))
 :qid |DiemVMConfigbpl.17276:38|
 :skolemid |486|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@37))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@37))))
 :qid |DiemVMConfigbpl.17298:44|
 :skolemid |487|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))))
 :qid |DiemVMConfigbpl.17350:53|
 :skolemid |488|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))))
 :qid |DiemVMConfigbpl.17423:53|
 :skolemid |489|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@40)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@40)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@40))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@40))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@40))))
 :qid |DiemVMConfigbpl.17496:45|
 :skolemid |490|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@41) true)
 :qid |DiemVMConfigbpl.17533:55|
 :skolemid |491|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@42) true)
 :qid |DiemVMConfigbpl.17547:55|
 :skolemid |492|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@43) true)
 :qid |DiemVMConfigbpl.17561:47|
 :skolemid |493|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@43))
)))
(assert (forall ((s@@44 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@44)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@44)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@44))))
 :qid |DiemVMConfigbpl.17578:38|
 :skolemid |494|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@45)))
 :qid |DiemVMConfigbpl.17592:48|
 :skolemid |495|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@46) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@46)))
 :qid |DiemVMConfigbpl.17606:48|
 :skolemid |496|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@47) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@47)))
 :qid |DiemVMConfigbpl.17620:40|
 :skolemid |497|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@47))
)))
(assert (forall ((s@@48 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@48)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@48)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@48))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@48))))
 :qid |DiemVMConfigbpl.17640:41|
 :skolemid |498|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@49)))
 :qid |DiemVMConfigbpl.17656:53|
 :skolemid |499|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@50)))
 :qid |DiemVMConfigbpl.17669:53|
 :skolemid |500|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@51) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@51)))
 :qid |DiemVMConfigbpl.17682:45|
 :skolemid |501|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@52))))
 :qid |DiemVMConfigbpl.17698:60|
 :skolemid |502|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@53))))
 :qid |DiemVMConfigbpl.17715:60|
 :skolemid |503|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@54)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@54)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@54))))
 :qid |DiemVMConfigbpl.17732:52|
 :skolemid |504|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@54))
)))
(assert (forall ((s@@55 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@55)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@55)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@55))))
 :qid |DiemVMConfigbpl.17749:57|
 :skolemid |505|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@55))
)))
(assert (forall ((s@@56 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@56) true)
 :qid |DiemVMConfigbpl.19922:68|
 :skolemid |506|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57))))
 :qid |DiemVMConfigbpl.19944:66|
 :skolemid |507|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58))))
 :qid |DiemVMConfigbpl.19970:66|
 :skolemid |508|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |DiemVMConfigbpl.19999:56|
 :skolemid |509|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |DiemVMConfigbpl.20029:56|
 :skolemid |510|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@61) true)
 :qid |DiemVMConfigbpl.20463:31|
 :skolemid |511|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@61))
)))
(assert (forall ((s@@62 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@62) true)
 :qid |DiemVMConfigbpl.20793:31|
 :skolemid |512|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@63)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@63)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@63))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@63))))
 :qid |DiemVMConfigbpl.20812:35|
 :skolemid |513|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@64)))
 :qid |DiemVMConfigbpl.21226:45|
 :skolemid |514|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@65))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@65))))
 :qid |DiemVMConfigbpl.21244:50|
 :skolemid |515|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@66)))
 :qid |DiemVMConfigbpl.21260:52|
 :skolemid |516|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@67)))
 :qid |DiemVMConfigbpl.21273:46|
 :skolemid |517|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@68) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@68)))
 :qid |DiemVMConfigbpl.21654:38|
 :skolemid |518|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@69) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@69)))
 :qid |DiemVMConfigbpl.21668:39|
 :skolemid |519|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@69))
)))
(assert (forall ((s@@70 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70))))
 :qid |DiemVMConfigbpl.22355:65|
 :skolemid |520|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@71)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@71)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@71))))
 :qid |DiemVMConfigbpl.22723:60|
 :skolemid |521|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@72))))
 :qid |DiemVMConfigbpl.22740:66|
 :skolemid |522|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@73)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@73)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@73))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@73))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@73))))
 :qid |DiemVMConfigbpl.22769:50|
 :skolemid |523|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@74) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@74)))
 :qid |DiemVMConfigbpl.22792:45|
 :skolemid |524|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@75)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@75)) true))
 :qid |DiemVMConfigbpl.23365:87|
 :skolemid |525|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@76) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@76)))
 :qid |DiemVMConfigbpl.23566:47|
 :skolemid |526|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@77)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@77)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@77))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@77))))
 :qid |DiemVMConfigbpl.23585:58|
 :skolemid |527|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@78) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@78)))
 :qid |DiemVMConfigbpl.23601:39|
 :skolemid |528|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@79)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@79))))
 :qid |DiemVMConfigbpl.23623:58|
 :skolemid |529|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@80)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@80))))
 :qid |DiemVMConfigbpl.23640:58|
 :skolemid |530|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@81) true)
 :qid |DiemVMConfigbpl.23655:51|
 :skolemid |531|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@82)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@82)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@82))))
 :qid |DiemVMConfigbpl.23672:60|
 :skolemid |532|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@83)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@83)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@83))))
 :qid |DiemVMConfigbpl.23958:47|
 :skolemid |533|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@84)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@84))))
 :qid |DiemVMConfigbpl.23984:63|
 :skolemid |534|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@85) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@85)))
 :qid |DiemVMConfigbpl.23999:57|
 :skolemid |535|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@86) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@86)))
 :qid |DiemVMConfigbpl.24012:55|
 :skolemid |536|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@87)))
 :qid |DiemVMConfigbpl.24026:55|
 :skolemid |537|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@88) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@88)))
 :qid |DiemVMConfigbpl.24040:47|
 :skolemid |538|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@89)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@89))))
 :qid |DiemVMConfigbpl.24057:54|
 :skolemid |539|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@90)))
 :qid |DiemVMConfigbpl.24071:55|
 :skolemid |540|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@91)))
 :qid |DiemVMConfigbpl.24084:57|
 :skolemid |541|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@92))))
 :qid |DiemVMConfigbpl.24106:56|
 :skolemid |542|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@93))))
 :qid |DiemVMConfigbpl.24133:52|
 :skolemid |543|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@94)))
 :qid |DiemVMConfigbpl.24151:54|
 :skolemid |544|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94))
)))
(assert (forall ((s@@95 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@95) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@95)))
 :qid |DiemVMConfigbpl.41175:55|
 :skolemid |1492|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@96)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@96)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@96))))
 :qid |DiemVMConfigbpl.41196:47|
 :skolemid |1493|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@97)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@97)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@97))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@97))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@97))))
 :qid |DiemVMConfigbpl.41220:47|
 :skolemid |1494|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@98) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@98)))
 :qid |DiemVMConfigbpl.41454:63|
 :skolemid |1495|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@99) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@99)))
 :qid |DiemVMConfigbpl.41789:49|
 :skolemid |1496|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@100)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@100)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@100))))
 :qid |DiemVMConfigbpl.41831:49|
 :skolemid |1497|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@101)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@101)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@101))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@101))))
 :qid |DiemVMConfigbpl.41860:48|
 :skolemid |1498|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@102) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@102)))
 :qid |DiemVMConfigbpl.43780:47|
 :skolemid |1569|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@102))
)))
(assert (forall ((v@@33 T@Vec_179849) (i@@56 Int) ) (! (= (InRangeVec_159891 v@@33 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_179849| v@@33))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_159891 v@@33 i@@56))
)))
(assert (forall ((v@@34 T@Vec_177956) (i@@57 Int) ) (! (= (InRangeVec_160092 v@@34 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_177956| v@@34))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160092 v@@34 i@@57))
)))
(assert (forall ((v@@35 T@Vec_177995) (i@@58 Int) ) (! (= (InRangeVec_160293 v@@35 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_177995| v@@35))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160293 v@@35 i@@58))
)))
(assert (forall ((v@@36 T@Vec_178137) (i@@59 Int) ) (! (= (InRangeVec_160494 v@@36 i@@59)  (and (>= i@@59 0) (< i@@59 (|l#Vec_178137| v@@36))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160494 v@@36 i@@59))
)))
(assert (forall ((v@@37 T@Vec_178479) (i@@60 Int) ) (! (= (InRangeVec_160695 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_178479| v@@37))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160695 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_178440) (i@@61 Int) ) (! (= (InRangeVec_160896 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_178440| v@@38))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160896 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_178401) (i@@62 Int) ) (! (= (InRangeVec_161097 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_178401| v@@39))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_161097 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_178621) (i@@63 Int) ) (! (= (InRangeVec_161298 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_178621| v@@40))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_161298 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_177917) (i@@64 Int) ) (! (= (InRangeVec_161499 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_177917| v@@41))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_161499 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_204065) (i@@65 Int) ) (! (= (InRangeVec_161700 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_204065| v@@42))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_161700 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_206745) (i@@66 Int) ) (! (= (InRangeVec_161901 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_206745| v@@43))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_161901 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_178194) (i@@67 Int) ) (! (= (InRangeVec_209507 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_178194| v@@44))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_209507 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_29362) (i@@68 Int) ) (! (= (InRangeVec_16728 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_29362| v@@45))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_29362) (e@@13 Int) ) (! (let ((i@@69 (IndexOfVec_29362 v@@46 e@@13)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_16728 v@@46 i@@70) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@46) i@@70) e@@13))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_16728 v@@46 i@@69) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@46) i@@69) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@69)) (not (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@46) j@@13) e@@13)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_29362 v@@46 e@@13))
)))
(assert (forall ((v@@47 T@Vec_177917) (e@@14 T@$1_ValidatorConfig_Config) ) (! (let ((i@@71 (IndexOfVec_177917 v@@47 e@@14)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_161499 v@@47 i@@72) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@47) i@@72) e@@14))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_161499 v@@47 i@@71) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@47) i@@71) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@71)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@47) j@@14) e@@14)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_177917 v@@47 e@@14))
)))
(assert (forall ((v@@48 T@Vec_177956) (e@@15 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@73 (IndexOfVec_177956 v@@48 e@@15)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_160092 v@@48 i@@74) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@48) i@@74) e@@15))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_160092 v@@48 i@@73) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@48) i@@73) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@73)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@48) j@@15) e@@15)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_177956 v@@48 e@@15))
)))
(assert (forall ((v@@49 T@Vec_177995) (e@@16 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@75 (IndexOfVec_177995 v@@49 e@@16)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_160293 v@@49 i@@76) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@49) i@@76) e@@16))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_160293 v@@49 i@@75) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@49) i@@75) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@75)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@49) j@@16) e@@16)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_177995 v@@49 e@@16))
)))
(assert (forall ((v@@50 T@Vec_178137) (e@@17 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@77 (IndexOfVec_178137 v@@50 e@@17)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_160494 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@50) i@@78) e@@17))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_160494 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@50) i@@77) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@77)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@50) j@@17) e@@17)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178137 v@@50 e@@17))
)))
(assert (forall ((v@@51 T@Vec_178194) (e@@18 T@Vec_29362) ) (! (let ((i@@79 (IndexOfVec_178194 v@@51 e@@18)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_209507 v@@51 i@@80) (= (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@51) i@@80) e@@18))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_209507 v@@51 i@@79) (= (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@51) i@@79) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@79)) (not (= (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@51) j@@18) e@@18)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178194 v@@51 e@@18))
)))
(assert (forall ((v@@52 T@Vec_178401) (e@@19 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@81 (IndexOfVec_178401 v@@52 e@@19)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_161097 v@@52 i@@82) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@52) i@@82) e@@19))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_161097 v@@52 i@@81) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@52) i@@81) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@81)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@52) j@@19) e@@19)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178401 v@@52 e@@19))
)))
(assert (forall ((v@@53 T@Vec_178440) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@83 (IndexOfVec_178440 v@@53 e@@20)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_160896 v@@53 i@@84) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@53) i@@84) e@@20))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_160896 v@@53 i@@83) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@53) i@@83) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@83)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@53) j@@20) e@@20)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178440 v@@53 e@@20))
)))
(assert (forall ((v@@54 T@Vec_178479) (e@@21 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@85 (IndexOfVec_178479 v@@54 e@@21)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_160695 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@54) i@@86) e@@21))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_160695 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@54) i@@85) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@54) j@@21) e@@21)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178479 v@@54 e@@21))
)))
(assert (forall ((v@@55 T@Vec_178621) (e@@22 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@87 (IndexOfVec_178621 v@@55 e@@22)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_161298 v@@55 i@@88) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@55) i@@88) e@@22))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_161298 v@@55 i@@87) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@55) i@@87) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@87)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@55) j@@22) e@@22)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178621 v@@55 e@@22))
)))
(assert (forall ((v@@56 T@Vec_179849) (e@@23 |T@#0|) ) (! (let ((i@@89 (IndexOfVec_179849 v@@56 e@@23)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_159891 v@@56 i@@90) (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@56) i@@90) e@@23))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_159891 v@@56 i@@89) (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@56) i@@89) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@89)) (not (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@56) j@@23) e@@23)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_179849 v@@56 e@@23))
)))
(assert (forall ((v@@57 T@Vec_204065) (e@@24 T@$1_XDX_XDX) ) (! (let ((i@@91 (IndexOfVec_204065 v@@57 e@@24)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_161700 v@@57 i@@92) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@57) i@@92) e@@24))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_161700 v@@57 i@@91) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@57) i@@91) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@91)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@57) j@@24) e@@24)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_204065 v@@57 e@@24))
)))
(assert (forall ((v@@58 T@Vec_206745) (e@@25 T@$1_XUS_XUS) ) (! (let ((i@@93 (IndexOfVec_206745 v@@58 e@@25)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_161901 v@@58 i@@94) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@58) i@@94) e@@25))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_161901 v@@58 i@@93) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@58) i@@93) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@93)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@58) j@@25) e@@25)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_206745 v@@58 e@@25))
)))
(assert (forall ((|l#0| Bool) (i@@95 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95) |l#0|)
 :qid |DiemVMConfigbpl.275:54|
 :skolemid |1660|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_177831|) (|l#1| |T@[$1_Event_EventHandle]Multiset_177831|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_177831_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_177831| (|Select__T@[$1_Event_EventHandle]Multiset_177831_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_177831| (|Select__T@[$1_Event_EventHandle]Multiset_177831_| |l#1| handle@@0))))
(Multiset_177831 (|lambda#42| (|v#Multiset_177831| (|Select__T@[$1_Event_EventHandle]Multiset_177831_| |l#0@@0| handle@@0)) (|v#Multiset_177831| (|Select__T@[$1_Event_EventHandle]Multiset_177831_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemVMConfigbpl.3321:13|
 :skolemid |1661|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_177831_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@96 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96) (ite  (and (>= i@@96 |l#0@@1|) (< i@@96 |l#1@@0|)) (ite (< i@@96 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@96) (|Select__T@[Int]#0_| |l#4| (- i@@96 |l#5|))) |l#6|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1662|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@97 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97) (ite  (and (<= |l#0@@2| i@@97) (< i@@97 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@97) |l#4@@0|)) |l#5@@0|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1663|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@26 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26) (ite  (and (>= j@@26 |l#0@@3|) (< j@@26 |l#1@@2|)) (ite (< j@@26 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@26) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@26 |l#5@@1|))) |l#6@@0|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1664|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98) (ite  (and (>= i@@98 |l#0@@4|) (< i@@98 |l#1@@3|)) (ite (< i@@98 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@98) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@98 |l#5@@2|))) |l#6@@1|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1665|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99) (ite  (and (<= |l#0@@5| i@@99) (< i@@99 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@99) |l#4@@3|)) |l#5@@3|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1666|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27) (ite  (and (>= j@@27 |l#0@@6|) (< j@@27 |l#1@@5|)) (ite (< j@@27 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@27) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@27 |l#5@@4|))) |l#6@@2|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1667|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@100 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100) (ite  (and (>= i@@100 |l#0@@7|) (< i@@100 |l#1@@6|)) (ite (< i@@100 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@100) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@100 |l#5@@5|))) |l#6@@3|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1668|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@101 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101) (ite  (and (<= |l#0@@8| i@@101) (< i@@101 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@101) |l#4@@6|)) |l#5@@6|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1669|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28) (ite  (and (>= j@@28 |l#0@@9|) (< j@@28 |l#1@@8|)) (ite (< j@@28 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@28) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@28 |l#5@@7|))) |l#6@@4|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1670|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102) (ite  (and (>= i@@102 |l#0@@10|) (< i@@102 |l#1@@9|)) (ite (< i@@102 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@102) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@102 |l#5@@8|))) |l#6@@5|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1671|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103) (ite  (and (<= |l#0@@11| i@@103) (< i@@103 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@103) |l#4@@9|)) |l#5@@9|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1672|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29) (ite  (and (>= j@@29 |l#0@@12|) (< j@@29 |l#1@@11|)) (ite (< j@@29 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@29) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@29 |l#5@@10|))) |l#6@@6|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1673|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104) (ite  (and (>= i@@104 |l#0@@13|) (< i@@104 |l#1@@12|)) (ite (< i@@104 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@104) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@104 |l#5@@11|))) |l#6@@7|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1674|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105) (ite  (and (<= |l#0@@14| i@@105) (< i@@105 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@105) |l#4@@12|)) |l#5@@12|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1675|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30) (ite  (and (>= j@@30 |l#0@@15|) (< j@@30 |l#1@@14|)) (ite (< j@@30 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@30) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@30 |l#5@@13|))) |l#6@@8|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1676|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106) (ite  (and (>= i@@106 |l#0@@16|) (< i@@106 |l#1@@15|)) (ite (< i@@106 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@106) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@106 |l#5@@14|))) |l#6@@9|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1677|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107) (ite  (and (<= |l#0@@17| i@@107) (< i@@107 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@107) |l#4@@15|)) |l#5@@15|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1678|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31) (ite  (and (>= j@@31 |l#0@@18|) (< j@@31 |l#1@@17|)) (ite (< j@@31 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@31 |l#5@@16|))) |l#6@@10|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1679|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108) (ite  (and (>= i@@108 |l#0@@19|) (< i@@108 |l#1@@18|)) (ite (< i@@108 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@108 |l#5@@17|))) |l#6@@11|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1680|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109) (ite  (and (<= |l#0@@20| i@@109) (< i@@109 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@109) |l#4@@18|)) |l#5@@18|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1681|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32) (ite  (and (>= j@@32 |l#0@@21|) (< j@@32 |l#1@@20|)) (ite (< j@@32 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@32 |l#5@@19|))) |l#6@@12|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1682|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110) (ite  (and (>= i@@110 |l#0@@22|) (< i@@110 |l#1@@21|)) (ite (< i@@110 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@110) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@110 |l#5@@20|))) |l#6@@13|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1683|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111) (ite  (and (<= |l#0@@23| i@@111) (< i@@111 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@111) |l#4@@21|)) |l#5@@21|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1684|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33) (ite  (and (>= j@@33 |l#0@@24|) (< j@@33 |l#1@@23|)) (ite (< j@@33 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@33) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@33 |l#5@@22|))) |l#6@@14|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1685|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112) (ite  (and (>= i@@112 |l#0@@25|) (< i@@112 |l#1@@24|)) (ite (< i@@112 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@112) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@112 |l#5@@23|))) |l#6@@15|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1686|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113) (ite  (and (<= |l#0@@26| i@@113) (< i@@113 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@113) |l#4@@24|)) |l#5@@24|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1687|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34) (ite  (and (>= j@@34 |l#0@@27|) (< j@@34 |l#1@@26|)) (ite (< j@@34 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@34) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@34 |l#5@@25|))) |l#6@@16|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1688|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114) (ite  (and (>= i@@114 |l#0@@28|) (< i@@114 |l#1@@27|)) (ite (< i@@114 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@114) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@114 |l#5@@26|))) |l#6@@17|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1689|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115) (ite  (and (<= |l#0@@29| i@@115) (< i@@115 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@115) |l#4@@27|)) |l#5@@27|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1690|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35) (ite  (and (>= j@@35 |l#0@@30|) (< j@@35 |l#1@@29|)) (ite (< j@@35 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@35) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@35 |l#5@@28|))) |l#6@@18|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1691|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116) (ite  (and (>= i@@116 |l#0@@31|) (< i@@116 |l#1@@30|)) (ite (< i@@116 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@116) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@116 |l#5@@29|))) |l#6@@19|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1692|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117) (ite  (and (<= |l#0@@32| i@@117) (< i@@117 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@117) |l#4@@30|)) |l#5@@30|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1693|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36) (ite  (and (>= j@@36 |l#0@@33|) (< j@@36 |l#1@@32|)) (ite (< j@@36 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@36) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@36 |l#5@@31|))) |l#6@@20|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1694|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_29362|) (|l#4@@32| |T@[Int]Vec_29362|) (|l#5@@32| Int) (|l#6@@21| T@Vec_29362) (i@@118 Int) ) (! (= (|Select__T@[Int]Vec_29362_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118) (ite  (and (>= i@@118 |l#0@@34|) (< i@@118 |l#1@@33|)) (ite (< i@@118 |l#2@@32|) (|Select__T@[Int]Vec_29362_| |l#3@@32| i@@118) (|Select__T@[Int]Vec_29362_| |l#4@@32| (- i@@118 |l#5@@32|))) |l#6@@21|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1695|
 :pattern ( (|Select__T@[Int]Vec_29362_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_29362|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_29362) (i@@119 Int) ) (! (= (|Select__T@[Int]Vec_29362_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119) (ite  (and (<= |l#0@@35| i@@119) (< i@@119 |l#1@@34|)) (|Select__T@[Int]Vec_29362_| |l#2@@33| (- (- |l#3@@33| i@@119) |l#4@@33|)) |l#5@@33|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1696|
 :pattern ( (|Select__T@[Int]Vec_29362_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_29362|) (|l#4@@34| |T@[Int]Vec_29362|) (|l#5@@34| Int) (|l#6@@22| T@Vec_29362) (j@@37 Int) ) (! (= (|Select__T@[Int]Vec_29362_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37) (ite  (and (>= j@@37 |l#0@@36|) (< j@@37 |l#1@@35|)) (ite (< j@@37 |l#2@@34|) (|Select__T@[Int]Vec_29362_| |l#3@@34| j@@37) (|Select__T@[Int]Vec_29362_| |l#4@@34| (+ j@@37 |l#5@@34|))) |l#6@@22|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1697|
 :pattern ( (|Select__T@[Int]Vec_29362_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@120 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120) (ite  (and (>= i@@120 |l#0@@37|) (< i@@120 |l#1@@36|)) (ite (< i@@120 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@120) (|Select__T@[Int]Int_| |l#4@@35| (- i@@120 |l#5@@35|))) |l#6@@23|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1698|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@121 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121) (ite  (and (<= |l#0@@38| i@@121) (< i@@121 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@121) |l#4@@36|)) |l#5@@36|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1699|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@38 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38) (ite  (and (>= j@@38 |l#0@@39|) (< j@@38 |l#1@@38|)) (ite (< j@@38 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@38) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@38 |l#5@@37|))) |l#6@@24|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1700|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@59) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@59)))
 :qid |DiemVMConfigbpl.154:29|
 :skolemid |1701|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1| () T@$Memory_224200)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_224200)
(declare-fun $t15@0 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_224329)
(declare-fun $t4 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun _$t1 () T@$1_DiemVersion_DiemVersion)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_224609)
(declare-fun $t7@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0| () T@$Memory_224200)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| ?x0 ?y1))) :weight 0)))
(declare-fun $t13@0 () |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies| () |T@[Int]Bool|)
(declare-fun $t12 () Int)
(declare-fun $t9@0 () Bool)
(declare-fun $t6 () Bool)
(declare-fun $t8 () Int)
(declare-fun $t7 () Int)
(declare-fun $t5 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_232617)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_234181)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_251742)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_251857)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_251917)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_DiemConfig_publish_new_config_and_get_capability$verify_instantiated_3)
(assert (not
 (=> (= (ControlFlow 0 0) 781327) (let ((anon15_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 473530) (- 0 782414)) (forall ((config_address Int) ) (!  (=> (|$IsValid'address'| config_address) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) config_address) (= config_address 173345816)))
 :qid |DiemVMConfigbpl.13938:15|
 :skolemid |436|
))) (=> (forall ((config_address@@0 Int) ) (!  (=> (|$IsValid'address'| config_address@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) config_address@@0) (= config_address@@0 173345816)))
 :qid |DiemVMConfigbpl.13938:15|
 :skolemid |436|
)) (and (=> (= (ControlFlow 0 473530) (- 0 782439)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) 173345816)) (and (=> (= (ControlFlow 0 473530) (- 0 782450)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) addr) (= addr 173345816)))
 :qid |DiemVMConfigbpl.13950:15|
 :skolemid |437|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) addr@@0) (= addr@@0 173345816)))
 :qid |DiemVMConfigbpl.13950:15|
 :skolemid |437|
)) (=> (and (= $t15@0 (|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| false)) (= $t15@0 $t15@0)) (and (=> (= (ControlFlow 0 473530) (- 0 782501)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) $t4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) $t4))) (and (=> (= (ControlFlow 0 473530) (- 0 782513)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) $t4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) $t4)) 0))) (and (=> (= (ControlFlow 0 473530) (- 0 782531)) (not (not (= (|$addr#$signer| _$t0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0) 173345816))) (and (=> (= (ControlFlow 0 473530) (- 0 782545)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 473530) (- 0 782555)) (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) 173345816) (and (=> (= (ControlFlow 0 473530) (- 0 782561)) (= (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) addr@@1))) _$t1)) (=> (= (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1|) addr@@2))) _$t1) (=> (= (ControlFlow 0 473530) (- 0 782570)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_224609| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_224609| $1_DiemConfig_Configuration_$memory) 173345816)))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 473312) (- 0 782295)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) $t4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) $t4)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) $t4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) $t4)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)) (=> (= (ControlFlow 0 473312) (- 0 782335)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) $t4)) (= 5 $t7@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) $t4)) 0)) (= 3 $t7@0))) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t7@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816) (= 6 $t7@0))))))))
(let ((anon15_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t7@0 $abort_code@1) (= (ControlFlow 0 473544) 473312))) L3_correct)))
(let ((anon14_Then$1_correct  (=> (= |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 473596) 473544) anon15_Then_correct) (=> (= (ControlFlow 0 473596) 473530) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0)) (= (ControlFlow 0 473594) 473596)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0))) (=> (and (and (= |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0| ($Memory_224200 (|Store__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) (|$addr#$signer| _$t0) $t13@0))) (= |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@1| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory@0|)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 473356) 473544) anon15_Then_correct) (=> (= (ControlFlow 0 473356) 473530) anon15_Else_correct))))))
(let ((anon13_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t13@0 (|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| _$t1))) (and (=> (= (ControlFlow 0 473334) (- 0 782168)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies| (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies| (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 473334) 473594) anon14_Then_correct) (=> (= (ControlFlow 0 473334) 473356) anon14_Else_correct)))))))
(let ((anon13_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t12 $t12)) (and (= $t7@0 $t12) (= (ControlFlow 0 473184) 473312))) L3_correct)))
(let ((anon12_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t12) (= $t12 6)) (and (= $t12 $t12) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 473168) 473334) anon13_Then_correct) (=> (= (ControlFlow 0 473168) 473184) anon13_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t9@0)) (= (ControlFlow 0 473128) 473168)) anon12_Else$1_correct)))
(let ((anon12_Else_correct  (=> (not $t6) (=> (and (and (|$IsValid'address'| $t8) (= $t8 (|$addr#$signer| _$t0))) (and (= $t9@0 (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) $t8)) (= (ControlFlow 0 473134) 473128))) inline$$Not$0$anon0_correct))))
(let ((anon12_Then_correct  (=> $t6 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t7)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) $t5)) (= 5 $t7))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) $t5)) 0)) (= 3 $t7))) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t7))) (= $t7 $t7)) (and (= $t7@0 $t7) (= (ControlFlow 0 473688) 473312))) L3_correct))))
(let ((anon0$1_correct  (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@3)) 0)) (= addr@@3 173345816)))
 :qid |DiemVMConfigbpl.13712:20|
 :skolemid |417|
)) (=> (and (and (and (and (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@4)) 1)) (= addr@@4 186537453)))
 :qid |DiemVMConfigbpl.13716:20|
 :skolemid |418|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@5)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@5)) 2))))))
 :qid |DiemVMConfigbpl.13720:20|
 :skolemid |419|
))) (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@6)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@6)) 2))))))
 :qid |DiemVMConfigbpl.13724:20|
 :skolemid |420|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@7)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@7)) 2))))))
 :qid |DiemVMConfigbpl.13728:20|
 :skolemid |421|
)))) (and (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@8)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@8)) 2))))))
 :qid |DiemVMConfigbpl.13732:20|
 :skolemid |422|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@9)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@9)) 2)))))
 :qid |DiemVMConfigbpl.13736:20|
 :skolemid |423|
))) (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@10)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@10)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@10)) 2)))))
 :qid |DiemVMConfigbpl.13740:20|
 :skolemid |424|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@11)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@11)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@11)) 2)))))
 :qid |DiemVMConfigbpl.13744:20|
 :skolemid |425|
))))) (and (and (and (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_232617| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@12)) 4))))
 :qid |DiemVMConfigbpl.13748:20|
 :skolemid |426|
)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_234181| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |DiemVMConfigbpl.13752:20|
 :skolemid |427|
))) (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_234181| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |DiemVMConfigbpl.13756:20|
 :skolemid |428|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_234181| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15) (not (= (|l#Vec_177917| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_234181| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@15)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@15)) 3))))
 :qid |DiemVMConfigbpl.13760:20|
 :skolemid |429|
)))) (and (and (forall ((config_address@@1 Int) ) (!  (=> (|$IsValid'address'| config_address@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@1) (= config_address@@1 173345816)))
 :qid |DiemVMConfigbpl.13764:20|
 :skolemid |430|
)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_251742| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |DiemVMConfigbpl.13768:20|
 :skolemid |431|
))) (and (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_251857| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_251917| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@16)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@16)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@16)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) addr@@16)) 2)))))
 :qid |DiemVMConfigbpl.13772:20|
 :skolemid |432|
)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) addr@@17) (= addr@@17 173345816)))
 :qid |DiemVMConfigbpl.13776:20|
 :skolemid |433|
)))))) (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (|$IsValid'$1_DiemVersion_DiemVersion'| _$t1)) (and (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |DiemVMConfigbpl.13785:20|
 :skolemid |434|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) $a_0@@0)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| $rsc@@0))
 :qid |DiemVMConfigbpl.13789:20|
 :skolemid |435|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|contents#$Memory_224200| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) $a_0@@0))
))) (and (= $t4 (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$modifies| 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t5 (|$addr#$signer| _$t0)) (= $t6  (or (or (or (not (= (|$addr#$signer| _$t0) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_224329| $1_Roles_RoleId_$memory) $t5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_224329| $1_Roles_RoleId_$memory) $t5)) 0))) (not (= (|$addr#$signer| _$t0) 173345816))))))))) (and (=> (= (ControlFlow 0 473072) 473688) anon12_Then_correct) (=> (= (ControlFlow 0 473072) 473134) anon12_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_177831_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_177831| stream@@0) 0) (forall ((v@@60 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_177831| stream@@0) v@@60) 0)
 :qid |DiemVMConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemVMConfigbpl.3311:13|
 :skolemid |119|
))) (= (ControlFlow 0 472475) 473072)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 781327) 472475) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))
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
(declare-datatypes ((T@$Memory_216284 0)) ((($Memory_216284 (|domain#$Memory_216284| |T@[Int]Bool|) (|contents#$Memory_216284| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_179849 0)) (((Vec_179849 (|v#Vec_179849| |T@[Int]#0|) (|l#Vec_179849| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_226038 0)) ((($Memory_226038 (|domain#$Memory_226038| |T@[Int]Bool|) (|contents#$Memory_226038| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_225967 0)) ((($Memory_225967 (|domain#$Memory_225967| |T@[Int]Bool|) (|contents#$Memory_225967| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_225724 0)) ((($Memory_225724 (|domain#$Memory_225724| |T@[Int]Bool|) (|contents#$Memory_225724| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_225653 0)) ((($Memory_225653 (|domain#$Memory_225653| |T@[Int]Bool|) (|contents#$Memory_225653| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_225582 0)) ((($Memory_225582 (|domain#$Memory_225582| |T@[Int]Bool|) (|contents#$Memory_225582| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_312564 0)) ((($Memory_312564 (|domain#$Memory_312564| |T@[Int]Bool|) (|contents#$Memory_312564| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_225414 0)) ((($Memory_225414 (|domain#$Memory_225414| |T@[Int]Bool|) (|contents#$Memory_225414| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_305663 0)) ((($Memory_305663 (|domain#$Memory_305663| |T@[Int]Bool|) (|contents#$Memory_305663| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_305599 0)) ((($Memory_305599 (|domain#$Memory_305599| |T@[Int]Bool|) (|contents#$Memory_305599| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_304207 0)) ((($Memory_304207 (|domain#$Memory_304207| |T@[Int]Bool|) (|contents#$Memory_304207| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-sort |T@[Int]$1_XDX_XDX| 0)
(declare-datatypes ((T@Vec_204065 0)) (((Vec_204065 (|v#Vec_204065| |T@[Int]$1_XDX_XDX|) (|l#Vec_204065| Int) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-sort |T@[Int]$1_XUS_XUS| 0)
(declare-datatypes ((T@Vec_206745 0)) (((Vec_206745 (|v#Vec_206745| |T@[Int]$1_XUS_XUS|) (|l#Vec_206745| Int) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_300647 0)) ((($Memory_300647 (|domain#$Memory_300647| |T@[Int]Bool|) (|contents#$Memory_300647| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_300360 0)) ((($Memory_300360 (|domain#$Memory_300360| |T@[Int]Bool|) (|contents#$Memory_300360| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_225246 0)) ((($Memory_225246 (|domain#$Memory_225246| |T@[Int]Bool|) (|contents#$Memory_225246| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_225007 0)) ((($Memory_225007 (|domain#$Memory_225007| |T@[Int]Bool|) (|contents#$Memory_225007| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_225896 0)) ((($Memory_225896 (|domain#$Memory_225896| |T@[Int]Bool|) (|contents#$Memory_225896| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_286341 0)) ((($Memory_286341 (|domain#$Memory_286341| |T@[Int]Bool|) (|contents#$Memory_286341| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_286277 0)) ((($Memory_286277 (|domain#$Memory_286277| |T@[Int]Bool|) (|contents#$Memory_286277| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_286213 0)) ((($Memory_286213 (|domain#$Memory_286213| |T@[Int]Bool|) (|contents#$Memory_286213| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_286708 0)) ((($Memory_286708 (|domain#$Memory_286708| |T@[Int]Bool|) (|contents#$Memory_286708| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_286621 0)) ((($Memory_286621 (|domain#$Memory_286621| |T@[Int]Bool|) (|contents#$Memory_286621| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_314862 0)) ((($Memory_314862 (|domain#$Memory_314862| |T@[Int]Bool|) (|contents#$Memory_314862| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_292535 0)) ((($Memory_292535 (|domain#$Memory_292535| |T@[Int]Bool|) (|contents#$Memory_292535| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_251917 0)) ((($Memory_251917 (|domain#$Memory_251917| |T@[Int]Bool|) (|contents#$Memory_251917| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_292454 0)) ((($Memory_292454 (|domain#$Memory_292454| |T@[Int]Bool|) (|contents#$Memory_292454| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_225078 0)) ((($Memory_225078 (|domain#$Memory_225078| |T@[Int]Bool|) (|contents#$Memory_225078| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_251857 0)) ((($Memory_251857 (|domain#$Memory_251857| |T@[Int]Bool|) (|contents#$Memory_251857| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_292373 0)) ((($Memory_292373 (|domain#$Memory_292373| |T@[Int]Bool|) (|contents#$Memory_292373| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_225317 0)) ((($Memory_225317 (|domain#$Memory_225317| |T@[Int]Bool|) (|contents#$Memory_225317| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_237799 0)) ((($Memory_237799 (|domain#$Memory_237799| |T@[Int]Bool|) (|contents#$Memory_237799| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_237712 0)) ((($Memory_237712 (|domain#$Memory_237712| |T@[Int]Bool|) (|contents#$Memory_237712| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_237625 0)) ((($Memory_237625 (|domain#$Memory_237625| |T@[Int]Bool|) (|contents#$Memory_237625| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_237538 0)) ((($Memory_237538 (|domain#$Memory_237538| |T@[Int]Bool|) (|contents#$Memory_237538| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_237451 0)) ((($Memory_237451 (|domain#$Memory_237451| |T@[Int]Bool|) (|contents#$Memory_237451| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_237364 0)) ((($Memory_237364 (|domain#$Memory_237364| |T@[Int]Bool|) (|contents#$Memory_237364| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_237277 0)) ((($Memory_237277 (|domain#$Memory_237277| |T@[Int]Bool|) (|contents#$Memory_237277| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_224768 0)) ((($Memory_224768 (|domain#$Memory_224768| |T@[Int]Bool|) (|contents#$Memory_224768| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_236038 0)) ((($Memory_236038 (|domain#$Memory_236038| |T@[Int]Bool|) (|contents#$Memory_236038| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_224609 0)) ((($Memory_224609 (|domain#$Memory_224609| |T@[Int]Bool|) (|contents#$Memory_224609| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_235957 0)) ((($Memory_235957 (|domain#$Memory_235957| |T@[Int]Bool|) (|contents#$Memory_235957| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_224200 0)) ((($Memory_224200 (|domain#$Memory_224200| |T@[Int]Bool|) (|contents#$Memory_224200| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_224516 0)) ((($Memory_224516 (|domain#$Memory_224516| |T@[Int]Bool|) (|contents#$Memory_224516| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_177995 0)) (((Vec_177995 (|v#Vec_177995| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_177995| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_177995) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_177956 0)) (((Vec_177956 (|v#Vec_177956| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_177956| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| T@Vec_177956) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_320759 0)) ((($Memory_320759 (|domain#$Memory_320759| |T@[Int]Bool|) (|contents#$Memory_320759| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_177956) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_29362 0)) (((Vec_29362 (|v#Vec_29362| |T@[Int]Int|) (|l#Vec_29362| Int) ) ) ))
(declare-sort |T@[Int]Vec_29362| 0)
(declare-datatypes ((T@Vec_178194 0)) (((Vec_178194 (|v#Vec_178194| |T@[Int]Vec_29362|) (|l#Vec_178194| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_178194) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_225498 0)) ((($Memory_225498 (|domain#$Memory_225498| |T@[Int]Bool|) (|contents#$Memory_225498| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_178194) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_224839 0)) ((($Memory_224839 (|domain#$Memory_224839| |T@[Int]Bool|) (|contents#$Memory_224839| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_29362) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_29362) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_226122 0)) ((($Memory_226122 (|domain#$Memory_226122| |T@[Int]Bool|) (|contents#$Memory_226122| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_29362) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_235824 0)) ((($Memory_235824 (|domain#$Memory_235824| |T@[Int]Bool|) (|contents#$Memory_235824| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_29362) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_313615 0)) ((($Memory_313615 (|domain#$Memory_313615| |T@[Int]Bool|) (|contents#$Memory_313615| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_29362) (|$base_url#$1_DualAttestation_Credential| T@Vec_29362) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_29362) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_251742 0)) ((($Memory_251742 (|domain#$Memory_251742| |T@[Int]Bool|) (|contents#$Memory_251742| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_178621 0)) (((Vec_178621 (|v#Vec_178621| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_178621| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_178621) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_304143 0)) ((($Memory_304143 (|domain#$Memory_304143| |T@[Int]Bool|) (|contents#$Memory_304143| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_178479 0)) (((Vec_178479 (|v#Vec_178479| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_178479| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_178479) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_293019 0)) ((($Memory_293019 (|domain#$Memory_293019| |T@[Int]Bool|) (|contents#$Memory_293019| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_178440 0)) (((Vec_178440 (|v#Vec_178440| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_178440| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_178440) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_292902 0)) ((($Memory_292902 (|domain#$Memory_292902| |T@[Int]Bool|) (|contents#$Memory_292902| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_178401 0)) (((Vec_178401 (|v#Vec_178401| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_178401| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_178401) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_292785 0)) ((($Memory_292785 (|domain#$Memory_292785| |T@[Int]Bool|) (|contents#$Memory_292785| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_29362) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_285912 0)) ((($Memory_285912 (|domain#$Memory_285912| |T@[Int]Bool|) (|contents#$Memory_285912| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_29362) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_225162 0)) ((($Memory_225162 (|domain#$Memory_225162| |T@[Int]Bool|) (|contents#$Memory_225162| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_29362) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_224923 0)) ((($Memory_224923 (|domain#$Memory_224923| |T@[Int]Bool|) (|contents#$Memory_224923| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_29362) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_29362) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_177917 0)) (((Vec_177917 (|v#Vec_177917| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_177917| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_177917) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_178137 0)) (((Vec_178137 (|v#Vec_178137| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_178137| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_178137) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_224695 0)) ((($Memory_224695 (|domain#$Memory_224695| |T@[Int]Bool|) (|contents#$Memory_224695| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_29362) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_234181 0)) ((($Memory_234181 (|domain#$Memory_234181| |T@[Int]Bool|) (|contents#$Memory_234181| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_29362) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_232617 0)) ((($Memory_232617 (|domain#$Memory_232617| |T@[Int]Bool|) (|contents#$Memory_232617| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_224329 0)) ((($Memory_224329 (|domain#$Memory_224329| |T@[Int]Bool|) (|contents#$Memory_224329| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_223647 0)) ((($Memory_223647 (|domain#$Memory_223647| |T@[Int]Bool|) (|contents#$Memory_223647| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_29362) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_29362) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_29362) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_29362) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_29362) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_29362) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_29362) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_29362) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_29362) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_29362) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_29362) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_29362) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_29362) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_177831 0)) (((Multiset_177831 (|v#Multiset_177831| |T@[$EventRep]Int|) (|l#Multiset_177831| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_177831| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_177831|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_429544 0)) ((($Mutation_429544 (|l#$Mutation_429544| T@$Location) (|p#$Mutation_429544| T@Vec_29362) (|v#$Mutation_429544| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((T@$Mutation_429497 0)) ((($Mutation_429497 (|l#$Mutation_429497| T@$Location) (|p#$Mutation_429497| T@Vec_29362) (|v#$Mutation_429497| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$Mutation_418632 0)) ((($Mutation_418632 (|l#$Mutation_418632| T@$Location) (|p#$Mutation_418632| T@Vec_29362) (|v#$Mutation_418632| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_418587 0)) ((($Mutation_418587 (|l#$Mutation_418587| T@$Location) (|p#$Mutation_418587| T@Vec_29362) (|v#$Mutation_418587| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_305982 0)) ((($Mutation_305982 (|l#$Mutation_305982| T@$Location) (|p#$Mutation_305982| T@Vec_29362) (|v#$Mutation_305982| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_70889 0)) ((($Mutation_70889 (|l#$Mutation_70889| T@$Location) (|p#$Mutation_70889| T@Vec_29362) (|v#$Mutation_70889| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_298513 0)) ((($Mutation_298513 (|l#$Mutation_298513| T@$Location) (|p#$Mutation_298513| T@Vec_29362) (|v#$Mutation_298513| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_284601 0)) ((($Mutation_284601 (|l#$Mutation_284601| T@$Location) (|p#$Mutation_284601| T@Vec_29362) (|v#$Mutation_284601| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_248560 0)) ((($Mutation_248560 (|l#$Mutation_248560| T@$Location) (|p#$Mutation_248560| T@Vec_29362) (|v#$Mutation_248560| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-datatypes ((T@$Mutation_248514 0)) ((($Mutation_248514 (|l#$Mutation_248514| T@$Location) (|p#$Mutation_248514| T@Vec_29362) (|v#$Mutation_248514| |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$Mutation_245910 0)) ((($Mutation_245910 (|l#$Mutation_245910| T@$Location) (|p#$Mutation_245910| T@Vec_29362) (|v#$Mutation_245910| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_245864 0)) ((($Mutation_245864 (|l#$Mutation_245864| T@$Location) (|p#$Mutation_245864| T@Vec_29362) (|v#$Mutation_245864| |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_243260 0)) ((($Mutation_243260 (|l#$Mutation_243260| T@$Location) (|p#$Mutation_243260| T@Vec_29362) (|v#$Mutation_243260| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-datatypes ((T@$Mutation_243214 0)) ((($Mutation_243214 (|l#$Mutation_243214| T@$Location) (|p#$Mutation_243214| T@Vec_29362) (|v#$Mutation_243214| |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_240610 0)) ((($Mutation_240610 (|l#$Mutation_240610| T@$Location) (|p#$Mutation_240610| T@Vec_29362) (|v#$Mutation_240610| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_240564 0)) ((($Mutation_240564 (|l#$Mutation_240564| T@$Location) (|p#$Mutation_240564| T@Vec_29362) (|v#$Mutation_240564| |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$Mutation_237878 0)) ((($Mutation_237878 (|l#$Mutation_237878| T@$Location) (|p#$Mutation_237878| T@Vec_29362) (|v#$Mutation_237878| |T@$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_224142 0)) ((($Mutation_224142 (|l#$Mutation_224142| T@$Location) (|p#$Mutation_224142| T@Vec_29362) (|v#$Mutation_224142| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_216915 0)) ((($Mutation_216915 (|l#$Mutation_216915| T@$Location) (|p#$Mutation_216915| T@Vec_29362) (|v#$Mutation_216915| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_17352 0)) ((($Mutation_17352 (|l#$Mutation_17352| T@$Location) (|p#$Mutation_17352| T@Vec_29362) (|v#$Mutation_17352| Int) ) ) ))
(declare-datatypes ((T@$Mutation_211172 0)) ((($Mutation_211172 (|l#$Mutation_211172| T@$Location) (|p#$Mutation_211172| T@Vec_29362) (|v#$Mutation_211172| T@Vec_29362) ) ) ))
(declare-datatypes ((T@$Mutation_210084 0)) ((($Mutation_210084 (|l#$Mutation_210084| T@$Location) (|p#$Mutation_210084| T@Vec_29362) (|v#$Mutation_210084| T@Vec_178194) ) ) ))
(declare-datatypes ((T@$Mutation_208375 0)) ((($Mutation_208375 (|l#$Mutation_208375| T@$Location) (|p#$Mutation_208375| T@Vec_29362) (|v#$Mutation_208375| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_207388 0)) ((($Mutation_207388 (|l#$Mutation_207388| T@$Location) (|p#$Mutation_207388| T@Vec_29362) (|v#$Mutation_207388| T@Vec_206745) ) ) ))
(declare-datatypes ((T@$Mutation_205695 0)) ((($Mutation_205695 (|l#$Mutation_205695| T@$Location) (|p#$Mutation_205695| T@Vec_29362) (|v#$Mutation_205695| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_204708 0)) ((($Mutation_204708 (|l#$Mutation_204708| T@$Location) (|p#$Mutation_204708| T@Vec_29362) (|v#$Mutation_204708| T@Vec_204065) ) ) ))
(declare-datatypes ((T@$Mutation_203015 0)) ((($Mutation_203015 (|l#$Mutation_203015| T@$Location) (|p#$Mutation_203015| T@Vec_29362) (|v#$Mutation_203015| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_202028 0)) ((($Mutation_202028 (|l#$Mutation_202028| T@$Location) (|p#$Mutation_202028| T@Vec_29362) (|v#$Mutation_202028| T@Vec_177917) ) ) ))
(declare-datatypes ((T@$Mutation_200373 0)) ((($Mutation_200373 (|l#$Mutation_200373| T@$Location) (|p#$Mutation_200373| T@Vec_29362) (|v#$Mutation_200373| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_199386 0)) ((($Mutation_199386 (|l#$Mutation_199386| T@$Location) (|p#$Mutation_199386| T@Vec_29362) (|v#$Mutation_199386| T@Vec_178621) ) ) ))
(declare-datatypes ((T@$Mutation_197708 0)) ((($Mutation_197708 (|l#$Mutation_197708| T@$Location) (|p#$Mutation_197708| T@Vec_29362) (|v#$Mutation_197708| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_196721 0)) ((($Mutation_196721 (|l#$Mutation_196721| T@$Location) (|p#$Mutation_196721| T@Vec_29362) (|v#$Mutation_196721| T@Vec_178401) ) ) ))
(declare-datatypes ((T@$Mutation_195012 0)) ((($Mutation_195012 (|l#$Mutation_195012| T@$Location) (|p#$Mutation_195012| T@Vec_29362) (|v#$Mutation_195012| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_194025 0)) ((($Mutation_194025 (|l#$Mutation_194025| T@$Location) (|p#$Mutation_194025| T@Vec_29362) (|v#$Mutation_194025| T@Vec_178440) ) ) ))
(declare-datatypes ((T@$Mutation_192316 0)) ((($Mutation_192316 (|l#$Mutation_192316| T@$Location) (|p#$Mutation_192316| T@Vec_29362) (|v#$Mutation_192316| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_191329 0)) ((($Mutation_191329 (|l#$Mutation_191329| T@$Location) (|p#$Mutation_191329| T@Vec_29362) (|v#$Mutation_191329| T@Vec_178479) ) ) ))
(declare-datatypes ((T@$Mutation_189620 0)) ((($Mutation_189620 (|l#$Mutation_189620| T@$Location) (|p#$Mutation_189620| T@Vec_29362) (|v#$Mutation_189620| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_188633 0)) ((($Mutation_188633 (|l#$Mutation_188633| T@$Location) (|p#$Mutation_188633| T@Vec_29362) (|v#$Mutation_188633| T@Vec_178137) ) ) ))
(declare-datatypes ((T@$Mutation_186833 0)) ((($Mutation_186833 (|l#$Mutation_186833| T@$Location) (|p#$Mutation_186833| T@Vec_29362) (|v#$Mutation_186833| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_185846 0)) ((($Mutation_185846 (|l#$Mutation_185846| T@$Location) (|p#$Mutation_185846| T@Vec_29362) (|v#$Mutation_185846| T@Vec_177995) ) ) ))
(declare-datatypes ((T@$Mutation_184181 0)) ((($Mutation_184181 (|l#$Mutation_184181| T@$Location) (|p#$Mutation_184181| T@Vec_29362) (|v#$Mutation_184181| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_183194 0)) ((($Mutation_183194 (|l#$Mutation_183194| T@$Location) (|p#$Mutation_183194| T@Vec_29362) (|v#$Mutation_183194| T@Vec_177956) ) ) ))
(declare-datatypes ((T@$Mutation_181481 0)) ((($Mutation_181481 (|l#$Mutation_181481| T@$Location) (|p#$Mutation_181481| T@Vec_29362) (|v#$Mutation_181481| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_180494 0)) ((($Mutation_180494 (|l#$Mutation_180494| T@$Location) (|p#$Mutation_180494| T@Vec_29362) (|v#$Mutation_180494| T@Vec_179849) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_179849 T@Vec_179849) Bool)
(declare-fun InRangeVec_159891 (T@Vec_179849 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_179849) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_179849 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_177956 T@Vec_177956) Bool)
(declare-fun InRangeVec_160092 (T@Vec_177956 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_177956) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_177956 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_177995 T@Vec_177995) Bool)
(declare-fun InRangeVec_160293 (T@Vec_177995 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_177995) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_177995 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_178137 T@Vec_178137) Bool)
(declare-fun InRangeVec_160494 (T@Vec_178137 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_29362 T@Vec_29362) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_178137) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_178137 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_178479 T@Vec_178479) Bool)
(declare-fun InRangeVec_160695 (T@Vec_178479 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_178479) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_178479 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_178440 T@Vec_178440) Bool)
(declare-fun InRangeVec_160896 (T@Vec_178440 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_178440) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_178440 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_178401 T@Vec_178401) Bool)
(declare-fun InRangeVec_161097 (T@Vec_178401 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_178401) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_178401 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_178621 T@Vec_178621) Bool)
(declare-fun InRangeVec_161298 (T@Vec_178621 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_178621) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_178621 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_177917 T@Vec_177917) Bool)
(declare-fun InRangeVec_161499 (T@Vec_177917 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_177917) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_177917 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'$1_XDX_XDX''| (T@Vec_204065 T@Vec_204065) Bool)
(declare-fun InRangeVec_161700 (T@Vec_204065 Int) Bool)
(declare-fun |Select__T@[Int]$1_XDX_XDX_| (|T@[Int]$1_XDX_XDX| Int) T@$1_XDX_XDX)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| (T@Vec_204065) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| (T@Vec_204065 T@$1_XDX_XDX) Int)
(declare-fun |$IsEqual'vec'$1_XUS_XUS''| (T@Vec_206745 T@Vec_206745) Bool)
(declare-fun InRangeVec_161901 (T@Vec_206745 Int) Bool)
(declare-fun |Select__T@[Int]$1_XUS_XUS_| (|T@[Int]$1_XUS_XUS| Int) T@$1_XUS_XUS)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| (T@Vec_206745) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| (T@Vec_206745 T@$1_XUS_XUS) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_178194 T@Vec_178194) Bool)
(declare-fun InRangeVec_209507 (T@Vec_178194 Int) Bool)
(declare-fun |Select__T@[Int]Vec_29362_| (|T@[Int]Vec_29362| Int) T@Vec_29362)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_178194) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_29362) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_178194 T@Vec_29362) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_29362 T@Vec_29362) Bool)
(declare-fun InRangeVec_16728 (T@Vec_29362 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_29362) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_29362 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_29362 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_29362) T@Vec_29362)
(declare-fun $1_Hash_sha3 (T@Vec_29362) T@Vec_29362)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_29362) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_29362 T@Vec_29362 T@Vec_29362) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_177831_| (|T@[$1_Event_EventHandle]Multiset_177831| T@$1_Event_EventHandle) T@Multiset_177831)
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
(declare-fun IndexOfVec_29362 (T@Vec_29362 Int) Int)
(declare-fun IndexOfVec_177917 (T@Vec_177917 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_177956 (T@Vec_177956 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_177995 (T@Vec_177995 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_178137 (T@Vec_178137 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_178194 (T@Vec_178194 T@Vec_29362) Int)
(declare-fun IndexOfVec_178401 (T@Vec_178401 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_178440 (T@Vec_178440 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_178479 (T@Vec_178479 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_178621 (T@Vec_178621 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_179849 (T@Vec_179849 |T@#0|) Int)
(declare-fun IndexOfVec_204065 (T@Vec_204065 T@$1_XDX_XDX) Int)
(declare-fun IndexOfVec_206745 (T@Vec_206745 T@$1_XUS_XUS) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_177831| |T@[$1_Event_EventHandle]Multiset_177831|) |T@[$1_Event_EventHandle]Multiset_177831|)
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
(declare-fun |lambda#36| (Int Int Int |T@[Int]Vec_29362| |T@[Int]Vec_29362| Int T@Vec_29362) |T@[Int]Vec_29362|)
(declare-fun |lambda#37| (Int Int |T@[Int]Vec_29362| Int Int T@Vec_29362) |T@[Int]Vec_29362|)
(declare-fun |lambda#38| (Int Int Int |T@[Int]Vec_29362| |T@[Int]Vec_29362| Int T@Vec_29362) |T@[Int]Vec_29362|)
(declare-fun |lambda#39| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#40| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#41| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemVMConfigbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemVMConfigbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemVMConfigbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemVMConfigbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemVMConfigbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemVMConfigbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemVMConfigbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemVMConfigbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_179849) (v2 T@Vec_179849) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_179849| v1) (|l#Vec_179849| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_159891 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_179849| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_179849| v2) i@@0)))
 :qid |DiemVMConfigbpl.615:13|
 :skolemid |17|
))))
 :qid |DiemVMConfigbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_179849) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_179849| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_159891 v@@4 i@@1) true)
 :qid |DiemVMConfigbpl.621:13|
 :skolemid |19|
))))
 :qid |DiemVMConfigbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_179849) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_159891 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@5) i@@3) e))
 :qid |DiemVMConfigbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_159891 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@5) j) e)))
 :qid |DiemVMConfigbpl.634:17|
 :skolemid |22|
)))))
 :qid |DiemVMConfigbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_177956) (v2@@0 T@Vec_177956) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_177956| v1@@0) (|l#Vec_177956| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_160092 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v2@@0) i@@4)))
 :qid |DiemVMConfigbpl.796:13|
 :skolemid |24|
))))
 :qid |DiemVMConfigbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_177956) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_177956| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_160092 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@6) i@@5)))
 :qid |DiemVMConfigbpl.802:13|
 :skolemid |26|
))))
 :qid |DiemVMConfigbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_177956) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_160092 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@7) i@@7) e@@0))
 :qid |DiemVMConfigbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_160092 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@7) j@@0) e@@0)))
 :qid |DiemVMConfigbpl.815:17|
 :skolemid |29|
)))))
 :qid |DiemVMConfigbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_177995) (v2@@1 T@Vec_177995) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_177995| v1@@1) (|l#Vec_177995| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_160293 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v2@@1) i@@8)))
 :qid |DiemVMConfigbpl.977:13|
 :skolemid |31|
))))
 :qid |DiemVMConfigbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_177995) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_177995| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_160293 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@8) i@@9)))
 :qid |DiemVMConfigbpl.983:13|
 :skolemid |33|
))))
 :qid |DiemVMConfigbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_177995) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_160293 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@9) i@@11) e@@1))
 :qid |DiemVMConfigbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_160293 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@9) j@@1) e@@1)))
 :qid |DiemVMConfigbpl.996:17|
 :skolemid |36|
)))))
 :qid |DiemVMConfigbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_178137) (v2@@2 T@Vec_178137) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_178137| v1@@2) (|l#Vec_178137| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_160494 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v2@@2) i@@12)))))
 :qid |DiemVMConfigbpl.1158:13|
 :skolemid |38|
))))
 :qid |DiemVMConfigbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_178137) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_178137| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_160494 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@10) i@@13)))
 :qid |DiemVMConfigbpl.1164:13|
 :skolemid |40|
))))
 :qid |DiemVMConfigbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_178137) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_160494 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |DiemVMConfigbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_160494 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |DiemVMConfigbpl.1177:17|
 :skolemid |43|
)))))
 :qid |DiemVMConfigbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_178479) (v2@@3 T@Vec_178479) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_178479| v1@@3) (|l#Vec_178479| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_160695 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v2@@3) i@@16)))))
 :qid |DiemVMConfigbpl.1339:13|
 :skolemid |45|
))))
 :qid |DiemVMConfigbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_178479) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_178479| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_160695 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@12) i@@17)))
 :qid |DiemVMConfigbpl.1345:13|
 :skolemid |47|
))))
 :qid |DiemVMConfigbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_178479) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_160695 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |DiemVMConfigbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_160695 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |DiemVMConfigbpl.1358:17|
 :skolemid |50|
)))))
 :qid |DiemVMConfigbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_178440) (v2@@4 T@Vec_178440) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_178440| v1@@4) (|l#Vec_178440| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_160896 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v2@@4) i@@20)))))
 :qid |DiemVMConfigbpl.1520:13|
 :skolemid |52|
))))
 :qid |DiemVMConfigbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_178440) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_178440| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_160896 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@14) i@@21)))
 :qid |DiemVMConfigbpl.1526:13|
 :skolemid |54|
))))
 :qid |DiemVMConfigbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_178440) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_160896 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |DiemVMConfigbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_160896 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |DiemVMConfigbpl.1539:17|
 :skolemid |57|
)))))
 :qid |DiemVMConfigbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_178401) (v2@@5 T@Vec_178401) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_178401| v1@@5) (|l#Vec_178401| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_161097 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v2@@5) i@@24)))))
 :qid |DiemVMConfigbpl.1701:13|
 :skolemid |59|
))))
 :qid |DiemVMConfigbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_178401) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_178401| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_161097 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@16) i@@25)))
 :qid |DiemVMConfigbpl.1707:13|
 :skolemid |61|
))))
 :qid |DiemVMConfigbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_178401) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_161097 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |DiemVMConfigbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_161097 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |DiemVMConfigbpl.1720:17|
 :skolemid |64|
)))))
 :qid |DiemVMConfigbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_178621) (v2@@6 T@Vec_178621) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_178621| v1@@6) (|l#Vec_178621| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_161298 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v2@@6) i@@28))))
 :qid |DiemVMConfigbpl.1882:13|
 :skolemid |66|
))))
 :qid |DiemVMConfigbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_178621) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_178621| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_161298 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@18) i@@29)))
 :qid |DiemVMConfigbpl.1888:13|
 :skolemid |68|
))))
 :qid |DiemVMConfigbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_178621) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_161298 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |DiemVMConfigbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_161298 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |DiemVMConfigbpl.1901:17|
 :skolemid |71|
)))))
 :qid |DiemVMConfigbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_177917) (v2@@7 T@Vec_177917) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_177917| v1@@7) (|l#Vec_177917| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_161499 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v2@@7) i@@32)))))
 :qid |DiemVMConfigbpl.2063:13|
 :skolemid |73|
))))
 :qid |DiemVMConfigbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_177917) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_177917| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_161499 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@20) i@@33)))
 :qid |DiemVMConfigbpl.2069:13|
 :skolemid |75|
))))
 :qid |DiemVMConfigbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_177917) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_161499 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |DiemVMConfigbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_161499 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |DiemVMConfigbpl.2082:17|
 :skolemid |78|
)))))
 :qid |DiemVMConfigbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_204065) (v2@@8 T@Vec_204065) ) (! (= (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8)  (and (= (|l#Vec_204065| v1@@8) (|l#Vec_204065| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_161700 v1@@8 i@@36) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v1@@8) i@@36) (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v2@@8) i@@36)))
 :qid |DiemVMConfigbpl.2244:13|
 :skolemid |80|
))))
 :qid |DiemVMConfigbpl.2242:36|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'$1_XDX_XDX''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_204065) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_204065| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_161700 v@@22 i@@37) (|$IsValid'$1_XDX_XDX'| (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@22) i@@37)))
 :qid |DiemVMConfigbpl.2250:13|
 :skolemid |82|
))))
 :qid |DiemVMConfigbpl.2248:36|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_204065) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@38 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_161700 v@@23 i@@39)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@23) i@@39) e@@8))
 :qid |DiemVMConfigbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_161700 v@@23 i@@38)) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@23) j@@8) e@@8)))
 :qid |DiemVMConfigbpl.2263:17|
 :skolemid |85|
)))))
 :qid |DiemVMConfigbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_206745) (v2@@9 T@Vec_206745) ) (! (= (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9)  (and (= (|l#Vec_206745| v1@@9) (|l#Vec_206745| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_161901 v1@@9 i@@40) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v1@@9) i@@40) (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v2@@9) i@@40)))
 :qid |DiemVMConfigbpl.2425:13|
 :skolemid |87|
))))
 :qid |DiemVMConfigbpl.2423:36|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'$1_XUS_XUS''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_206745) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_206745| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_161901 v@@24 i@@41) (|$IsValid'$1_XUS_XUS'| (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@24) i@@41)))
 :qid |DiemVMConfigbpl.2431:13|
 :skolemid |89|
))))
 :qid |DiemVMConfigbpl.2429:36|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_206745) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@42 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_161901 v@@25 i@@43)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@25) i@@43) e@@9))
 :qid |DiemVMConfigbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_161901 v@@25 i@@42)) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@25) j@@9) e@@9)))
 :qid |DiemVMConfigbpl.2444:17|
 :skolemid |92|
)))))
 :qid |DiemVMConfigbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_178194) (v2@@10 T@Vec_178194) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10)  (and (= (|l#Vec_178194| v1@@10) (|l#Vec_178194| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_209507 v1@@10 i@@44) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v1@@10) i@@44) (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v2@@10) i@@44)))
 :qid |DiemVMConfigbpl.2606:13|
 :skolemid |94|
))))
 :qid |DiemVMConfigbpl.2604:33|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_178194) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_178194| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_209507 v@@26 i@@45) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@26) i@@45)))
 :qid |DiemVMConfigbpl.2612:13|
 :skolemid |96|
))))
 :qid |DiemVMConfigbpl.2610:33|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_178194) (e@@10 T@Vec_29362) ) (! (let ((i@@46 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_209507 v@@27 i@@47)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@27) i@@47) e@@10))
 :qid |DiemVMConfigbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_209507 v@@27 i@@46)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@27) j@@10) e@@10)))
 :qid |DiemVMConfigbpl.2625:17|
 :skolemid |99|
)))))
 :qid |DiemVMConfigbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_29362) (v2@@11 T@Vec_29362) ) (! (= (|$IsEqual'vec'address''| v1@@11 v2@@11)  (and (= (|l#Vec_29362| v1@@11) (|l#Vec_29362| v2@@11)) (forall ((i@@48 Int) ) (!  (=> (InRangeVec_16728 v1@@11 i@@48) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v1@@11) i@@48) (|Select__T@[Int]Int_| (|v#Vec_29362| v2@@11) i@@48)))
 :qid |DiemVMConfigbpl.2787:13|
 :skolemid |101|
))))
 :qid |DiemVMConfigbpl.2785:33|
 :skolemid |102|
 :pattern ( (|$IsEqual'vec'address''| v1@@11 v2@@11))
)))
(assert (forall ((v@@28 T@Vec_29362) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (|l#Vec_29362| v@@28)) (forall ((i@@49 Int) ) (!  (=> (InRangeVec_16728 v@@28 i@@49) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_29362| v@@28) i@@49)))
 :qid |DiemVMConfigbpl.2793:13|
 :skolemid |103|
))))
 :qid |DiemVMConfigbpl.2791:33|
 :skolemid |104|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 T@Vec_29362) (e@@11 Int) ) (! (let ((i@@50 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (and (|$IsValid'u64'| i@@51) (InRangeVec_16728 v@@29 i@@51)) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@29) i@@51) e@@11))
 :qid |DiemVMConfigbpl.2798:13|
 :skolemid |105|
))) (= i@@50 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@50) (InRangeVec_16728 v@@29 i@@50)) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@29) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@50)) (not (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@29) j@@11) e@@11)))
 :qid |DiemVMConfigbpl.2806:17|
 :skolemid |106|
)))))
 :qid |DiemVMConfigbpl.2802:15|
 :skolemid |107|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v1@@12 T@Vec_29362) (v2@@12 T@Vec_29362) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12)  (and (= (|l#Vec_29362| v1@@12) (|l#Vec_29362| v2@@12)) (forall ((i@@52 Int) ) (!  (=> (InRangeVec_16728 v1@@12 i@@52) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v1@@12) i@@52) (|Select__T@[Int]Int_| (|v#Vec_29362| v2@@12) i@@52)))
 :qid |DiemVMConfigbpl.2968:13|
 :skolemid |108|
))))
 :qid |DiemVMConfigbpl.2966:28|
 :skolemid |109|
 :pattern ( (|$IsEqual'vec'u8''| v1@@12 v2@@12))
)))
(assert (forall ((v@@30 T@Vec_29362) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (|l#Vec_29362| v@@30)) (forall ((i@@53 Int) ) (!  (=> (InRangeVec_16728 v@@30 i@@53) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_29362| v@@30) i@@53)))
 :qid |DiemVMConfigbpl.2974:13|
 :skolemid |110|
))))
 :qid |DiemVMConfigbpl.2972:28|
 :skolemid |111|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 T@Vec_29362) (e@@12 Int) ) (! (let ((i@@54 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (and (|$IsValid'u64'| i@@55) (InRangeVec_16728 v@@31 i@@55)) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@31) i@@55) e@@12))
 :qid |DiemVMConfigbpl.2979:13|
 :skolemid |112|
))) (= i@@54 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@54) (InRangeVec_16728 v@@31 i@@54)) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@31) i@@54) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@54)) (not (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@31) j@@12) e@@12)))
 :qid |DiemVMConfigbpl.2987:17|
 :skolemid |113|
)))))
 :qid |DiemVMConfigbpl.2983:15|
 :skolemid |114|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1@@13 T@Vec_29362) (v2@@13 T@Vec_29362) ) (! (= (|$IsEqual'vec'u8''| v1@@13 v2@@13) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13)))
 :qid |DiemVMConfigbpl.3160:15|
 :skolemid |115|
 :pattern ( ($1_Hash_sha2 v1@@13) ($1_Hash_sha2 v2@@13))
)))
(assert (forall ((v1@@14 T@Vec_29362) (v2@@14 T@Vec_29362) ) (! (= (|$IsEqual'vec'u8''| v1@@14 v2@@14) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14)))
 :qid |DiemVMConfigbpl.3176:15|
 :skolemid |116|
 :pattern ( ($1_Hash_sha3 v1@@14) ($1_Hash_sha3 v2@@14))
)))
(assert (forall ((k1 T@Vec_29362) (k2 T@Vec_29362) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemVMConfigbpl.3247:15|
 :skolemid |117|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_29362) (s2 T@Vec_29362) (k1@@0 T@Vec_29362) (k2@@0 T@Vec_29362) (m1 T@Vec_29362) (m2 T@Vec_29362) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemVMConfigbpl.3250:15|
 :skolemid |118|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_177831_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_177831| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_177831| stream) v@@32) 0)
 :qid |DiemVMConfigbpl.159:13|
 :skolemid |4|
))))
 :qid |DiemVMConfigbpl.3311:13|
 :skolemid |119|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemVMConfigbpl.3352:80|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@15 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@15 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15)))
 :qid |DiemVMConfigbpl.3358:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@15) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@15))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemVMConfigbpl.3408:82|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@16 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16)))
 :qid |DiemVMConfigbpl.3414:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@16) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@16))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemVMConfigbpl.3464:80|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@17 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@17 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@17)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@17) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@17))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17)))
 :qid |DiemVMConfigbpl.3470:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@17) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@17))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemVMConfigbpl.3520:79|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_AdminTransactionEvent) (v2@@18 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18)))
 :qid |DiemVMConfigbpl.3526:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@18))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemVMConfigbpl.3576:76|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_CreateAccountEvent) (v2@@19 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@19 v2@@19) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19)))
 :qid |DiemVMConfigbpl.3582:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@19))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemVMConfigbpl.3632:78|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@20 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@20 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@20) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@20))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20)))
 :qid |DiemVMConfigbpl.3638:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@20) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@20))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemVMConfigbpl.3688:74|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@21 T@$1_DiemAccount_SentPaymentEvent) (v2@@21 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@21))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@21) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@21))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21)))
 :qid |DiemVMConfigbpl.3694:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@21) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@21))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemVMConfigbpl.3744:69|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@22 T@$1_DiemBlock_NewBlockEvent) (v2@@22 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@22) (|$round#$1_DiemBlock_NewBlockEvent| v2@@22)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@22) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@22))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@22) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@22) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@22))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22)))
 :qid |DiemVMConfigbpl.3750:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@22) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@22))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemVMConfigbpl.3800:70|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@23 T@$1_DiemConfig_NewEpochEvent) (v2@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@23 v2@@23) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23)))
 :qid |DiemVMConfigbpl.3806:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@23))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemVMConfigbpl.3856:60|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@24 T@$1_Diem_BurnEvent) (v2@@24 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@24) (|$amount#$1_Diem_BurnEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@24) (|$currency_code#$1_Diem_BurnEvent| v2@@24))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@24) (|$preburn_address#$1_Diem_BurnEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24)))
 :qid |DiemVMConfigbpl.3862:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@24) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@24))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemVMConfigbpl.3912:66|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@25 T@$1_Diem_CancelBurnEvent) (v2@@25 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@25) (|$amount#$1_Diem_CancelBurnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@25) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@25) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25)))
 :qid |DiemVMConfigbpl.3918:15|
 :skolemid |142|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@25) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@25))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemVMConfigbpl.3968:60|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@26 T@$1_Diem_MintEvent) (v2@@26 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@26) (|$amount#$1_Diem_MintEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@26) (|$currency_code#$1_Diem_MintEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26)))
 :qid |DiemVMConfigbpl.3974:15|
 :skolemid |144|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@26) (|$ToEventRep'$1_Diem_MintEvent'| v2@@26))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemVMConfigbpl.4024:63|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@27 T@$1_Diem_PreburnEvent) (v2@@27 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@27) (|$amount#$1_Diem_PreburnEvent| v2@@27)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@27) (|$currency_code#$1_Diem_PreburnEvent| v2@@27))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@27) (|$preburn_address#$1_Diem_PreburnEvent| v2@@27))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27)))
 :qid |DiemVMConfigbpl.4030:15|
 :skolemid |146|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@27) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@27))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemVMConfigbpl.4080:79|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@28 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@28) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@28))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28)))
 :qid |DiemVMConfigbpl.4086:15|
 :skolemid |148|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@28) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@28))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemVMConfigbpl.4136:82|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@29 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@29 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@29)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@29) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@29))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29)))
 :qid |DiemVMConfigbpl.4142:15|
 :skolemid |150|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@29) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@29))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemVMConfigbpl.4192:88|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@30 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@30) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@30))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30)))
 :qid |DiemVMConfigbpl.4198:15|
 :skolemid |152|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@30) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@30))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemVMConfigbpl.4248:72|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@31 T@$1_VASPDomain_VASPDomainEvent) (v2@@31 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@31)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@31)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@31) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@31))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31)))
 :qid |DiemVMConfigbpl.4254:15|
 :skolemid |154|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@31) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@31))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemVMConfigbpl.4333:61|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemVMConfigbpl.5148:36|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemVMConfigbpl.6649:71|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemVMConfigbpl.7018:46|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemVMConfigbpl.7030:64|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemVMConfigbpl.7042:75|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemVMConfigbpl.7054:72|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemVMConfigbpl.7087:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemVMConfigbpl.7110:46|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemVMConfigbpl.7392:49|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemVMConfigbpl.7497:71|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemVMConfigbpl.7510:91|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemVMConfigbpl.7523:113|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |DiemVMConfigbpl.7536:89|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemVMConfigbpl.7549:75|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemVMConfigbpl.7562:73|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15) true)
 :qid |DiemVMConfigbpl.7576:49|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@16)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@16)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@16))))
 :qid |DiemVMConfigbpl.7596:48|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17) true)
 :qid |DiemVMConfigbpl.7613:57|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18) true)
 :qid |DiemVMConfigbpl.7627:83|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19) true)
 :qid |DiemVMConfigbpl.7641:103|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20) true)
 :qid |DiemVMConfigbpl.7655:125|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@21) true)
 :qid |DiemVMConfigbpl.7669:101|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@22) true)
 :qid |DiemVMConfigbpl.7683:87|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@23) true)
 :qid |DiemVMConfigbpl.7697:85|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@24) true)
 :qid |DiemVMConfigbpl.7711:61|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@25) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@25)))
 :qid |DiemVMConfigbpl.7725:48|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@26)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@26)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@26))))
 :qid |DiemVMConfigbpl.16318:45|
 :skolemid |476|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@27) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@27)))
 :qid |DiemVMConfigbpl.16332:51|
 :skolemid |477|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@27))
)))
(assert (forall ((s@@28 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@28)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@28)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@28))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@28))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@28))))
 :qid |DiemVMConfigbpl.16355:48|
 :skolemid |478|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@28))
)))
(assert (forall ((s@@29 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@29) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@29)))
 :qid |DiemVMConfigbpl.16649:49|
 :skolemid |479|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@29))
)))
(assert (forall ((s@@30 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@30) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@30)))
 :qid |DiemVMConfigbpl.16662:65|
 :skolemid |480|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@31)))
 :qid |DiemVMConfigbpl.17203:45|
 :skolemid |481|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@32) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@32)))
 :qid |DiemVMConfigbpl.17216:45|
 :skolemid |482|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@33) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@33)))
 :qid |DiemVMConfigbpl.17229:37|
 :skolemid |483|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34) true)
 :qid |DiemVMConfigbpl.17242:55|
 :skolemid |484|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35) true)
 :qid |DiemVMConfigbpl.17256:55|
 :skolemid |485|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@36))))
 :qid |DiemVMConfigbpl.17276:38|
 :skolemid |486|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@37))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@37))))
 :qid |DiemVMConfigbpl.17298:44|
 :skolemid |487|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))))
 :qid |DiemVMConfigbpl.17350:53|
 :skolemid |488|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))))
 :qid |DiemVMConfigbpl.17423:53|
 :skolemid |489|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@40)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@40)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@40))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@40))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@40))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@40))))
 :qid |DiemVMConfigbpl.17496:45|
 :skolemid |490|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@41) true)
 :qid |DiemVMConfigbpl.17533:55|
 :skolemid |491|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@42) true)
 :qid |DiemVMConfigbpl.17547:55|
 :skolemid |492|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@43) true)
 :qid |DiemVMConfigbpl.17561:47|
 :skolemid |493|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@43))
)))
(assert (forall ((s@@44 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@44)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@44)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@44))))
 :qid |DiemVMConfigbpl.17578:38|
 :skolemid |494|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@45)))
 :qid |DiemVMConfigbpl.17592:48|
 :skolemid |495|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@46) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@46)))
 :qid |DiemVMConfigbpl.17606:48|
 :skolemid |496|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@47) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@47)))
 :qid |DiemVMConfigbpl.17620:40|
 :skolemid |497|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@47))
)))
(assert (forall ((s@@48 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@48)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@48)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@48))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@48))))
 :qid |DiemVMConfigbpl.17640:41|
 :skolemid |498|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@49)))
 :qid |DiemVMConfigbpl.17656:53|
 :skolemid |499|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@50)))
 :qid |DiemVMConfigbpl.17669:53|
 :skolemid |500|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@51) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@51)))
 :qid |DiemVMConfigbpl.17682:45|
 :skolemid |501|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@52))))
 :qid |DiemVMConfigbpl.17698:60|
 :skolemid |502|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@53))))
 :qid |DiemVMConfigbpl.17715:60|
 :skolemid |503|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@54)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@54)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@54))))
 :qid |DiemVMConfigbpl.17732:52|
 :skolemid |504|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@54))
)))
(assert (forall ((s@@55 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@55)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@55)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@55))))
 :qid |DiemVMConfigbpl.17749:57|
 :skolemid |505|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@55))
)))
(assert (forall ((s@@56 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@56) true)
 :qid |DiemVMConfigbpl.19922:68|
 :skolemid |506|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@57))))
 :qid |DiemVMConfigbpl.19944:66|
 :skolemid |507|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@58))))
 :qid |DiemVMConfigbpl.19970:66|
 :skolemid |508|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |DiemVMConfigbpl.19999:56|
 :skolemid |509|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |DiemVMConfigbpl.20029:56|
 :skolemid |510|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@61) true)
 :qid |DiemVMConfigbpl.20463:31|
 :skolemid |511|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@61))
)))
(assert (forall ((s@@62 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@62) true)
 :qid |DiemVMConfigbpl.20793:31|
 :skolemid |512|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@63)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@63)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@63))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@63))))
 :qid |DiemVMConfigbpl.20812:35|
 :skolemid |513|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@64)))
 :qid |DiemVMConfigbpl.21226:45|
 :skolemid |514|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@65))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@65))))
 :qid |DiemVMConfigbpl.21244:50|
 :skolemid |515|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@66)))
 :qid |DiemVMConfigbpl.21260:52|
 :skolemid |516|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@67)))
 :qid |DiemVMConfigbpl.21273:46|
 :skolemid |517|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@68) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@68)))
 :qid |DiemVMConfigbpl.21654:38|
 :skolemid |518|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@69) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@69)))
 :qid |DiemVMConfigbpl.21668:39|
 :skolemid |519|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@69))
)))
(assert (forall ((s@@70 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@70))))
 :qid |DiemVMConfigbpl.22355:65|
 :skolemid |520|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@71)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@71)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@71))))
 :qid |DiemVMConfigbpl.22723:60|
 :skolemid |521|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@72))))
 :qid |DiemVMConfigbpl.22740:66|
 :skolemid |522|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@73)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@73)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@73))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@73))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@73))))
 :qid |DiemVMConfigbpl.22769:50|
 :skolemid |523|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@74) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@74)))
 :qid |DiemVMConfigbpl.22792:45|
 :skolemid |524|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@75)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@75)) true))
 :qid |DiemVMConfigbpl.23365:87|
 :skolemid |525|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@76) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@76)))
 :qid |DiemVMConfigbpl.23566:47|
 :skolemid |526|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@77)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@77)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@77))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@77))))
 :qid |DiemVMConfigbpl.23585:58|
 :skolemid |527|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@78) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@78)))
 :qid |DiemVMConfigbpl.23601:39|
 :skolemid |528|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@79)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@79))))
 :qid |DiemVMConfigbpl.23623:58|
 :skolemid |529|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@80)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@80))))
 :qid |DiemVMConfigbpl.23640:58|
 :skolemid |530|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@81) true)
 :qid |DiemVMConfigbpl.23655:51|
 :skolemid |531|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@82)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@82)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@82))))
 :qid |DiemVMConfigbpl.23672:60|
 :skolemid |532|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@83)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@83)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@83))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@83))))
 :qid |DiemVMConfigbpl.23958:47|
 :skolemid |533|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@84)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@84))))
 :qid |DiemVMConfigbpl.23984:63|
 :skolemid |534|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@85) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@85)))
 :qid |DiemVMConfigbpl.23999:57|
 :skolemid |535|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@85))
)))
(assert (forall ((s@@86 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@86) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@86)))
 :qid |DiemVMConfigbpl.24012:55|
 :skolemid |536|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@87)))
 :qid |DiemVMConfigbpl.24026:55|
 :skolemid |537|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@88) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@88)))
 :qid |DiemVMConfigbpl.24040:47|
 :skolemid |538|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@89)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@89))))
 :qid |DiemVMConfigbpl.24057:54|
 :skolemid |539|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@90)))
 :qid |DiemVMConfigbpl.24071:55|
 :skolemid |540|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@91)))
 :qid |DiemVMConfigbpl.24084:57|
 :skolemid |541|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@92))))
 :qid |DiemVMConfigbpl.24106:56|
 :skolemid |542|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@93))))
 :qid |DiemVMConfigbpl.24133:52|
 :skolemid |543|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@94)))
 :qid |DiemVMConfigbpl.24151:54|
 :skolemid |544|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94))
)))
(assert (forall ((s@@95 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@95) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@95)))
 :qid |DiemVMConfigbpl.41175:55|
 :skolemid |1492|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@96)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@96)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@96))))
 :qid |DiemVMConfigbpl.41196:47|
 :skolemid |1493|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@97)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@97)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@97))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@97))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@97))))
 :qid |DiemVMConfigbpl.41220:47|
 :skolemid |1494|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@98) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@98)))
 :qid |DiemVMConfigbpl.41454:63|
 :skolemid |1495|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@99) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@99)))
 :qid |DiemVMConfigbpl.41789:49|
 :skolemid |1496|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@100)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@100)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@100))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@100))))
 :qid |DiemVMConfigbpl.41831:49|
 :skolemid |1497|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@101)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@101)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@101))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@101))))
 :qid |DiemVMConfigbpl.41860:48|
 :skolemid |1498|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@101))
)))
(assert (forall ((s@@102 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@102) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@102)))
 :qid |DiemVMConfigbpl.43780:47|
 :skolemid |1569|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@102))
)))
(assert (forall ((v@@33 T@Vec_179849) (i@@56 Int) ) (! (= (InRangeVec_159891 v@@33 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_179849| v@@33))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_159891 v@@33 i@@56))
)))
(assert (forall ((v@@34 T@Vec_177956) (i@@57 Int) ) (! (= (InRangeVec_160092 v@@34 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_177956| v@@34))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160092 v@@34 i@@57))
)))
(assert (forall ((v@@35 T@Vec_177995) (i@@58 Int) ) (! (= (InRangeVec_160293 v@@35 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_177995| v@@35))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160293 v@@35 i@@58))
)))
(assert (forall ((v@@36 T@Vec_178137) (i@@59 Int) ) (! (= (InRangeVec_160494 v@@36 i@@59)  (and (>= i@@59 0) (< i@@59 (|l#Vec_178137| v@@36))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160494 v@@36 i@@59))
)))
(assert (forall ((v@@37 T@Vec_178479) (i@@60 Int) ) (! (= (InRangeVec_160695 v@@37 i@@60)  (and (>= i@@60 0) (< i@@60 (|l#Vec_178479| v@@37))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160695 v@@37 i@@60))
)))
(assert (forall ((v@@38 T@Vec_178440) (i@@61 Int) ) (! (= (InRangeVec_160896 v@@38 i@@61)  (and (>= i@@61 0) (< i@@61 (|l#Vec_178440| v@@38))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_160896 v@@38 i@@61))
)))
(assert (forall ((v@@39 T@Vec_178401) (i@@62 Int) ) (! (= (InRangeVec_161097 v@@39 i@@62)  (and (>= i@@62 0) (< i@@62 (|l#Vec_178401| v@@39))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_161097 v@@39 i@@62))
)))
(assert (forall ((v@@40 T@Vec_178621) (i@@63 Int) ) (! (= (InRangeVec_161298 v@@40 i@@63)  (and (>= i@@63 0) (< i@@63 (|l#Vec_178621| v@@40))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_161298 v@@40 i@@63))
)))
(assert (forall ((v@@41 T@Vec_177917) (i@@64 Int) ) (! (= (InRangeVec_161499 v@@41 i@@64)  (and (>= i@@64 0) (< i@@64 (|l#Vec_177917| v@@41))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_161499 v@@41 i@@64))
)))
(assert (forall ((v@@42 T@Vec_204065) (i@@65 Int) ) (! (= (InRangeVec_161700 v@@42 i@@65)  (and (>= i@@65 0) (< i@@65 (|l#Vec_204065| v@@42))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_161700 v@@42 i@@65))
)))
(assert (forall ((v@@43 T@Vec_206745) (i@@66 Int) ) (! (= (InRangeVec_161901 v@@43 i@@66)  (and (>= i@@66 0) (< i@@66 (|l#Vec_206745| v@@43))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_161901 v@@43 i@@66))
)))
(assert (forall ((v@@44 T@Vec_178194) (i@@67 Int) ) (! (= (InRangeVec_209507 v@@44 i@@67)  (and (>= i@@67 0) (< i@@67 (|l#Vec_178194| v@@44))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_209507 v@@44 i@@67))
)))
(assert (forall ((v@@45 T@Vec_29362) (i@@68 Int) ) (! (= (InRangeVec_16728 v@@45 i@@68)  (and (>= i@@68 0) (< i@@68 (|l#Vec_29362| v@@45))))
 :qid |DiemVMConfigbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_16728 v@@45 i@@68))
)))
(assert (forall ((v@@46 T@Vec_29362) (e@@13 Int) ) (! (let ((i@@69 (IndexOfVec_29362 v@@46 e@@13)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_16728 v@@46 i@@70) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@46) i@@70) e@@13))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_16728 v@@46 i@@69) (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@46) i@@69) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@69)) (not (= (|Select__T@[Int]Int_| (|v#Vec_29362| v@@46) j@@13) e@@13)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_29362 v@@46 e@@13))
)))
(assert (forall ((v@@47 T@Vec_177917) (e@@14 T@$1_ValidatorConfig_Config) ) (! (let ((i@@71 (IndexOfVec_177917 v@@47 e@@14)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_161499 v@@47 i@@72) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@47) i@@72) e@@14))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_161499 v@@47 i@@71) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@47) i@@71) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@71)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_177917| v@@47) j@@14) e@@14)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_177917 v@@47 e@@14))
)))
(assert (forall ((v@@48 T@Vec_177956) (e@@15 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@73 (IndexOfVec_177956 v@@48 e@@15)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_160092 v@@48 i@@74) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@48) i@@74) e@@15))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_160092 v@@48 i@@73) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@48) i@@73) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@73)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_177956| v@@48) j@@15) e@@15)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_177956 v@@48 e@@15))
)))
(assert (forall ((v@@49 T@Vec_177995) (e@@16 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@75 (IndexOfVec_177995 v@@49 e@@16)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_160293 v@@49 i@@76) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@49) i@@76) e@@16))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_160293 v@@49 i@@75) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@49) i@@75) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@75)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_177995| v@@49) j@@16) e@@16)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_177995 v@@49 e@@16))
)))
(assert (forall ((v@@50 T@Vec_178137) (e@@17 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@77 (IndexOfVec_178137 v@@50 e@@17)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_160494 v@@50 i@@78) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@50) i@@78) e@@17))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_160494 v@@50 i@@77) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@50) i@@77) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@77)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_178137| v@@50) j@@17) e@@17)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178137 v@@50 e@@17))
)))
(assert (forall ((v@@51 T@Vec_178194) (e@@18 T@Vec_29362) ) (! (let ((i@@79 (IndexOfVec_178194 v@@51 e@@18)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_209507 v@@51 i@@80) (= (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@51) i@@80) e@@18))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_209507 v@@51 i@@79) (= (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@51) i@@79) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@79)) (not (= (|Select__T@[Int]Vec_29362_| (|v#Vec_178194| v@@51) j@@18) e@@18)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178194 v@@51 e@@18))
)))
(assert (forall ((v@@52 T@Vec_178401) (e@@19 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@81 (IndexOfVec_178401 v@@52 e@@19)))
(ite  (not (exists ((i@@82 Int) ) (!  (and (InRangeVec_161097 v@@52 i@@82) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@52) i@@82) e@@19))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@81 (- 0 1))  (and (and (InRangeVec_161097 v@@52 i@@81) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@52) i@@81) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@81)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_178401| v@@52) j@@19) e@@19)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178401 v@@52 e@@19))
)))
(assert (forall ((v@@53 T@Vec_178440) (e@@20 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@83 (IndexOfVec_178440 v@@53 e@@20)))
(ite  (not (exists ((i@@84 Int) ) (!  (and (InRangeVec_160896 v@@53 i@@84) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@53) i@@84) e@@20))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@83 (- 0 1))  (and (and (InRangeVec_160896 v@@53 i@@83) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@53) i@@83) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@83)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_178440| v@@53) j@@20) e@@20)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178440 v@@53 e@@20))
)))
(assert (forall ((v@@54 T@Vec_178479) (e@@21 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@85 (IndexOfVec_178479 v@@54 e@@21)))
(ite  (not (exists ((i@@86 Int) ) (!  (and (InRangeVec_160695 v@@54 i@@86) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@54) i@@86) e@@21))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@85 (- 0 1))  (and (and (InRangeVec_160695 v@@54 i@@85) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@54) i@@85) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@85)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_178479| v@@54) j@@21) e@@21)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178479 v@@54 e@@21))
)))
(assert (forall ((v@@55 T@Vec_178621) (e@@22 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@87 (IndexOfVec_178621 v@@55 e@@22)))
(ite  (not (exists ((i@@88 Int) ) (!  (and (InRangeVec_161298 v@@55 i@@88) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@55) i@@88) e@@22))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@87 (- 0 1))  (and (and (InRangeVec_161298 v@@55 i@@87) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@55) i@@87) e@@22)) (forall ((j@@22 Int) ) (!  (=> (and (>= j@@22 0) (< j@@22 i@@87)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_178621| v@@55) j@@22) e@@22)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_178621 v@@55 e@@22))
)))
(assert (forall ((v@@56 T@Vec_179849) (e@@23 |T@#0|) ) (! (let ((i@@89 (IndexOfVec_179849 v@@56 e@@23)))
(ite  (not (exists ((i@@90 Int) ) (!  (and (InRangeVec_159891 v@@56 i@@90) (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@56) i@@90) e@@23))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@89 (- 0 1))  (and (and (InRangeVec_159891 v@@56 i@@89) (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@56) i@@89) e@@23)) (forall ((j@@23 Int) ) (!  (=> (and (>= j@@23 0) (< j@@23 i@@89)) (not (= (|Select__T@[Int]#0_| (|v#Vec_179849| v@@56) j@@23) e@@23)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_179849 v@@56 e@@23))
)))
(assert (forall ((v@@57 T@Vec_204065) (e@@24 T@$1_XDX_XDX) ) (! (let ((i@@91 (IndexOfVec_204065 v@@57 e@@24)))
(ite  (not (exists ((i@@92 Int) ) (!  (and (InRangeVec_161700 v@@57 i@@92) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@57) i@@92) e@@24))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@91 (- 0 1))  (and (and (InRangeVec_161700 v@@57 i@@91) (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@57) i@@91) e@@24)) (forall ((j@@24 Int) ) (!  (=> (and (>= j@@24 0) (< j@@24 i@@91)) (not (= (|Select__T@[Int]$1_XDX_XDX_| (|v#Vec_204065| v@@57) j@@24) e@@24)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_204065 v@@57 e@@24))
)))
(assert (forall ((v@@58 T@Vec_206745) (e@@25 T@$1_XUS_XUS) ) (! (let ((i@@93 (IndexOfVec_206745 v@@58 e@@25)))
(ite  (not (exists ((i@@94 Int) ) (!  (and (InRangeVec_161901 v@@58 i@@94) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@58) i@@94) e@@25))
 :qid |DiemVMConfigbpl.109:13|
 :skolemid |0|
))) (= i@@93 (- 0 1))  (and (and (InRangeVec_161901 v@@58 i@@93) (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@58) i@@93) e@@25)) (forall ((j@@25 Int) ) (!  (=> (and (>= j@@25 0) (< j@@25 i@@93)) (not (= (|Select__T@[Int]$1_XUS_XUS_| (|v#Vec_206745| v@@58) j@@25) e@@25)))
 :qid |DiemVMConfigbpl.117:17|
 :skolemid |1|
)))))
 :qid |DiemVMConfigbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_206745 v@@58 e@@25))
)))
(assert (forall ((|l#0| Bool) (i@@95 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95) |l#0|)
 :qid |DiemVMConfigbpl.275:54|
 :skolemid |1660|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@95))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_177831|) (|l#1| |T@[$1_Event_EventHandle]Multiset_177831|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_177831_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_177831| (|Select__T@[$1_Event_EventHandle]Multiset_177831_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_177831| (|Select__T@[$1_Event_EventHandle]Multiset_177831_| |l#1| handle@@0))))
(Multiset_177831 (|lambda#42| (|v#Multiset_177831| (|Select__T@[$1_Event_EventHandle]Multiset_177831_| |l#0@@0| handle@@0)) (|v#Multiset_177831| (|Select__T@[$1_Event_EventHandle]Multiset_177831_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemVMConfigbpl.3321:13|
 :skolemid |1661|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_177831_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@96 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96) (ite  (and (>= i@@96 |l#0@@1|) (< i@@96 |l#1@@0|)) (ite (< i@@96 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@96) (|Select__T@[Int]#0_| |l#4| (- i@@96 |l#5|))) |l#6|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1662|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@96))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@97 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97) (ite  (and (<= |l#0@@2| i@@97) (< i@@97 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@97) |l#4@@0|)) |l#5@@0|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1663|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@97))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@26 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26) (ite  (and (>= j@@26 |l#0@@3|) (< j@@26 |l#1@@2|)) (ite (< j@@26 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@26) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@26 |l#5@@1|))) |l#6@@0|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1664|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@26))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98) (ite  (and (>= i@@98 |l#0@@4|) (< i@@98 |l#1@@3|)) (ite (< i@@98 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@98) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@98 |l#5@@2|))) |l#6@@1|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1665|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@98))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99) (ite  (and (<= |l#0@@5| i@@99) (< i@@99 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@99) |l#4@@3|)) |l#5@@3|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1666|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@99))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27) (ite  (and (>= j@@27 |l#0@@6|) (< j@@27 |l#1@@5|)) (ite (< j@@27 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@27) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@27 |l#5@@4|))) |l#6@@2|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1667|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@27))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@100 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100) (ite  (and (>= i@@100 |l#0@@7|) (< i@@100 |l#1@@6|)) (ite (< i@@100 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@100) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@100 |l#5@@5|))) |l#6@@3|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1668|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@100))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@101 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101) (ite  (and (<= |l#0@@8| i@@101) (< i@@101 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@101) |l#4@@6|)) |l#5@@6|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1669|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@101))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28) (ite  (and (>= j@@28 |l#0@@9|) (< j@@28 |l#1@@8|)) (ite (< j@@28 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@28) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@28 |l#5@@7|))) |l#6@@4|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1670|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@28))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@102 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102) (ite  (and (>= i@@102 |l#0@@10|) (< i@@102 |l#1@@9|)) (ite (< i@@102 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@102) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@102 |l#5@@8|))) |l#6@@5|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1671|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@102))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@103 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103) (ite  (and (<= |l#0@@11| i@@103) (< i@@103 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@103) |l#4@@9|)) |l#5@@9|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1672|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@103))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29) (ite  (and (>= j@@29 |l#0@@12|) (< j@@29 |l#1@@11|)) (ite (< j@@29 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@29) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@29 |l#5@@10|))) |l#6@@6|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1673|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@29))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@104 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104) (ite  (and (>= i@@104 |l#0@@13|) (< i@@104 |l#1@@12|)) (ite (< i@@104 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@104) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@104 |l#5@@11|))) |l#6@@7|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1674|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@104))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@105 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105) (ite  (and (<= |l#0@@14| i@@105) (< i@@105 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@105) |l#4@@12|)) |l#5@@12|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1675|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@105))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30) (ite  (and (>= j@@30 |l#0@@15|) (< j@@30 |l#1@@14|)) (ite (< j@@30 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@30) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@30 |l#5@@13|))) |l#6@@8|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1676|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@30))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@106 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106) (ite  (and (>= i@@106 |l#0@@16|) (< i@@106 |l#1@@15|)) (ite (< i@@106 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@106) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@106 |l#5@@14|))) |l#6@@9|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1677|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@106))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@107 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107) (ite  (and (<= |l#0@@17| i@@107) (< i@@107 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@107) |l#4@@15|)) |l#5@@15|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1678|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@107))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@31 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31) (ite  (and (>= j@@31 |l#0@@18|) (< j@@31 |l#1@@17|)) (ite (< j@@31 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@31) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@31 |l#5@@16|))) |l#6@@10|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1679|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@31))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@108 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108) (ite  (and (>= i@@108 |l#0@@19|) (< i@@108 |l#1@@18|)) (ite (< i@@108 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@108) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@108 |l#5@@17|))) |l#6@@11|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1680|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@108))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@109 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109) (ite  (and (<= |l#0@@20| i@@109) (< i@@109 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@109) |l#4@@18|)) |l#5@@18|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1681|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@109))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@32 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32) (ite  (and (>= j@@32 |l#0@@21|) (< j@@32 |l#1@@20|)) (ite (< j@@32 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@32) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@32 |l#5@@19|))) |l#6@@12|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1682|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@32))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@110 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110) (ite  (and (>= i@@110 |l#0@@22|) (< i@@110 |l#1@@21|)) (ite (< i@@110 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@110) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@110 |l#5@@20|))) |l#6@@13|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1683|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@110))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@111 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111) (ite  (and (<= |l#0@@23| i@@111) (< i@@111 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@111) |l#4@@21|)) |l#5@@21|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1684|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@111))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@33 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33) (ite  (and (>= j@@33 |l#0@@24|) (< j@@33 |l#1@@23|)) (ite (< j@@33 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@33) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@33 |l#5@@22|))) |l#6@@14|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1685|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@33))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@112 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112) (ite  (and (>= i@@112 |l#0@@25|) (< i@@112 |l#1@@24|)) (ite (< i@@112 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@112) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@112 |l#5@@23|))) |l#6@@15|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1686|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@112))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@113 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113) (ite  (and (<= |l#0@@26| i@@113) (< i@@113 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@113) |l#4@@24|)) |l#5@@24|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1687|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@113))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@34 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34) (ite  (and (>= j@@34 |l#0@@27|) (< j@@34 |l#1@@26|)) (ite (< j@@34 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@34) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@34 |l#5@@25|))) |l#6@@16|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1688|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@34))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]$1_XDX_XDX|) (|l#4@@26| |T@[Int]$1_XDX_XDX|) (|l#5@@26| Int) (|l#6@@17| T@$1_XDX_XDX) (i@@114 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114) (ite  (and (>= i@@114 |l#0@@28|) (< i@@114 |l#1@@27|)) (ite (< i@@114 |l#2@@26|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@26| i@@114) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@26| (- i@@114 |l#5@@26|))) |l#6@@17|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1689|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@114))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]$1_XDX_XDX|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@$1_XDX_XDX) (i@@115 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115) (ite  (and (<= |l#0@@29| i@@115) (< i@@115 |l#1@@28|)) (|Select__T@[Int]$1_XDX_XDX_| |l#2@@27| (- (- |l#3@@27| i@@115) |l#4@@27|)) |l#5@@27|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1690|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@115))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]$1_XDX_XDX|) (|l#4@@28| |T@[Int]$1_XDX_XDX|) (|l#5@@28| Int) (|l#6@@18| T@$1_XDX_XDX) (j@@35 Int) ) (! (= (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35) (ite  (and (>= j@@35 |l#0@@30|) (< j@@35 |l#1@@29|)) (ite (< j@@35 |l#2@@28|) (|Select__T@[Int]$1_XDX_XDX_| |l#3@@28| j@@35) (|Select__T@[Int]$1_XDX_XDX_| |l#4@@28| (+ j@@35 |l#5@@28|))) |l#6@@18|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1691|
 :pattern ( (|Select__T@[Int]$1_XDX_XDX_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@35))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]$1_XUS_XUS|) (|l#4@@29| |T@[Int]$1_XUS_XUS|) (|l#5@@29| Int) (|l#6@@19| T@$1_XUS_XUS) (i@@116 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116) (ite  (and (>= i@@116 |l#0@@31|) (< i@@116 |l#1@@30|)) (ite (< i@@116 |l#2@@29|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@29| i@@116) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@29| (- i@@116 |l#5@@29|))) |l#6@@19|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1692|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@116))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]$1_XUS_XUS|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| T@$1_XUS_XUS) (i@@117 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117) (ite  (and (<= |l#0@@32| i@@117) (< i@@117 |l#1@@31|)) (|Select__T@[Int]$1_XUS_XUS_| |l#2@@30| (- (- |l#3@@30| i@@117) |l#4@@30|)) |l#5@@30|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1693|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@117))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]$1_XUS_XUS|) (|l#4@@31| |T@[Int]$1_XUS_XUS|) (|l#5@@31| Int) (|l#6@@20| T@$1_XUS_XUS) (j@@36 Int) ) (! (= (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36) (ite  (and (>= j@@36 |l#0@@33|) (< j@@36 |l#1@@32|)) (ite (< j@@36 |l#2@@31|) (|Select__T@[Int]$1_XUS_XUS_| |l#3@@31| j@@36) (|Select__T@[Int]$1_XUS_XUS_| |l#4@@31| (+ j@@36 |l#5@@31|))) |l#6@@20|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1694|
 :pattern ( (|Select__T@[Int]$1_XUS_XUS_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@36))
)))
(assert (forall ((|l#0@@34| Int) (|l#1@@33| Int) (|l#2@@32| Int) (|l#3@@32| |T@[Int]Vec_29362|) (|l#4@@32| |T@[Int]Vec_29362|) (|l#5@@32| Int) (|l#6@@21| T@Vec_29362) (i@@118 Int) ) (! (= (|Select__T@[Int]Vec_29362_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118) (ite  (and (>= i@@118 |l#0@@34|) (< i@@118 |l#1@@33|)) (ite (< i@@118 |l#2@@32|) (|Select__T@[Int]Vec_29362_| |l#3@@32| i@@118) (|Select__T@[Int]Vec_29362_| |l#4@@32| (- i@@118 |l#5@@32|))) |l#6@@21|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1695|
 :pattern ( (|Select__T@[Int]Vec_29362_| (|lambda#36| |l#0@@34| |l#1@@33| |l#2@@32| |l#3@@32| |l#4@@32| |l#5@@32| |l#6@@21|) i@@118))
)))
(assert (forall ((|l#0@@35| Int) (|l#1@@34| Int) (|l#2@@33| |T@[Int]Vec_29362|) (|l#3@@33| Int) (|l#4@@33| Int) (|l#5@@33| T@Vec_29362) (i@@119 Int) ) (! (= (|Select__T@[Int]Vec_29362_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119) (ite  (and (<= |l#0@@35| i@@119) (< i@@119 |l#1@@34|)) (|Select__T@[Int]Vec_29362_| |l#2@@33| (- (- |l#3@@33| i@@119) |l#4@@33|)) |l#5@@33|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1696|
 :pattern ( (|Select__T@[Int]Vec_29362_| (|lambda#37| |l#0@@35| |l#1@@34| |l#2@@33| |l#3@@33| |l#4@@33| |l#5@@33|) i@@119))
)))
(assert (forall ((|l#0@@36| Int) (|l#1@@35| Int) (|l#2@@34| Int) (|l#3@@34| |T@[Int]Vec_29362|) (|l#4@@34| |T@[Int]Vec_29362|) (|l#5@@34| Int) (|l#6@@22| T@Vec_29362) (j@@37 Int) ) (! (= (|Select__T@[Int]Vec_29362_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37) (ite  (and (>= j@@37 |l#0@@36|) (< j@@37 |l#1@@35|)) (ite (< j@@37 |l#2@@34|) (|Select__T@[Int]Vec_29362_| |l#3@@34| j@@37) (|Select__T@[Int]Vec_29362_| |l#4@@34| (+ j@@37 |l#5@@34|))) |l#6@@22|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1697|
 :pattern ( (|Select__T@[Int]Vec_29362_| (|lambda#38| |l#0@@36| |l#1@@35| |l#2@@34| |l#3@@34| |l#4@@34| |l#5@@34| |l#6@@22|) j@@37))
)))
(assert (forall ((|l#0@@37| Int) (|l#1@@36| Int) (|l#2@@35| Int) (|l#3@@35| |T@[Int]Int|) (|l#4@@35| |T@[Int]Int|) (|l#5@@35| Int) (|l#6@@23| Int) (i@@120 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120) (ite  (and (>= i@@120 |l#0@@37|) (< i@@120 |l#1@@36|)) (ite (< i@@120 |l#2@@35|) (|Select__T@[Int]Int_| |l#3@@35| i@@120) (|Select__T@[Int]Int_| |l#4@@35| (- i@@120 |l#5@@35|))) |l#6@@23|))
 :qid |DiemVMConfigbpl.73:19|
 :skolemid |1698|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#39| |l#0@@37| |l#1@@36| |l#2@@35| |l#3@@35| |l#4@@35| |l#5@@35| |l#6@@23|) i@@120))
)))
(assert (forall ((|l#0@@38| Int) (|l#1@@37| Int) (|l#2@@36| |T@[Int]Int|) (|l#3@@36| Int) (|l#4@@36| Int) (|l#5@@36| Int) (i@@121 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121) (ite  (and (<= |l#0@@38| i@@121) (< i@@121 |l#1@@37|)) (|Select__T@[Int]Int_| |l#2@@36| (- (- |l#3@@36| i@@121) |l#4@@36|)) |l#5@@36|))
 :qid |DiemVMConfigbpl.82:30|
 :skolemid |1699|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#40| |l#0@@38| |l#1@@37| |l#2@@36| |l#3@@36| |l#4@@36| |l#5@@36|) i@@121))
)))
(assert (forall ((|l#0@@39| Int) (|l#1@@38| Int) (|l#2@@37| Int) (|l#3@@37| |T@[Int]Int|) (|l#4@@37| |T@[Int]Int|) (|l#5@@37| Int) (|l#6@@24| Int) (j@@38 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38) (ite  (and (>= j@@38 |l#0@@39|) (< j@@38 |l#1@@38|)) (ite (< j@@38 |l#2@@37|) (|Select__T@[Int]Int_| |l#3@@37| j@@38) (|Select__T@[Int]Int_| |l#4@@37| (+ j@@38 |l#5@@37|))) |l#6@@24|))
 :qid |DiemVMConfigbpl.63:20|
 :skolemid |1700|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#41| |l#0@@39| |l#1@@38| |l#2@@37| |l#3@@37| |l#4@@37| |l#5@@37| |l#6@@24|) j@@38))
)))
(assert (forall ((|l#0@@40| |T@[$EventRep]Int|) (|l#1@@39| |T@[$EventRep]Int|) (v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59) (- (|Select__T@[$EventRep]Int_| |l#0@@40| v@@59) (|Select__T@[$EventRep]Int_| |l#1@@39| v@@59)))
 :qid |DiemVMConfigbpl.154:29|
 :skolemid |1701|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#42| |l#0@@40| |l#1@@39|) v@@59))
)))
; Valid

