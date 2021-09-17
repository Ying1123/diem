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
(declare-datatypes ((T@$Memory_164938 0)) ((($Memory_164938 (|domain#$Memory_164938| |T@[Int]Bool|) (|contents#$Memory_164938| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_133863 0)) (((Vec_133863 (|v#Vec_133863| |T@[Int]#0|) (|l#Vec_133863| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_174692 0)) ((($Memory_174692 (|domain#$Memory_174692| |T@[Int]Bool|) (|contents#$Memory_174692| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_174621 0)) ((($Memory_174621 (|domain#$Memory_174621| |T@[Int]Bool|) (|contents#$Memory_174621| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_174378 0)) ((($Memory_174378 (|domain#$Memory_174378| |T@[Int]Bool|) (|contents#$Memory_174378| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_174307 0)) ((($Memory_174307 (|domain#$Memory_174307| |T@[Int]Bool|) (|contents#$Memory_174307| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_174236 0)) ((($Memory_174236 (|domain#$Memory_174236| |T@[Int]Bool|) (|contents#$Memory_174236| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_244336 0)) ((($Memory_244336 (|domain#$Memory_244336| |T@[Int]Bool|) (|contents#$Memory_244336| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_174068 0)) ((($Memory_174068 (|domain#$Memory_174068| |T@[Int]Bool|) (|contents#$Memory_174068| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_244591 0)) ((($Memory_244591 (|domain#$Memory_244591| |T@[Int]Bool|) (|contents#$Memory_244591| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_244691 0)) ((($Memory_244691 (|domain#$Memory_244691| |T@[Int]Bool|) (|contents#$Memory_244691| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_244019 0)) ((($Memory_244019 (|domain#$Memory_244019| |T@[Int]Bool|) (|contents#$Memory_244019| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_281036 0)) ((($Memory_281036 (|domain#$Memory_281036| |T@[Int]Bool|) (|contents#$Memory_281036| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_280749 0)) ((($Memory_280749 (|domain#$Memory_280749| |T@[Int]Bool|) (|contents#$Memory_280749| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_280462 0)) ((($Memory_280462 (|domain#$Memory_280462| |T@[Int]Bool|) (|contents#$Memory_280462| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_280175 0)) ((($Memory_280175 (|domain#$Memory_280175| |T@[Int]Bool|) (|contents#$Memory_280175| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173900 0)) ((($Memory_173900 (|domain#$Memory_173900| |T@[Int]Bool|) (|contents#$Memory_173900| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173661 0)) ((($Memory_173661 (|domain#$Memory_173661| |T@[Int]Bool|) (|contents#$Memory_173661| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_174550 0)) ((($Memory_174550 (|domain#$Memory_174550| |T@[Int]Bool|) (|contents#$Memory_174550| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_184793 0)) ((($Memory_184793 (|domain#$Memory_184793| |T@[Int]Bool|) (|contents#$Memory_184793| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_184729 0)) ((($Memory_184729 (|domain#$Memory_184729| |T@[Int]Bool|) (|contents#$Memory_184729| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_184665 0)) ((($Memory_184665 (|domain#$Memory_184665| |T@[Int]Bool|) (|contents#$Memory_184665| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_185247 0)) ((($Memory_185247 (|domain#$Memory_185247| |T@[Int]Bool|) (|contents#$Memory_185247| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_185160 0)) ((($Memory_185160 (|domain#$Memory_185160| |T@[Int]Bool|) (|contents#$Memory_185160| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_185073 0)) ((($Memory_185073 (|domain#$Memory_185073| |T@[Int]Bool|) (|contents#$Memory_185073| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_191074 0)) ((($Memory_191074 (|domain#$Memory_191074| |T@[Int]Bool|) (|contents#$Memory_191074| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_244251 0)) ((($Memory_244251 (|domain#$Memory_244251| |T@[Int]Bool|) (|contents#$Memory_244251| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_190993 0)) ((($Memory_190993 (|domain#$Memory_190993| |T@[Int]Bool|) (|contents#$Memory_190993| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_173732 0)) ((($Memory_173732 (|domain#$Memory_173732| |T@[Int]Bool|) (|contents#$Memory_173732| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_244191 0)) ((($Memory_244191 (|domain#$Memory_244191| |T@[Int]Bool|) (|contents#$Memory_244191| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_190912 0)) ((($Memory_190912 (|domain#$Memory_190912| |T@[Int]Bool|) (|contents#$Memory_190912| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173971 0)) ((($Memory_173971 (|domain#$Memory_173971| |T@[Int]Bool|) (|contents#$Memory_173971| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_180064 0)) ((($Memory_180064 (|domain#$Memory_180064| |T@[Int]Bool|) (|contents#$Memory_180064| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_179977 0)) ((($Memory_179977 (|domain#$Memory_179977| |T@[Int]Bool|) (|contents#$Memory_179977| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_179890 0)) ((($Memory_179890 (|domain#$Memory_179890| |T@[Int]Bool|) (|contents#$Memory_179890| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_179803 0)) ((($Memory_179803 (|domain#$Memory_179803| |T@[Int]Bool|) (|contents#$Memory_179803| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_179716 0)) ((($Memory_179716 (|domain#$Memory_179716| |T@[Int]Bool|) (|contents#$Memory_179716| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_179629 0)) ((($Memory_179629 (|domain#$Memory_179629| |T@[Int]Bool|) (|contents#$Memory_179629| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_173422 0)) ((($Memory_173422 (|domain#$Memory_173422| |T@[Int]Bool|) (|contents#$Memory_173422| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_178556 0)) ((($Memory_178556 (|domain#$Memory_178556| |T@[Int]Bool|) (|contents#$Memory_178556| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_173263 0)) ((($Memory_173263 (|domain#$Memory_173263| |T@[Int]Bool|) (|contents#$Memory_173263| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_172854 0)) ((($Memory_172854 (|domain#$Memory_172854| |T@[Int]Bool|) (|contents#$Memory_172854| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_173170 0)) ((($Memory_173170 (|domain#$Memory_173170| |T@[Int]Bool|) (|contents#$Memory_173170| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_132017 0)) (((Vec_132017 (|v#Vec_132017| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_132017| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_132017) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_131978 0)) (((Vec_131978 (|v#Vec_131978| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_131978| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_131978) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_23605 0)) (((Vec_23605 (|v#Vec_23605| |T@[Int]Int|) (|l#Vec_23605| Int) ) ) ))
(declare-sort |T@[Int]Vec_23605| 0)
(declare-datatypes ((T@Vec_132208 0)) (((Vec_132208 (|v#Vec_132208| |T@[Int]Vec_23605|) (|l#Vec_132208| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_132208) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_174152 0)) ((($Memory_174152 (|domain#$Memory_174152| |T@[Int]Bool|) (|contents#$Memory_174152| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_132208) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_173493 0)) ((($Memory_173493 (|domain#$Memory_173493| |T@[Int]Bool|) (|contents#$Memory_173493| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_23605) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_23605) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_174776 0)) ((($Memory_174776 (|domain#$Memory_174776| |T@[Int]Bool|) (|contents#$Memory_174776| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_23605) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_178423 0)) ((($Memory_178423 (|domain#$Memory_178423| |T@[Int]Bool|) (|contents#$Memory_178423| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_23605) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_243919 0)) ((($Memory_243919 (|domain#$Memory_243919| |T@[Int]Bool|) (|contents#$Memory_243919| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_23605) (|$base_url#$1_DualAttestation_Credential| T@Vec_23605) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_23605) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_243632 0)) ((($Memory_243632 (|domain#$Memory_243632| |T@[Int]Bool|) (|contents#$Memory_243632| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_132651 0)) (((Vec_132651 (|v#Vec_132651| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_132651| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_132651) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_244104 0)) ((($Memory_244104 (|domain#$Memory_244104| |T@[Int]Bool|) (|contents#$Memory_244104| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_132496 0)) (((Vec_132496 (|v#Vec_132496| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_132496| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_132496) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_191558 0)) ((($Memory_191558 (|domain#$Memory_191558| |T@[Int]Bool|) (|contents#$Memory_191558| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_132457 0)) (((Vec_132457 (|v#Vec_132457| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_132457| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_132457) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_191441 0)) ((($Memory_191441 (|domain#$Memory_191441| |T@[Int]Bool|) (|contents#$Memory_191441| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_132418 0)) (((Vec_132418 (|v#Vec_132418| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_132418| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_132418) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_191324 0)) ((($Memory_191324 (|domain#$Memory_191324| |T@[Int]Bool|) (|contents#$Memory_191324| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_184229 0)) ((($Memory_184229 (|domain#$Memory_184229| |T@[Int]Bool|) (|contents#$Memory_184229| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173816 0)) ((($Memory_173816 (|domain#$Memory_173816| |T@[Int]Bool|) (|contents#$Memory_173816| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173577 0)) ((($Memory_173577 (|domain#$Memory_173577| |T@[Int]Bool|) (|contents#$Memory_173577| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_23605) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_23605) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_131939 0)) (((Vec_131939 (|v#Vec_131939| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_131939| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_131939) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_132151 0)) (((Vec_132151 (|v#Vec_132151| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_132151| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_132151) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_173349 0)) ((($Memory_173349 (|domain#$Memory_173349| |T@[Int]Bool|) (|contents#$Memory_173349| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_177677 0)) ((($Memory_177677 (|domain#$Memory_177677| |T@[Int]Bool|) (|contents#$Memory_177677| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_177034 0)) ((($Memory_177034 (|domain#$Memory_177034| |T@[Int]Bool|) (|contents#$Memory_177034| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_172983 0)) ((($Memory_172983 (|domain#$Memory_172983| |T@[Int]Bool|) (|contents#$Memory_172983| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_172301 0)) ((($Memory_172301 (|domain#$Memory_172301| |T@[Int]Bool|) (|contents#$Memory_172301| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_131853 0)) (((Multiset_131853 (|v#Multiset_131853| |T@[$EventRep]Int|) (|l#Multiset_131853| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_131853| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_131853|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_306474 0)) ((($Mutation_306474 (|l#$Mutation_306474| T@$Location) (|p#$Mutation_306474| T@Vec_23605) (|v#$Mutation_306474| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_306429 0)) ((($Mutation_306429 (|l#$Mutation_306429| T@$Location) (|p#$Mutation_306429| T@Vec_23605) (|v#$Mutation_306429| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_288052 0)) ((($Mutation_288052 (|l#$Mutation_288052| T@$Location) (|p#$Mutation_288052| T@Vec_23605) (|v#$Mutation_288052| |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_284871 0)) ((($Mutation_284871 (|l#$Mutation_284871| T@$Location) (|p#$Mutation_284871| T@Vec_23605) (|v#$Mutation_284871| |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_281786 0)) ((($Mutation_281786 (|l#$Mutation_281786| T@$Location) (|p#$Mutation_281786| T@Vec_23605) (|v#$Mutation_281786| |T@$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_268527 0)) ((($Mutation_268527 (|l#$Mutation_268527| T@$Location) (|p#$Mutation_268527| T@Vec_23605) (|v#$Mutation_268527| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_74103 0)) ((($Mutation_74103 (|l#$Mutation_74103| T@$Location) (|p#$Mutation_74103| T@Vec_23605) (|v#$Mutation_74103| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_201529 0)) ((($Mutation_201529 (|l#$Mutation_201529| T@$Location) (|p#$Mutation_201529| T@Vec_23605) (|v#$Mutation_201529| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_201479 0)) ((($Mutation_201479 (|l#$Mutation_201479| T@$Location) (|p#$Mutation_201479| T@Vec_23605) (|v#$Mutation_201479| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_201431 0)) ((($Mutation_201431 (|l#$Mutation_201431| T@$Location) (|p#$Mutation_201431| T@Vec_23605) (|v#$Mutation_201431| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_196936 0)) ((($Mutation_196936 (|l#$Mutation_196936| T@$Location) (|p#$Mutation_196936| T@Vec_23605) (|v#$Mutation_196936| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_196886 0)) ((($Mutation_196886 (|l#$Mutation_196886| T@$Location) (|p#$Mutation_196886| T@Vec_23605) (|v#$Mutation_196886| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_196838 0)) ((($Mutation_196838 (|l#$Mutation_196838| T@$Location) (|p#$Mutation_196838| T@Vec_23605) (|v#$Mutation_196838| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_192429 0)) ((($Mutation_192429 (|l#$Mutation_192429| T@$Location) (|p#$Mutation_192429| T@Vec_23605) (|v#$Mutation_192429| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_192379 0)) ((($Mutation_192379 (|l#$Mutation_192379| T@$Location) (|p#$Mutation_192379| T@Vec_23605) (|v#$Mutation_192379| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_192331 0)) ((($Mutation_192331 (|l#$Mutation_192331| T@$Location) (|p#$Mutation_192331| T@Vec_23605) (|v#$Mutation_192331| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_182801 0)) ((($Mutation_182801 (|l#$Mutation_182801| T@$Location) (|p#$Mutation_182801| T@Vec_23605) (|v#$Mutation_182801| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_172796 0)) ((($Mutation_172796 (|l#$Mutation_172796| T@$Location) (|p#$Mutation_172796| T@Vec_23605) (|v#$Mutation_172796| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_165569 0)) ((($Mutation_165569 (|l#$Mutation_165569| T@$Location) (|p#$Mutation_165569| T@Vec_23605) (|v#$Mutation_165569| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_15070 0)) ((($Mutation_15070 (|l#$Mutation_15070| T@$Location) (|p#$Mutation_15070| T@Vec_23605) (|v#$Mutation_15070| Int) ) ) ))
(declare-datatypes ((T@$Mutation_159826 0)) ((($Mutation_159826 (|l#$Mutation_159826| T@$Location) (|p#$Mutation_159826| T@Vec_23605) (|v#$Mutation_159826| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$Mutation_158738 0)) ((($Mutation_158738 (|l#$Mutation_158738| T@$Location) (|p#$Mutation_158738| T@Vec_23605) (|v#$Mutation_158738| T@Vec_132208) ) ) ))
(declare-datatypes ((T@$Mutation_157029 0)) ((($Mutation_157029 (|l#$Mutation_157029| T@$Location) (|p#$Mutation_157029| T@Vec_23605) (|v#$Mutation_157029| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_156042 0)) ((($Mutation_156042 (|l#$Mutation_156042| T@$Location) (|p#$Mutation_156042| T@Vec_23605) (|v#$Mutation_156042| T@Vec_131939) ) ) ))
(declare-datatypes ((T@$Mutation_154387 0)) ((($Mutation_154387 (|l#$Mutation_154387| T@$Location) (|p#$Mutation_154387| T@Vec_23605) (|v#$Mutation_154387| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_153400 0)) ((($Mutation_153400 (|l#$Mutation_153400| T@$Location) (|p#$Mutation_153400| T@Vec_23605) (|v#$Mutation_153400| T@Vec_132651) ) ) ))
(declare-datatypes ((T@$Mutation_151722 0)) ((($Mutation_151722 (|l#$Mutation_151722| T@$Location) (|p#$Mutation_151722| T@Vec_23605) (|v#$Mutation_151722| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_150735 0)) ((($Mutation_150735 (|l#$Mutation_150735| T@$Location) (|p#$Mutation_150735| T@Vec_23605) (|v#$Mutation_150735| T@Vec_132418) ) ) ))
(declare-datatypes ((T@$Mutation_149026 0)) ((($Mutation_149026 (|l#$Mutation_149026| T@$Location) (|p#$Mutation_149026| T@Vec_23605) (|v#$Mutation_149026| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_148039 0)) ((($Mutation_148039 (|l#$Mutation_148039| T@$Location) (|p#$Mutation_148039| T@Vec_23605) (|v#$Mutation_148039| T@Vec_132457) ) ) ))
(declare-datatypes ((T@$Mutation_146330 0)) ((($Mutation_146330 (|l#$Mutation_146330| T@$Location) (|p#$Mutation_146330| T@Vec_23605) (|v#$Mutation_146330| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_145343 0)) ((($Mutation_145343 (|l#$Mutation_145343| T@$Location) (|p#$Mutation_145343| T@Vec_23605) (|v#$Mutation_145343| T@Vec_132496) ) ) ))
(declare-datatypes ((T@$Mutation_143634 0)) ((($Mutation_143634 (|l#$Mutation_143634| T@$Location) (|p#$Mutation_143634| T@Vec_23605) (|v#$Mutation_143634| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_142647 0)) ((($Mutation_142647 (|l#$Mutation_142647| T@$Location) (|p#$Mutation_142647| T@Vec_23605) (|v#$Mutation_142647| T@Vec_132151) ) ) ))
(declare-datatypes ((T@$Mutation_140847 0)) ((($Mutation_140847 (|l#$Mutation_140847| T@$Location) (|p#$Mutation_140847| T@Vec_23605) (|v#$Mutation_140847| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_139860 0)) ((($Mutation_139860 (|l#$Mutation_139860| T@$Location) (|p#$Mutation_139860| T@Vec_23605) (|v#$Mutation_139860| T@Vec_132017) ) ) ))
(declare-datatypes ((T@$Mutation_138195 0)) ((($Mutation_138195 (|l#$Mutation_138195| T@$Location) (|p#$Mutation_138195| T@Vec_23605) (|v#$Mutation_138195| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_137208 0)) ((($Mutation_137208 (|l#$Mutation_137208| T@$Location) (|p#$Mutation_137208| T@Vec_23605) (|v#$Mutation_137208| T@Vec_131978) ) ) ))
(declare-datatypes ((T@$Mutation_135495 0)) ((($Mutation_135495 (|l#$Mutation_135495| T@$Location) (|p#$Mutation_135495| T@Vec_23605) (|v#$Mutation_135495| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_134508 0)) ((($Mutation_134508 (|l#$Mutation_134508| T@$Location) (|p#$Mutation_134508| T@Vec_23605) (|v#$Mutation_134508| T@Vec_133863) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_133863 T@Vec_133863) Bool)
(declare-fun InRangeVec_117660 (T@Vec_133863 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_133863) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_133863 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_131978 T@Vec_131978) Bool)
(declare-fun InRangeVec_117861 (T@Vec_131978 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_131978) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_131978 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_132017 T@Vec_132017) Bool)
(declare-fun InRangeVec_118062 (T@Vec_132017 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_132017) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_132017 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_132151 T@Vec_132151) Bool)
(declare-fun InRangeVec_118263 (T@Vec_132151 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_23605 T@Vec_23605) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_132151) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_132151 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_132496 T@Vec_132496) Bool)
(declare-fun InRangeVec_118464 (T@Vec_132496 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_132496) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_132496 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_132457 T@Vec_132457) Bool)
(declare-fun InRangeVec_118665 (T@Vec_132457 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_132457) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_132457 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_132418 T@Vec_132418) Bool)
(declare-fun InRangeVec_118866 (T@Vec_132418 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_132418) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_132418 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_132651 T@Vec_132651) Bool)
(declare-fun InRangeVec_119067 (T@Vec_132651 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_132651) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_132651 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_131939 T@Vec_131939) Bool)
(declare-fun InRangeVec_119268 (T@Vec_131939 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_131939) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_131939 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_132208 T@Vec_132208) Bool)
(declare-fun InRangeVec_158161 (T@Vec_132208 Int) Bool)
(declare-fun |Select__T@[Int]Vec_23605_| (|T@[Int]Vec_23605| Int) T@Vec_23605)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_132208) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_23605) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_132208 T@Vec_23605) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_131853_| (|T@[$1_Event_EventHandle]Multiset_131853| T@$1_Event_EventHandle) T@Multiset_131853)
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
(declare-fun IndexOfVec_131939 (T@Vec_131939 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_131978 (T@Vec_131978 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_132017 (T@Vec_132017 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_132151 (T@Vec_132151 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_132208 (T@Vec_132208 T@Vec_23605) Int)
(declare-fun IndexOfVec_132418 (T@Vec_132418 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_132457 (T@Vec_132457 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_132496 (T@Vec_132496 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_132651 (T@Vec_132651 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_133863 (T@Vec_133863 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_131853| |T@[$1_Event_EventHandle]Multiset_131853|) |T@[$1_Event_EventHandle]Multiset_131853|)
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
 :qid |XUSbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XUSbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XUSbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XUSbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XUSbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XUSbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XUSbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XUSbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_133863) (v2 T@Vec_133863) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_133863| v1) (|l#Vec_133863| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_117660 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_133863| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_133863| v2) i@@0)))
 :qid |XUSbpl.615:13|
 :skolemid |17|
))))
 :qid |XUSbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_133863) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_133863| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_117660 v@@4 i@@1) true)
 :qid |XUSbpl.621:13|
 :skolemid |19|
))))
 :qid |XUSbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_133863) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_117660 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@5) i@@3) e))
 :qid |XUSbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_117660 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@5) j) e)))
 :qid |XUSbpl.634:17|
 :skolemid |22|
)))))
 :qid |XUSbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_131978) (v2@@0 T@Vec_131978) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_131978| v1@@0) (|l#Vec_131978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_117861 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v2@@0) i@@4)))
 :qid |XUSbpl.796:13|
 :skolemid |24|
))))
 :qid |XUSbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_131978) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_131978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_117861 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@6) i@@5)))
 :qid |XUSbpl.802:13|
 :skolemid |26|
))))
 :qid |XUSbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_131978) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_117861 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@7) i@@7) e@@0))
 :qid |XUSbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_117861 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@7) j@@0) e@@0)))
 :qid |XUSbpl.815:17|
 :skolemid |29|
)))))
 :qid |XUSbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_132017) (v2@@1 T@Vec_132017) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_132017| v1@@1) (|l#Vec_132017| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_118062 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v2@@1) i@@8)))
 :qid |XUSbpl.977:13|
 :skolemid |31|
))))
 :qid |XUSbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_132017) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_132017| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_118062 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@8) i@@9)))
 :qid |XUSbpl.983:13|
 :skolemid |33|
))))
 :qid |XUSbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_132017) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_118062 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@9) i@@11) e@@1))
 :qid |XUSbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_118062 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@9) j@@1) e@@1)))
 :qid |XUSbpl.996:17|
 :skolemid |36|
)))))
 :qid |XUSbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_132151) (v2@@2 T@Vec_132151) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_132151| v1@@2) (|l#Vec_132151| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_118263 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12)))))
 :qid |XUSbpl.1158:13|
 :skolemid |38|
))))
 :qid |XUSbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_132151) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_132151| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_118263 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@10) i@@13)))
 :qid |XUSbpl.1164:13|
 :skolemid |40|
))))
 :qid |XUSbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_132151) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_118263 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |XUSbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_118263 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |XUSbpl.1177:17|
 :skolemid |43|
)))))
 :qid |XUSbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_132496) (v2@@3 T@Vec_132496) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_132496| v1@@3) (|l#Vec_132496| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_118464 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v2@@3) i@@16)))))
 :qid |XUSbpl.1339:13|
 :skolemid |45|
))))
 :qid |XUSbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_132496) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_132496| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_118464 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@12) i@@17)))
 :qid |XUSbpl.1345:13|
 :skolemid |47|
))))
 :qid |XUSbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_132496) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_118464 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |XUSbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_118464 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |XUSbpl.1358:17|
 :skolemid |50|
)))))
 :qid |XUSbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_132457) (v2@@4 T@Vec_132457) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_132457| v1@@4) (|l#Vec_132457| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_118665 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v2@@4) i@@20)))))
 :qid |XUSbpl.1520:13|
 :skolemid |52|
))))
 :qid |XUSbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_132457) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_132457| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_118665 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@14) i@@21)))
 :qid |XUSbpl.1526:13|
 :skolemid |54|
))))
 :qid |XUSbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_132457) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_118665 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |XUSbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_118665 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |XUSbpl.1539:17|
 :skolemid |57|
)))))
 :qid |XUSbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_132418) (v2@@5 T@Vec_132418) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_132418| v1@@5) (|l#Vec_132418| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_118866 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v2@@5) i@@24)))))
 :qid |XUSbpl.1701:13|
 :skolemid |59|
))))
 :qid |XUSbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_132418) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_132418| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_118866 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@16) i@@25)))
 :qid |XUSbpl.1707:13|
 :skolemid |61|
))))
 :qid |XUSbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_132418) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_118866 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |XUSbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_118866 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |XUSbpl.1720:17|
 :skolemid |64|
)))))
 :qid |XUSbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_132651) (v2@@6 T@Vec_132651) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_132651| v1@@6) (|l#Vec_132651| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_119067 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v2@@6) i@@28))))
 :qid |XUSbpl.1882:13|
 :skolemid |66|
))))
 :qid |XUSbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_132651) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_132651| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_119067 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@18) i@@29)))
 :qid |XUSbpl.1888:13|
 :skolemid |68|
))))
 :qid |XUSbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_132651) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_119067 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |XUSbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_119067 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |XUSbpl.1901:17|
 :skolemid |71|
)))))
 :qid |XUSbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_131939) (v2@@7 T@Vec_131939) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_131939| v1@@7) (|l#Vec_131939| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_119268 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v2@@7) i@@32)))))
 :qid |XUSbpl.2063:13|
 :skolemid |73|
))))
 :qid |XUSbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_131939) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_131939| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_119268 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@20) i@@33)))
 :qid |XUSbpl.2069:13|
 :skolemid |75|
))))
 :qid |XUSbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_131939) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_119268 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |XUSbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_119268 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |XUSbpl.2082:17|
 :skolemid |78|
)))))
 :qid |XUSbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_132208) (v2@@8 T@Vec_132208) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@8 v2@@8)  (and (= (|l#Vec_132208| v1@@8) (|l#Vec_132208| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_158161 v1@@8 i@@36) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v1@@8) i@@36) (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v2@@8) i@@36)))
 :qid |XUSbpl.2244:13|
 :skolemid |80|
))))
 :qid |XUSbpl.2242:33|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_132208) ) (! (= (|$IsValid'vec'vec'u8'''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_132208| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_158161 v@@22 i@@37) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@22) i@@37)))
 :qid |XUSbpl.2250:13|
 :skolemid |82|
))))
 :qid |XUSbpl.2248:33|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_132208) (e@@8 T@Vec_23605) ) (! (let ((i@@38 (|$IndexOfVec'vec'u8''| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_158161 v@@23 i@@39)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@23) i@@39) e@@8))
 :qid |XUSbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_158161 v@@23 i@@38)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@23) j@@8) e@@8)))
 :qid |XUSbpl.2263:17|
 :skolemid |85|
)))))
 :qid |XUSbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_23605) (v2@@9 T@Vec_23605) ) (! (= (|$IsEqual'vec'address''| v1@@9 v2@@9)  (and (= (|l#Vec_23605| v1@@9) (|l#Vec_23605| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_14446 v1@@9 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v1@@9) i@@40) (|Select__T@[Int]Int_| (|v#Vec_23605| v2@@9) i@@40)))
 :qid |XUSbpl.2425:13|
 :skolemid |87|
))))
 :qid |XUSbpl.2423:33|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'address''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_23605) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_23605| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_14446 v@@24 i@@41) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_23605| v@@24) i@@41)))
 :qid |XUSbpl.2431:13|
 :skolemid |89|
))))
 :qid |XUSbpl.2429:33|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_23605) (e@@9 Int) ) (! (let ((i@@42 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_14446 v@@25 i@@43)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) i@@43) e@@9))
 :qid |XUSbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_14446 v@@25 i@@42)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) j@@9) e@@9)))
 :qid |XUSbpl.2444:17|
 :skolemid |92|
)))))
 :qid |XUSbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_23605) (v2@@10 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10)  (and (= (|l#Vec_23605| v1@@10) (|l#Vec_23605| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_14446 v1@@10 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v1@@10) i@@44) (|Select__T@[Int]Int_| (|v#Vec_23605| v2@@10) i@@44)))
 :qid |XUSbpl.2606:13|
 :skolemid |94|
))))
 :qid |XUSbpl.2604:28|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'u8''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_23605) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_23605| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_14446 v@@26 i@@45) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_23605| v@@26) i@@45)))
 :qid |XUSbpl.2612:13|
 :skolemid |96|
))))
 :qid |XUSbpl.2610:28|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_23605) (e@@10 Int) ) (! (let ((i@@46 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_14446 v@@27 i@@47)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) i@@47) e@@10))
 :qid |XUSbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_14446 v@@27 i@@46)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) j@@10) e@@10)))
 :qid |XUSbpl.2625:17|
 :skolemid |99|
)))))
 :qid |XUSbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_23605) (v2@@11 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@11 v2@@11) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11)))
 :qid |XUSbpl.2798:15|
 :skolemid |101|
 :pattern ( ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11))
)))
(assert (forall ((v1@@12 T@Vec_23605) (v2@@12 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12)))
 :qid |XUSbpl.2814:15|
 :skolemid |102|
 :pattern ( ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12))
)))
(assert (forall ((k1 T@Vec_23605) (k2 T@Vec_23605) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XUSbpl.2885:15|
 :skolemid |103|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_23605) (s2 T@Vec_23605) (k1@@0 T@Vec_23605) (k2@@0 T@Vec_23605) (m1 T@Vec_23605) (m2 T@Vec_23605) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XUSbpl.2888:15|
 :skolemid |104|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_131853| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| stream) v@@28) 0)
 :qid |XUSbpl.159:13|
 :skolemid |4|
))))
 :qid |XUSbpl.2949:13|
 :skolemid |105|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XUSbpl.2990:80|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@13 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@13 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13)))
 :qid |XUSbpl.2996:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XUSbpl.3046:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14)))
 :qid |XUSbpl.3052:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XUSbpl.3102:80|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@15 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@15 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@15)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15)))
 :qid |XUSbpl.3108:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XUSbpl.3158:79|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_AdminTransactionEvent) (v2@@16 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16)))
 :qid |XUSbpl.3164:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XUSbpl.3214:76|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_CreateAccountEvent) (v2@@17 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17)))
 :qid |XUSbpl.3220:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XUSbpl.3270:78|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@18 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18)))
 :qid |XUSbpl.3276:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XUSbpl.3326:74|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_SentPaymentEvent) (v2@@19 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@19))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19)))
 :qid |XUSbpl.3332:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XUSbpl.3382:69|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@20 T@$1_DiemBlock_NewBlockEvent) (v2@@20 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@20) (|$round#$1_DiemBlock_NewBlockEvent| v2@@20)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@20) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@20))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@20) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@20) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20)))
 :qid |XUSbpl.3388:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XUSbpl.3438:70|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@21 T@$1_DiemConfig_NewEpochEvent) (v2@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21)))
 :qid |XUSbpl.3444:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XUSbpl.3494:60|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@22 T@$1_Diem_BurnEvent) (v2@@22 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@22) (|$amount#$1_Diem_BurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@22) (|$currency_code#$1_Diem_BurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@22) (|$preburn_address#$1_Diem_BurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22)))
 :qid |XUSbpl.3500:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XUSbpl.3550:66|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@23 T@$1_Diem_CancelBurnEvent) (v2@@23 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@23) (|$amount#$1_Diem_CancelBurnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@23) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@23) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23)))
 :qid |XUSbpl.3556:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XUSbpl.3606:60|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@24 T@$1_Diem_MintEvent) (v2@@24 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@24) (|$amount#$1_Diem_MintEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@24) (|$currency_code#$1_Diem_MintEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24)))
 :qid |XUSbpl.3612:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XUSbpl.3662:63|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@25 T@$1_Diem_PreburnEvent) (v2@@25 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@25) (|$amount#$1_Diem_PreburnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@25) (|$currency_code#$1_Diem_PreburnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@25) (|$preburn_address#$1_Diem_PreburnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25)))
 :qid |XUSbpl.3668:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XUSbpl.3718:79|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26)))
 :qid |XUSbpl.3724:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XUSbpl.3774:82|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@27 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27)))
 :qid |XUSbpl.3780:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XUSbpl.3830:88|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28)))
 :qid |XUSbpl.3836:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XUSbpl.3886:72|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@29 T@$1_VASPDomain_VASPDomainEvent) (v2@@29 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@29)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@29)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@29))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29)))
 :qid |XUSbpl.3892:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XUSbpl.3971:61|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |XUSbpl.4786:36|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |XUSbpl.4805:71|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |XUSbpl.4868:46|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |XUSbpl.4880:64|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |XUSbpl.4892:75|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |XUSbpl.4904:72|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |XUSbpl.4932:55|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |XUSbpl.4955:46|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |XUSbpl.4974:49|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |XUSbpl.5059:71|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |XUSbpl.5072:91|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |XUSbpl.5085:113|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |XUSbpl.5098:89|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |XUSbpl.5111:75|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |XUSbpl.5124:73|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |XUSbpl.5144:48|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |XUSbpl.5161:57|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |XUSbpl.5175:83|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |XUSbpl.5189:103|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |XUSbpl.5203:125|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |XUSbpl.5217:101|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |XUSbpl.5231:87|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |XUSbpl.5245:85|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |XUSbpl.5259:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |XUSbpl.5280:45|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |XUSbpl.5294:51|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |XUSbpl.5317:48|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |XUSbpl.5616:49|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |XUSbpl.5661:65|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |XUSbpl.6247:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |XUSbpl.6260:45|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |XUSbpl.6273:37|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |XUSbpl.6286:55|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |XUSbpl.6300:55|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |XUSbpl.6314:47|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |XUSbpl.6334:38|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |XUSbpl.6356:44|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |XUSbpl.6408:53|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |XUSbpl.6481:53|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |XUSbpl.6554:45|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |XUSbpl.6591:55|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |XUSbpl.6605:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |XUSbpl.6619:47|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |XUSbpl.6636:38|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |XUSbpl.6650:48|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |XUSbpl.6664:48|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |XUSbpl.6678:40|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |XUSbpl.6698:41|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@48)))
 :qid |XUSbpl.6714:53|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@49)))
 :qid |XUSbpl.6727:53|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@50)))
 :qid |XUSbpl.6740:45|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51))))
 :qid |XUSbpl.6756:60|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52))))
 :qid |XUSbpl.6773:60|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@53))))
 :qid |XUSbpl.6790:52|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53))
)))
(assert (forall ((s@@54 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54))))
 :qid |XUSbpl.6807:57|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55) true)
 :qid |XUSbpl.23920:68|
 :skolemid |845|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))))
 :qid |XUSbpl.23942:66|
 :skolemid |846|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))))
 :qid |XUSbpl.23968:66|
 :skolemid |847|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@58))))
 :qid |XUSbpl.23994:58|
 :skolemid |848|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |XUSbpl.24023:56|
 :skolemid |849|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |XUSbpl.24053:56|
 :skolemid |850|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@61))))
 :qid |XUSbpl.24083:48|
 :skolemid |851|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |XUSbpl.26144:31|
 :skolemid |957|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |XUSbpl.27263:31|
 :skolemid |1002|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |XUSbpl.27282:35|
 :skolemid |1003|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |XUSbpl.27691:45|
 :skolemid |1004|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |XUSbpl.27709:50|
 :skolemid |1005|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |XUSbpl.27725:52|
 :skolemid |1006|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |XUSbpl.27738:46|
 :skolemid |1007|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |XUSbpl.27761:38|
 :skolemid |1008|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |XUSbpl.27775:39|
 :skolemid |1009|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |XUSbpl.27802:65|
 :skolemid |1010|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@72))))
 :qid |XUSbpl.28170:60|
 :skolemid |1011|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73))))
 :qid |XUSbpl.28187:66|
 :skolemid |1012|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@74)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@74))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@74))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@74))))
 :qid |XUSbpl.28216:50|
 :skolemid |1013|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@75) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@75)))
 :qid |XUSbpl.28239:45|
 :skolemid |1014|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@76)) true))
 :qid |XUSbpl.28546:87|
 :skolemid |1015|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@77)))
 :qid |XUSbpl.28747:47|
 :skolemid |1016|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@78)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@78))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@78))))
 :qid |XUSbpl.28766:58|
 :skolemid |1017|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@79) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@79)))
 :qid |XUSbpl.28782:39|
 :skolemid |1018|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@80))))
 :qid |XUSbpl.28804:58|
 :skolemid |1019|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81))))
 :qid |XUSbpl.28821:58|
 :skolemid |1020|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82) true)
 :qid |XUSbpl.28836:51|
 :skolemid |1021|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82))
)))
(assert (forall ((s@@83 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83))))
 :qid |XUSbpl.28853:60|
 :skolemid |1022|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@84)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@84))))
 :qid |XUSbpl.29139:47|
 :skolemid |1023|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@85))))
 :qid |XUSbpl.29165:63|
 :skolemid |1024|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@86)))
 :qid |XUSbpl.29180:57|
 :skolemid |1025|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@87)))
 :qid |XUSbpl.29193:55|
 :skolemid |1026|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@88)))
 :qid |XUSbpl.29207:55|
 :skolemid |1027|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@89)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@89))))
 :qid |XUSbpl.29224:54|
 :skolemid |1028|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@90)))
 :qid |XUSbpl.29238:55|
 :skolemid |1029|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@91)))
 :qid |XUSbpl.29251:57|
 :skolemid |1030|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@92))))
 :qid |XUSbpl.29273:56|
 :skolemid |1031|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@93))))
 :qid |XUSbpl.29300:52|
 :skolemid |1032|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@94)))
 :qid |XUSbpl.29318:54|
 :skolemid |1033|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@95)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@95))))
 :qid |XUSbpl.30160:47|
 :skolemid |1034|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@96)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@96))))
 :qid |XUSbpl.30184:47|
 :skolemid |1035|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@97)))
 :qid |XUSbpl.30418:63|
 :skolemid |1036|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@98)))
 :qid |XUSbpl.30753:49|
 :skolemid |1037|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@99)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@99))))
 :qid |XUSbpl.30795:49|
 :skolemid |1038|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@100)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@100))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@100))))
 :qid |XUSbpl.30824:48|
 :skolemid |1039|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@101)))
 :qid |XUSbpl.31109:47|
 :skolemid |1040|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101))
)))
(assert (forall ((v@@29 T@Vec_133863) (i@@48 Int) ) (! (= (InRangeVec_117660 v@@29 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_133863| v@@29))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_117660 v@@29 i@@48))
)))
(assert (forall ((v@@30 T@Vec_131978) (i@@49 Int) ) (! (= (InRangeVec_117861 v@@30 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_131978| v@@30))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_117861 v@@30 i@@49))
)))
(assert (forall ((v@@31 T@Vec_132017) (i@@50 Int) ) (! (= (InRangeVec_118062 v@@31 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_132017| v@@31))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_118062 v@@31 i@@50))
)))
(assert (forall ((v@@32 T@Vec_132151) (i@@51 Int) ) (! (= (InRangeVec_118263 v@@32 i@@51)  (and (>= i@@51 0) (< i@@51 (|l#Vec_132151| v@@32))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_118263 v@@32 i@@51))
)))
(assert (forall ((v@@33 T@Vec_132496) (i@@52 Int) ) (! (= (InRangeVec_118464 v@@33 i@@52)  (and (>= i@@52 0) (< i@@52 (|l#Vec_132496| v@@33))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_118464 v@@33 i@@52))
)))
(assert (forall ((v@@34 T@Vec_132457) (i@@53 Int) ) (! (= (InRangeVec_118665 v@@34 i@@53)  (and (>= i@@53 0) (< i@@53 (|l#Vec_132457| v@@34))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_118665 v@@34 i@@53))
)))
(assert (forall ((v@@35 T@Vec_132418) (i@@54 Int) ) (! (= (InRangeVec_118866 v@@35 i@@54)  (and (>= i@@54 0) (< i@@54 (|l#Vec_132418| v@@35))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_118866 v@@35 i@@54))
)))
(assert (forall ((v@@36 T@Vec_132651) (i@@55 Int) ) (! (= (InRangeVec_119067 v@@36 i@@55)  (and (>= i@@55 0) (< i@@55 (|l#Vec_132651| v@@36))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_119067 v@@36 i@@55))
)))
(assert (forall ((v@@37 T@Vec_131939) (i@@56 Int) ) (! (= (InRangeVec_119268 v@@37 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_131939| v@@37))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_119268 v@@37 i@@56))
)))
(assert (forall ((v@@38 T@Vec_132208) (i@@57 Int) ) (! (= (InRangeVec_158161 v@@38 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_132208| v@@38))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158161 v@@38 i@@57))
)))
(assert (forall ((v@@39 T@Vec_23605) (i@@58 Int) ) (! (= (InRangeVec_14446 v@@39 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_23605| v@@39))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14446 v@@39 i@@58))
)))
(assert (forall ((v@@40 T@Vec_23605) (e@@11 Int) ) (! (let ((i@@59 (IndexOfVec_23605 v@@40 e@@11)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_14446 v@@40 i@@60) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) i@@60) e@@11))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_14446 v@@40 i@@59) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) i@@59) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@59)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) j@@11) e@@11)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_23605 v@@40 e@@11))
)))
(assert (forall ((v@@41 T@Vec_131939) (e@@12 T@$1_ValidatorConfig_Config) ) (! (let ((i@@61 (IndexOfVec_131939 v@@41 e@@12)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_119268 v@@41 i@@62) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@41) i@@62) e@@12))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_119268 v@@41 i@@61) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@41) i@@61) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@61)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@41) j@@12) e@@12)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_131939 v@@41 e@@12))
)))
(assert (forall ((v@@42 T@Vec_131978) (e@@13 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@63 (IndexOfVec_131978 v@@42 e@@13)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_117861 v@@42 i@@64) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@42) i@@64) e@@13))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_117861 v@@42 i@@63) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@42) i@@63) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@63)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@42) j@@13) e@@13)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_131978 v@@42 e@@13))
)))
(assert (forall ((v@@43 T@Vec_132017) (e@@14 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@65 (IndexOfVec_132017 v@@43 e@@14)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_118062 v@@43 i@@66) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@43) i@@66) e@@14))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_118062 v@@43 i@@65) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@43) i@@65) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@65)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@43) j@@14) e@@14)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132017 v@@43 e@@14))
)))
(assert (forall ((v@@44 T@Vec_132151) (e@@15 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@67 (IndexOfVec_132151 v@@44 e@@15)))
(ite  (not (exists ((i@@68 Int) ) (!  (and (InRangeVec_118263 v@@44 i@@68) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@44) i@@68) e@@15))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@67 (- 0 1))  (and (and (InRangeVec_118263 v@@44 i@@67) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@44) i@@67) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@67)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@44) j@@15) e@@15)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132151 v@@44 e@@15))
)))
(assert (forall ((v@@45 T@Vec_132208) (e@@16 T@Vec_23605) ) (! (let ((i@@69 (IndexOfVec_132208 v@@45 e@@16)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_158161 v@@45 i@@70) (= (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@45) i@@70) e@@16))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_158161 v@@45 i@@69) (= (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@45) i@@69) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@69)) (not (= (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@45) j@@16) e@@16)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132208 v@@45 e@@16))
)))
(assert (forall ((v@@46 T@Vec_132418) (e@@17 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@71 (IndexOfVec_132418 v@@46 e@@17)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_118866 v@@46 i@@72) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@46) i@@72) e@@17))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_118866 v@@46 i@@71) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@46) i@@71) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@71)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@46) j@@17) e@@17)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132418 v@@46 e@@17))
)))
(assert (forall ((v@@47 T@Vec_132457) (e@@18 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@73 (IndexOfVec_132457 v@@47 e@@18)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_118665 v@@47 i@@74) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@47) i@@74) e@@18))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_118665 v@@47 i@@73) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@47) i@@73) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@73)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@47) j@@18) e@@18)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132457 v@@47 e@@18))
)))
(assert (forall ((v@@48 T@Vec_132496) (e@@19 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@75 (IndexOfVec_132496 v@@48 e@@19)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_118464 v@@48 i@@76) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@48) i@@76) e@@19))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_118464 v@@48 i@@75) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@48) i@@75) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@75)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@48) j@@19) e@@19)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132496 v@@48 e@@19))
)))
(assert (forall ((v@@49 T@Vec_132651) (e@@20 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@77 (IndexOfVec_132651 v@@49 e@@20)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_119067 v@@49 i@@78) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@49) i@@78) e@@20))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_119067 v@@49 i@@77) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@49) i@@77) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@77)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@49) j@@20) e@@20)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132651 v@@49 e@@20))
)))
(assert (forall ((v@@50 T@Vec_133863) (e@@21 |T@#0|) ) (! (let ((i@@79 (IndexOfVec_133863 v@@50 e@@21)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_117660 v@@50 i@@80) (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@50) i@@80) e@@21))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_117660 v@@50 i@@79) (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@50) i@@79) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@79)) (not (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@50) j@@21) e@@21)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_133863 v@@50 e@@21))
)))
(assert (forall ((|l#0| Bool) (i@@81 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81) |l#0|)
 :qid |XUSbpl.275:54|
 :skolemid |1131|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_131853|) (|l#1| |T@[$1_Event_EventHandle]Multiset_131853|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| |l#1| handle@@0))))
(Multiset_131853 (|lambda#36| (|v#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| |l#0@@0| handle@@0)) (|v#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XUSbpl.2959:13|
 :skolemid |1132|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@82 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82) (ite  (and (>= i@@82 |l#0@@1|) (< i@@82 |l#1@@0|)) (ite (< i@@82 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@82) (|Select__T@[Int]#0_| |l#4| (- i@@82 |l#5|))) |l#6|))
 :qid |XUSbpl.73:19|
 :skolemid |1133|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@83 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83) (ite  (and (<= |l#0@@2| i@@83) (< i@@83 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@83) |l#4@@0|)) |l#5@@0|))
 :qid |XUSbpl.82:30|
 :skolemid |1134|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@22 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22) (ite  (and (>= j@@22 |l#0@@3|) (< j@@22 |l#1@@2|)) (ite (< j@@22 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@22) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@22 |l#5@@1|))) |l#6@@0|))
 :qid |XUSbpl.63:20|
 :skolemid |1135|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@84 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84) (ite  (and (>= i@@84 |l#0@@4|) (< i@@84 |l#1@@3|)) (ite (< i@@84 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@84) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@84 |l#5@@2|))) |l#6@@1|))
 :qid |XUSbpl.73:19|
 :skolemid |1136|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@85 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85) (ite  (and (<= |l#0@@5| i@@85) (< i@@85 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@85) |l#4@@3|)) |l#5@@3|))
 :qid |XUSbpl.82:30|
 :skolemid |1137|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23) (ite  (and (>= j@@23 |l#0@@6|) (< j@@23 |l#1@@5|)) (ite (< j@@23 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@23) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@23 |l#5@@4|))) |l#6@@2|))
 :qid |XUSbpl.63:20|
 :skolemid |1138|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@86 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86) (ite  (and (>= i@@86 |l#0@@7|) (< i@@86 |l#1@@6|)) (ite (< i@@86 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@86) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@86 |l#5@@5|))) |l#6@@3|))
 :qid |XUSbpl.73:19|
 :skolemid |1139|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@87 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87) (ite  (and (<= |l#0@@8| i@@87) (< i@@87 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@87) |l#4@@6|)) |l#5@@6|))
 :qid |XUSbpl.82:30|
 :skolemid |1140|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24) (ite  (and (>= j@@24 |l#0@@9|) (< j@@24 |l#1@@8|)) (ite (< j@@24 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@24) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@24 |l#5@@7|))) |l#6@@4|))
 :qid |XUSbpl.63:20|
 :skolemid |1141|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@88 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88) (ite  (and (>= i@@88 |l#0@@10|) (< i@@88 |l#1@@9|)) (ite (< i@@88 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@88) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@88 |l#5@@8|))) |l#6@@5|))
 :qid |XUSbpl.73:19|
 :skolemid |1142|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@89 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89) (ite  (and (<= |l#0@@11| i@@89) (< i@@89 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@89) |l#4@@9|)) |l#5@@9|))
 :qid |XUSbpl.82:30|
 :skolemid |1143|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@25 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25) (ite  (and (>= j@@25 |l#0@@12|) (< j@@25 |l#1@@11|)) (ite (< j@@25 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@25) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@25 |l#5@@10|))) |l#6@@6|))
 :qid |XUSbpl.63:20|
 :skolemid |1144|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@90 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90) (ite  (and (>= i@@90 |l#0@@13|) (< i@@90 |l#1@@12|)) (ite (< i@@90 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@90) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@90 |l#5@@11|))) |l#6@@7|))
 :qid |XUSbpl.73:19|
 :skolemid |1145|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@91 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91) (ite  (and (<= |l#0@@14| i@@91) (< i@@91 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@91) |l#4@@12|)) |l#5@@12|))
 :qid |XUSbpl.82:30|
 :skolemid |1146|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@26 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26) (ite  (and (>= j@@26 |l#0@@15|) (< j@@26 |l#1@@14|)) (ite (< j@@26 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@26) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@26 |l#5@@13|))) |l#6@@8|))
 :qid |XUSbpl.63:20|
 :skolemid |1147|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@92 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92) (ite  (and (>= i@@92 |l#0@@16|) (< i@@92 |l#1@@15|)) (ite (< i@@92 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@92) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@92 |l#5@@14|))) |l#6@@9|))
 :qid |XUSbpl.73:19|
 :skolemid |1148|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@93 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93) (ite  (and (<= |l#0@@17| i@@93) (< i@@93 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@93) |l#4@@15|)) |l#5@@15|))
 :qid |XUSbpl.82:30|
 :skolemid |1149|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27) (ite  (and (>= j@@27 |l#0@@18|) (< j@@27 |l#1@@17|)) (ite (< j@@27 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@27) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@27 |l#5@@16|))) |l#6@@10|))
 :qid |XUSbpl.63:20|
 :skolemid |1150|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@94 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94) (ite  (and (>= i@@94 |l#0@@19|) (< i@@94 |l#1@@18|)) (ite (< i@@94 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@94) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@94 |l#5@@17|))) |l#6@@11|))
 :qid |XUSbpl.73:19|
 :skolemid |1151|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@95 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95) (ite  (and (<= |l#0@@20| i@@95) (< i@@95 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@95) |l#4@@18|)) |l#5@@18|))
 :qid |XUSbpl.82:30|
 :skolemid |1152|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28) (ite  (and (>= j@@28 |l#0@@21|) (< j@@28 |l#1@@20|)) (ite (< j@@28 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@28) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@28 |l#5@@19|))) |l#6@@12|))
 :qid |XUSbpl.63:20|
 :skolemid |1153|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@96 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96) (ite  (and (>= i@@96 |l#0@@22|) (< i@@96 |l#1@@21|)) (ite (< i@@96 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@96) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@96 |l#5@@20|))) |l#6@@13|))
 :qid |XUSbpl.73:19|
 :skolemid |1154|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@97 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97) (ite  (and (<= |l#0@@23| i@@97) (< i@@97 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@97) |l#4@@21|)) |l#5@@21|))
 :qid |XUSbpl.82:30|
 :skolemid |1155|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29) (ite  (and (>= j@@29 |l#0@@24|) (< j@@29 |l#1@@23|)) (ite (< j@@29 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@29) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@29 |l#5@@22|))) |l#6@@14|))
 :qid |XUSbpl.63:20|
 :skolemid |1156|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98) (ite  (and (>= i@@98 |l#0@@25|) (< i@@98 |l#1@@24|)) (ite (< i@@98 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@98) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@98 |l#5@@23|))) |l#6@@15|))
 :qid |XUSbpl.73:19|
 :skolemid |1157|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99) (ite  (and (<= |l#0@@26| i@@99) (< i@@99 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@99) |l#4@@24|)) |l#5@@24|))
 :qid |XUSbpl.82:30|
 :skolemid |1158|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30) (ite  (and (>= j@@30 |l#0@@27|) (< j@@30 |l#1@@26|)) (ite (< j@@30 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@30) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@30 |l#5@@25|))) |l#6@@16|))
 :qid |XUSbpl.63:20|
 :skolemid |1159|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]Vec_23605|) (|l#4@@26| |T@[Int]Vec_23605|) (|l#5@@26| Int) (|l#6@@17| T@Vec_23605) (i@@100 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100) (ite  (and (>= i@@100 |l#0@@28|) (< i@@100 |l#1@@27|)) (ite (< i@@100 |l#2@@26|) (|Select__T@[Int]Vec_23605_| |l#3@@26| i@@100) (|Select__T@[Int]Vec_23605_| |l#4@@26| (- i@@100 |l#5@@26|))) |l#6@@17|))
 :qid |XUSbpl.73:19|
 :skolemid |1160|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]Vec_23605|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@Vec_23605) (i@@101 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101) (ite  (and (<= |l#0@@29| i@@101) (< i@@101 |l#1@@28|)) (|Select__T@[Int]Vec_23605_| |l#2@@27| (- (- |l#3@@27| i@@101) |l#4@@27|)) |l#5@@27|))
 :qid |XUSbpl.82:30|
 :skolemid |1161|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]Vec_23605|) (|l#4@@28| |T@[Int]Vec_23605|) (|l#5@@28| Int) (|l#6@@18| T@Vec_23605) (j@@31 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31) (ite  (and (>= j@@31 |l#0@@30|) (< j@@31 |l#1@@29|)) (ite (< j@@31 |l#2@@28|) (|Select__T@[Int]Vec_23605_| |l#3@@28| j@@31) (|Select__T@[Int]Vec_23605_| |l#4@@28| (+ j@@31 |l#5@@28|))) |l#6@@18|))
 :qid |XUSbpl.63:20|
 :skolemid |1162|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]Int|) (|l#4@@29| |T@[Int]Int|) (|l#5@@29| Int) (|l#6@@19| Int) (i@@102 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102) (ite  (and (>= i@@102 |l#0@@31|) (< i@@102 |l#1@@30|)) (ite (< i@@102 |l#2@@29|) (|Select__T@[Int]Int_| |l#3@@29| i@@102) (|Select__T@[Int]Int_| |l#4@@29| (- i@@102 |l#5@@29|))) |l#6@@19|))
 :qid |XUSbpl.73:19|
 :skolemid |1163|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]Int|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| Int) (i@@103 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103) (ite  (and (<= |l#0@@32| i@@103) (< i@@103 |l#1@@31|)) (|Select__T@[Int]Int_| |l#2@@30| (- (- |l#3@@30| i@@103) |l#4@@30|)) |l#5@@30|))
 :qid |XUSbpl.82:30|
 :skolemid |1164|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]Int|) (|l#4@@31| |T@[Int]Int|) (|l#5@@31| Int) (|l#6@@20| Int) (j@@32 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32) (ite  (and (>= j@@32 |l#0@@33|) (< j@@32 |l#1@@32|)) (ite (< j@@32 |l#2@@31|) (|Select__T@[Int]Int_| |l#3@@31| j@@32) (|Select__T@[Int]Int_| |l#4@@31| (+ j@@32 |l#5@@31|))) |l#6@@20|))
 :qid |XUSbpl.63:20|
 :skolemid |1165|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32))
)))
(assert (forall ((|l#0@@34| |T@[$EventRep]Int|) (|l#1@@33| |T@[$EventRep]Int|) (v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51) (- (|Select__T@[$EventRep]Int_| |l#0@@34| v@@51) (|Select__T@[$EventRep]Int_| |l#1@@33| v@@51)))
 :qid |XUSbpl.154:29|
 :skolemid |1166|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_172983)
(declare-fun $t3 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_184229)
(declare-fun $t8@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t9 () Bool)
(declare-fun $t8 () Int)
(declare-fun $t7 () Bool)
(declare-fun $t6 () Int)
(declare-fun $t11@2 () T@$Mutation_192379)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_184229)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int |T@$1_Diem_CurrencyInfo'#0'|) |T@[Int]$1_Diem_CurrencyInfo'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_184793)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_191074)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun _$t1 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_185247)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_191558)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t4 () T@$1_Event_EventHandle)
(declare-fun $t5 () T@$1_Diem_ToXDXExchangeRateUpdateEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_131853_| (|T@[$1_Event_EventHandle]Multiset_131853| T@$1_Event_EventHandle T@Multiset_131853) |T@[$1_Event_EventHandle]Multiset_131853|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_131853|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_131853)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|Store__T@[$1_Event_EventHandle]Multiset_131853_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_131853|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_131853)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|Store__T@[$1_Event_EventHandle]Multiset_131853_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_131853_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Event_emit_event'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t13@0 () T@$Mutation_165569)
(declare-fun $t17@0 () T@$1_Diem_ToXDXExchangeRateUpdateEvent)
(declare-fun $t14@0 () T@Vec_23605)
(declare-fun inline$$1_FixedPoint32_get_raw_value$0$$t1@1 () Int)
(declare-fun $t15@0 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun |$temp_0'$1_Diem_CurrencyInfo'#0''@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t11@1 () T@$Mutation_192379)
(declare-fun $t12@0 () T@$Mutation_268527)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t12@1 () T@$Mutation_268527)
(declare-fun $t11 () T@$Mutation_192379)
(declare-fun $t11@0 () T@$Mutation_192379)
(declare-fun MapConstVec_14675 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_14675 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_172301)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_177034)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_177677)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_173349)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_243632)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_243919)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_244019)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_244104)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_244191)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_244251)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_244336)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_173170)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_244591)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_244691)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $t2 () T@$Mutation_192379)
(declare-fun $t12 () T@$Mutation_268527)
(declare-fun $t13 () T@$Mutation_165569)
(push 1)
(set-info :boogie-vc-id $1_Diem_update_xdx_exchange_rate$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 525574) (let ((L2_correct  (and (=> (= (ControlFlow 0 392171) (- 0 527750)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) $t3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) $t3)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) $t3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) $t3)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 392171) (- 0 527790)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) $t3)) (= 5 $t8@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) $t3)) 1)) (= 3 $t8@0))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t8@0))))))))
(let ((anon20_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t8@0 $abort_code@1) (= (ControlFlow 0 392043) 392171))) L2_correct)))
(let ((anon19_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t8@0 $abort_code@1) (= (ControlFlow 0 392185) 392171))) L2_correct)))
(let ((anon18_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t8@0 $abort_code@1) (= (ControlFlow 0 392199) 392171))) L2_correct)))
(let ((anon16_Then_correct  (=> $t9 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t8)) (= $t8 $t8)) (and (= $t8@0 $t8) (= (ControlFlow 0 392277) 392171))) L2_correct))))
(let ((anon15_Then_correct  (=> $t7 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) $t6)) (= 5 $t8)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t8))) (and (not (= (|$addr#$signer| _$t0) 186537453)) (= 2 $t8))) (= $t8 $t8)) (and (= $t8@0 $t8) (= (ControlFlow 0 392349) 392171))) L2_correct))))
(let ((anon20_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 392029) (- 0 527133)) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@2))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@2)) 10000000000))) (=> (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@2))) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@2)) 10000000000)) (=> (= |$1_Diem_CurrencyInfo'#0'_$memory@0| ($Memory_184229 (|Store__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) (|a#$Global| (|l#$Mutation_192379| $t11@2)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) (|a#$Global| (|l#$Mutation_192379| $t11@2)) (|v#$Mutation_192379| $t11@2)))) (and (=> (= (ControlFlow 0 392029) (- 0 527181)) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)))) (forall ((mint_cap_owner1 Int) (mint_cap_owner2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1) (=> (|$IsValid'address'| mint_cap_owner2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1) (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2)) (= mint_cap_owner1 mint_cap_owner2))))
 :qid |XUSbpl.22576:83|
 :skolemid |753|
)))) (=> (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)))) (forall ((mint_cap_owner1@@0 Int) (mint_cap_owner2@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@0) (=> (|$IsValid'address'| mint_cap_owner2@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2@@0)) (= mint_cap_owner1@@0 mint_cap_owner2@@0))))
 :qid |XUSbpl.22576:83|
 :skolemid |753|
))) (and (=> (= (ControlFlow 0 392029) (- 0 527226)) (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816))))))
 :qid |XUSbpl.22582:15|
 :skolemid |754|
))) (=> (forall ((addr3@@0 Int) ) (!  (=> (|$IsValid'address'| addr3@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr3@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816))))))
 :qid |XUSbpl.22582:15|
 :skolemid |754|
)) (and (=> (= (ControlFlow 0 392029) (- 0 527249)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_191074| |$1_Diem_Preburn'#0'_$memory|) addr) (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)))
 :qid |XUSbpl.22588:15|
 :skolemid |755|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_191074| |$1_Diem_Preburn'#0'_$memory|) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)))
 :qid |XUSbpl.22588:15|
 :skolemid |755|
)) (and (=> (= (ControlFlow 0 392029) (- 0 527272)) (forall ((dr_addr Int) ) (!  (=> (|$IsValid'address'| dr_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) dr_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) dr_addr)))
 :qid |XUSbpl.22594:15|
 :skolemid |756|
))) (=> (forall ((dr_addr@@0 Int) ) (!  (=> (|$IsValid'address'| dr_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) dr_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) dr_addr@@0)))
 :qid |XUSbpl.22594:15|
 :skolemid |756|
)) (and (=> (= (ControlFlow 0 392029) (- 0 527296)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and ($1_Signer_is_txn_signer_addr a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) a) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) a)) 1))))
 :qid |XUSbpl.4772:13|
 :skolemid |143|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a@@0 Int) ) (!  (and (|$IsValid'address'| a@@0) (and ($1_Signer_is_txn_signer_addr a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) a@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) a@@0)) 1))))
 :qid |XUSbpl.4772:13|
 :skolemid |143|
)))) (and (=> (= (ControlFlow 0 392029) (- 0 527320)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a@@1 Int) ) (!  (and (|$IsValid'address'| a@@1) (and ($1_Signer_is_txn_signer_addr a@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) a@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) a@@1)) 1))))
 :qid |XUSbpl.4772:13|
 :skolemid |143|
))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (not (= (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (exists ((a@@2 Int) ) (!  (and (|$IsValid'address'| a@@2) (and ($1_Signer_is_txn_signer_addr a@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) a@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) a@@2)) 1))))
 :qid |XUSbpl.4772:13|
 :skolemid |143|
)))) (and (=> (= (ControlFlow 0 392029) (- 0 527344)) (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (exists ((a@@3 Int) ) (!  (and (|$IsValid'address'| a@@3) (and ($1_Signer_is_txn_signer_addr a@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) a@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) a@@3)) 0))))
 :qid |XUSbpl.4777:13|
 :skolemid |144|
)))) (=> (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (exists ((a@@4 Int) ) (!  (and (|$IsValid'address'| a@@4) (and ($1_Signer_is_txn_signer_addr a@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) a@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) a@@4)) 0))))
 :qid |XUSbpl.4777:13|
 :skolemid |144|
))) (and (=> (= (ControlFlow 0 392029) (- 0 527366)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) $t3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) $t3))) (and (=> (= (ControlFlow 0 392029) (- 0 527378)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) $t3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) $t3)) 1))) (and (=> (= (ControlFlow 0 392029) (- 0 527396)) (not (not (= (|$addr#$signer| _$t0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0) 186537453))) (and (=> (= (ControlFlow 0 392029) (- 0 527410)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 392029) (- 0 527420)) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) _$t1)) (=> (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) _$t1) (and (=> (= (ControlFlow 0 392029) (- 0 527431)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 392029) (- 0 527451)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr@@1))))
 :qid |XUSbpl.22651:15|
 :skolemid |757|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr@@2))))
 :qid |XUSbpl.22651:15|
 :skolemid |757|
)) (and (=> (= (ControlFlow 0 392029) (- 0 527480)) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr@@3)))
 :qid |XUSbpl.22656:15|
 :skolemid |758|
))) (=> (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr@@4)))
 :qid |XUSbpl.22656:15|
 :skolemid |758|
)) (and (=> (= (ControlFlow 0 392029) (- 0 527505)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 392029) (- 0 527525)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_185247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_185247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@5))))
 :qid |XUSbpl.22666:15|
 :skolemid |759|
))) (=> (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_185247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@6)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_185247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@6))))
 :qid |XUSbpl.22666:15|
 :skolemid |759|
)) (and (=> (= (ControlFlow 0 392029) (- 0 527554)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_185247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_185247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@7)))
 :qid |XUSbpl.22671:15|
 :skolemid |760|
))) (=> (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_185247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_185247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@8)))
 :qid |XUSbpl.22671:15|
 :skolemid |760|
)) (and (=> (= (ControlFlow 0 392029) (- 0 527579)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 392029) (- 0 527599)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory@0|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 392029) (- 0 527619)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_191558| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_191074| |$1_Diem_Preburn'#0'_$memory|) addr@@9))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_191558| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@9))))
 :qid |XUSbpl.22686:15|
 :skolemid |761|
))) (=> (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_191558| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_191074| |$1_Diem_Preburn'#0'_$memory|) addr@@10))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_191558| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@10))))
 :qid |XUSbpl.22686:15|
 :skolemid |761|
)) (and (=> (= (ControlFlow 0 392029) (- 0 527655)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_191558| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_191558| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@11)))
 :qid |XUSbpl.22691:15|
 :skolemid |762|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_191558| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_191558| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@12)))
 :qid |XUSbpl.22691:15|
 :skolemid |762|
)) (and (=> (= (ControlFlow 0 392029) (- 0 527680)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $EmptyEventStore) $t4)))
(let ((stream_new (let ((len (|l#Multiset_131853| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| stream@@0) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| $t5))))
(Multiset_131853 (|Store__T@[$EventRep]Int_| (|v#Multiset_131853| stream@@0) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| $t5) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $EmptyEventStore) $t4 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@52 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| expected) handle@@1)) v@@52) (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| actual) handle@@1)) v@@52))
 :qid |XUSbpl.164:13|
 :skolemid |5|
)))
 :qid |XUSbpl.2965:13|
 :skolemid |106|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $EmptyEventStore) $t4)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_131853| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| stream@@1) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| $t5))))
(Multiset_131853 (|Store__T@[$EventRep]Int_| (|v#Multiset_131853| stream@@1) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| $t5) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $EmptyEventStore) $t4 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@53 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| expected@@0) handle@@2)) v@@53) (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| actual@@0) handle@@2)) v@@53))
 :qid |XUSbpl.164:13|
 :skolemid |5|
)))
 :qid |XUSbpl.2965:13|
 :skolemid |106|
))))) (=> (= (ControlFlow 0 392029) (- 0 527705)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $EmptyEventStore) $t4)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_131853| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| stream@@2) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| $t5))))
(Multiset_131853 (|Store__T@[$EventRep]Int_| (|v#Multiset_131853| stream@@2) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| $t5) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $EmptyEventStore) $t4 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@54 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| actual@@1) handle@@3)) v@@54) (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| expected@@1) handle@@3)) v@@54))
 :qid |XUSbpl.164:13|
 :skolemid |5|
)))
 :qid |XUSbpl.2965:13|
 :skolemid |106|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((|inline$$1_Event_emit_event'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$handle@1| (|v#$Mutation_165569| $t13@0)) (= $es@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_131853| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| stream@@3) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| $t17@0))))
(Multiset_131853 (|Store__T@[$EventRep]Int_| (|v#Multiset_131853| stream@@3) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| $t17@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 391403) 392043) anon20_Then_correct) (=> (= (ControlFlow 0 391403) 392029) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t17@0 ($1_Diem_ToXDXExchangeRateUpdateEvent $t14@0 inline$$1_FixedPoint32_get_raw_value$0$$t1@1)) (= (ControlFlow 0 391409) 391403)) |inline$$1_Event_emit_event'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|))))
(let ((inline$$1_FixedPoint32_get_raw_value$0$anon0_correct  (=> (= $t15@0 $t15@0) (=> (and (= inline$$1_FixedPoint32_get_raw_value$0$$t1@1 (|$value#$1_FixedPoint32_FixedPoint32| $t15@0)) (= inline$$1_FixedPoint32_get_raw_value$0$$t1@1 inline$$1_FixedPoint32_get_raw_value$0$$t1@1)) (and (=> (= (ControlFlow 0 391310) 392185) anon19_Then_correct) (=> (= (ControlFlow 0 391310) 391409) anon19_Else_correct))))))
(let ((anon18_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_Diem_CurrencyInfo'#0''@0| (|v#$Mutation_192379| $t11@1))) (=> (and (and (and (= |$temp_0'$1_Diem_CurrencyInfo'#0''@0| |$temp_0'$1_Diem_CurrencyInfo'#0''@0|) (= $t12@0 ($Mutation_268527 (|l#$Mutation_192379| $t11@1) (let ((l (|l#Vec_23605| (|p#$Mutation_192379| $t11@1))))
(Vec_23605 (|Store__T@[Int]Int_| (|v#Vec_23605| (|p#$Mutation_192379| $t11@1)) l 2) (+ l 1))) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1))))) (and (= $t12@1 ($Mutation_268527 (|l#$Mutation_268527| $t12@0) (|p#$Mutation_268527| $t12@0) _$t1)) (= $t11@2 ($Mutation_192379 (|l#$Mutation_192379| $t11@1) (|p#$Mutation_192379| $t11@1) (|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|v#$Mutation_268527| $t12@1) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|$mint_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|$burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@1))))))) (and (and (= $t13@0 ($Mutation_165569 (|l#$Mutation_192379| $t11@2) (let ((l@@0 (|l#Vec_23605| (|p#$Mutation_192379| $t11@2))))
(Vec_23605 (|Store__T@[Int]Int_| (|v#Vec_23605| (|p#$Mutation_192379| $t11@2)) l@@0 12) (+ l@@0 1))) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@2)))) (= $t14@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@2)))) (and (= $t15@0 (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|v#$Mutation_192379| $t11@2))) (= (ControlFlow 0 391316) 391310)))) inline$$1_FixedPoint32_get_raw_value$0$anon0_correct))))
(let ((anon17_Then$1_correct  (=> (= $t11@1 $t11) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 392251) 392199) anon18_Then_correct) (=> (= (ControlFlow 0 392251) 391316) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= (ControlFlow 0 392249) 392251)) anon17_Then$1_correct)))
(let ((anon17_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (and (and (= $t11@0 ($Mutation_192379 ($Global 173345816) (Vec_23605 (MapConstVec_14675 DefaultVecElem_14675) 0) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t11@1 $t11@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 391135) 392199) anon18_Then_correct) (=> (= (ControlFlow 0 391135) 391316) anon18_Else_correct))))))
(let ((anon16_Else_correct  (=> (and (not $t9) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 391113) 392249) anon17_Then_correct) (=> (= (ControlFlow 0 391113) 391135) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not $t7) (= $t9  (not (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 391099) 392277) anon16_Then_correct) (=> (= (ControlFlow 0 391099) 391113) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@13)) 0)) (= addr@@13 173345816)))
 :qid |XUSbpl.22257:20|
 :skolemid |722|
)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172301| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@14)) 1)) (= addr@@14 186537453)))
 :qid |XUSbpl.22265:20|
 :skolemid |723|
))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172301| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@15)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@15)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@15)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@15)) 2))))))
 :qid |XUSbpl.22273:20|
 :skolemid |724|
))) (and (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@16)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@16)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@16)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@16)) 2))))))
 :qid |XUSbpl.22277:20|
 :skolemid |725|
)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@17)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@17)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@17)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@17)) 2))))))
 :qid |XUSbpl.22281:20|
 :skolemid |726|
)))) (=> (and (and (and (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@18)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@18)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@18)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@18)) 2))))))
 :qid |XUSbpl.22285:20|
 :skolemid |727|
)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@19)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@19)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@19)) 2)))))
 :qid |XUSbpl.22289:20|
 :skolemid |728|
))) (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@20)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@20)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@20)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@20)) 2)))))
 :qid |XUSbpl.22293:20|
 :skolemid |729|
)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@21)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@21)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@21)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@21)) 2)))))
 :qid |XUSbpl.22297:20|
 :skolemid |730|
)))) (and (and (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177034| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@22) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@22)) 4))))
 :qid |XUSbpl.22301:20|
 :skolemid |731|
)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177677| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@23) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@23)) 3))))
 :qid |XUSbpl.22305:20|
 :skolemid |732|
))) (and (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177677| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@24) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@24)) 3))))
 :qid |XUSbpl.22309:20|
 :skolemid |733|
)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_177677| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@25) (not (= (|l#Vec_131939| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177677| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@25)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@25)) 3))))
 :qid |XUSbpl.22313:20|
 :skolemid |734|
))))) (=> (and (and (and (and (and (let (($range_0 ($Range 0 (|l#Vec_132151| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@26 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173349| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@26))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@27 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173349| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@27))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@27 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173349| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@27))))) i1)))) 3))))
 :qid |XUSbpl.22317:151|
 :skolemid |735|
))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (forall ((mint_cap_owner1@@1 Int) (mint_cap_owner2@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner1@@1) (=> (|$IsValid'address'| mint_cap_owner2@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner2@@1)) (= mint_cap_owner1@@1 mint_cap_owner2@@1))))
 :qid |XUSbpl.22322:88|
 :skolemid |736|
)))) (and (forall ((addr3@@1 Int) ) (!  (=> (|$IsValid'address'| addr3@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_184793| |$1_Diem_MintCapability'#0'_$memory|) addr3@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))
 :qid |XUSbpl.22326:20|
 :skolemid |737|
)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_191074| |$1_Diem_Preburn'#0'_$memory|) addr@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |XUSbpl.22330:20|
 :skolemid |738|
)))) (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_243632| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |XUSbpl.22334:20|
 :skolemid |739|
)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (= (|Select__T@[Int]Bool_| (|domain#$Memory_243919| $1_DiemAccount_DiemAccount_$memory) addr@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@29)))
 :qid |XUSbpl.22338:20|
 :skolemid |740|
))) (and (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (= (|Select__T@[Int]Bool_| (|domain#$Memory_244019| $1_VASPDomain_VASPDomainManager_$memory) addr@@30)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@30)) 1))))
 :qid |XUSbpl.22342:20|
 :skolemid |741|
)) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (= (|Select__T@[Int]Bool_| (|domain#$Memory_244104| $1_VASPDomain_VASPDomains_$memory) addr@@31)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@31)) 5))))
 :qid |XUSbpl.22346:20|
 :skolemid |742|
))))) (and (and (and (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_244191| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@32) (|Select__T@[Int]Bool_| (|domain#$Memory_244251| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@32)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@32)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@32)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@32)) 2)))))
 :qid |XUSbpl.22350:20|
 :skolemid |743|
)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (= (|Select__T@[Int]Bool_| (|domain#$Memory_244336| $1_DesignatedDealer_Dealer_$memory) addr@@33)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@33)) 2))))
 :qid |XUSbpl.22354:20|
 :skolemid |744|
))) (and (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (= (|Select__T@[Int]Bool_| (|domain#$Memory_243632| $1_DualAttestation_Credential_$memory) addr@@34)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@34)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@34)) 5)))))
 :qid |XUSbpl.22358:20|
 :skolemid |745|
)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (= (|Select__T@[Int]Bool_| (|domain#$Memory_173170| $1_SlidingNonce_SlidingNonce_$memory) addr@@35)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@35)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@35)) 1)))))
 :qid |XUSbpl.22362:20|
 :skolemid |746|
)))) (and (and (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (= (|Select__T@[Int]Bool_| (|domain#$Memory_177677| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@36)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@36)) 3))))
 :qid |XUSbpl.22366:20|
 :skolemid |747|
)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (= (|Select__T@[Int]Bool_| (|domain#$Memory_177034| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@37)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@37)) 4))))
 :qid |XUSbpl.22370:20|
 :skolemid |748|
))) (and (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (= (|Select__T@[Int]Bool_| (|domain#$Memory_244591| $1_VASP_ParentVASP_$memory) addr@@38)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@38)) 5))))
 :qid |XUSbpl.22374:20|
 :skolemid |749|
)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (= (|Select__T@[Int]Bool_| (|domain#$Memory_244691| $1_VASP_ChildVASP_$memory) addr@@39)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) addr@@39)) 6))))
 :qid |XUSbpl.22378:20|
 :skolemid |750|
)))))) (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'$1_FixedPoint32_FixedPoint32'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |XUSbpl.22387:20|
 :skolemid |751|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) $a_0))
)))) (and (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@0) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0) 10000000000))))
 :qid |XUSbpl.22391:20|
 :skolemid |752|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0))
)) (= $t3 (|$addr#$signer| _$t0))) (and (= $t4 (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t5 ($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_184229| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$value#$1_FixedPoint32_FixedPoint32| _$t1))))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t6 (|$addr#$signer| _$t0)) (= $t7  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172983| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172983| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t0) 186537453))))))))) (and (=> (= (ControlFlow 0 391081) 392349) anon15_Then_correct) (=> (= (ControlFlow 0 391081) 391099) anon15_Else_correct)))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_131853| stream@@4) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| stream@@4) v@@55) 0)
 :qid |XUSbpl.159:13|
 :skolemid |4|
))))
 :qid |XUSbpl.2949:13|
 :skolemid |105|
))) (= (ControlFlow 0 390094) 391081)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (|l#Vec_23605| (|p#$Mutation_192379| $t2)) 0) (=> (and (and (= (|l#Vec_23605| (|p#$Mutation_192379| $t11)) 0) (= (|l#Vec_23605| (|p#$Mutation_268527| $t12)) 0)) (and (= (|l#Vec_23605| (|p#$Mutation_165569| $t13)) 0) (= (ControlFlow 0 390104) 390094))) inline$$InitEventStore$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 525574) 390104) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_164938 0)) ((($Memory_164938 (|domain#$Memory_164938| |T@[Int]Bool|) (|contents#$Memory_164938| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_133863 0)) (((Vec_133863 (|v#Vec_133863| |T@[Int]#0|) (|l#Vec_133863| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_174692 0)) ((($Memory_174692 (|domain#$Memory_174692| |T@[Int]Bool|) (|contents#$Memory_174692| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_174621 0)) ((($Memory_174621 (|domain#$Memory_174621| |T@[Int]Bool|) (|contents#$Memory_174621| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_174378 0)) ((($Memory_174378 (|domain#$Memory_174378| |T@[Int]Bool|) (|contents#$Memory_174378| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_174307 0)) ((($Memory_174307 (|domain#$Memory_174307| |T@[Int]Bool|) (|contents#$Memory_174307| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_174236 0)) ((($Memory_174236 (|domain#$Memory_174236| |T@[Int]Bool|) (|contents#$Memory_174236| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_244336 0)) ((($Memory_244336 (|domain#$Memory_244336| |T@[Int]Bool|) (|contents#$Memory_244336| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_174068 0)) ((($Memory_174068 (|domain#$Memory_174068| |T@[Int]Bool|) (|contents#$Memory_174068| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_244591 0)) ((($Memory_244591 (|domain#$Memory_244591| |T@[Int]Bool|) (|contents#$Memory_244591| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_244691 0)) ((($Memory_244691 (|domain#$Memory_244691| |T@[Int]Bool|) (|contents#$Memory_244691| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_244019 0)) ((($Memory_244019 (|domain#$Memory_244019| |T@[Int]Bool|) (|contents#$Memory_244019| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_281036 0)) ((($Memory_281036 (|domain#$Memory_281036| |T@[Int]Bool|) (|contents#$Memory_281036| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_280749 0)) ((($Memory_280749 (|domain#$Memory_280749| |T@[Int]Bool|) (|contents#$Memory_280749| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_280462 0)) ((($Memory_280462 (|domain#$Memory_280462| |T@[Int]Bool|) (|contents#$Memory_280462| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_280175 0)) ((($Memory_280175 (|domain#$Memory_280175| |T@[Int]Bool|) (|contents#$Memory_280175| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173900 0)) ((($Memory_173900 (|domain#$Memory_173900| |T@[Int]Bool|) (|contents#$Memory_173900| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173661 0)) ((($Memory_173661 (|domain#$Memory_173661| |T@[Int]Bool|) (|contents#$Memory_173661| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_174550 0)) ((($Memory_174550 (|domain#$Memory_174550| |T@[Int]Bool|) (|contents#$Memory_174550| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_184793 0)) ((($Memory_184793 (|domain#$Memory_184793| |T@[Int]Bool|) (|contents#$Memory_184793| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_184729 0)) ((($Memory_184729 (|domain#$Memory_184729| |T@[Int]Bool|) (|contents#$Memory_184729| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_184665 0)) ((($Memory_184665 (|domain#$Memory_184665| |T@[Int]Bool|) (|contents#$Memory_184665| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_185247 0)) ((($Memory_185247 (|domain#$Memory_185247| |T@[Int]Bool|) (|contents#$Memory_185247| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_185160 0)) ((($Memory_185160 (|domain#$Memory_185160| |T@[Int]Bool|) (|contents#$Memory_185160| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_185073 0)) ((($Memory_185073 (|domain#$Memory_185073| |T@[Int]Bool|) (|contents#$Memory_185073| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_191074 0)) ((($Memory_191074 (|domain#$Memory_191074| |T@[Int]Bool|) (|contents#$Memory_191074| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_244251 0)) ((($Memory_244251 (|domain#$Memory_244251| |T@[Int]Bool|) (|contents#$Memory_244251| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_190993 0)) ((($Memory_190993 (|domain#$Memory_190993| |T@[Int]Bool|) (|contents#$Memory_190993| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_173732 0)) ((($Memory_173732 (|domain#$Memory_173732| |T@[Int]Bool|) (|contents#$Memory_173732| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_244191 0)) ((($Memory_244191 (|domain#$Memory_244191| |T@[Int]Bool|) (|contents#$Memory_244191| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_190912 0)) ((($Memory_190912 (|domain#$Memory_190912| |T@[Int]Bool|) (|contents#$Memory_190912| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173971 0)) ((($Memory_173971 (|domain#$Memory_173971| |T@[Int]Bool|) (|contents#$Memory_173971| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_180064 0)) ((($Memory_180064 (|domain#$Memory_180064| |T@[Int]Bool|) (|contents#$Memory_180064| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_179977 0)) ((($Memory_179977 (|domain#$Memory_179977| |T@[Int]Bool|) (|contents#$Memory_179977| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_179890 0)) ((($Memory_179890 (|domain#$Memory_179890| |T@[Int]Bool|) (|contents#$Memory_179890| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_179803 0)) ((($Memory_179803 (|domain#$Memory_179803| |T@[Int]Bool|) (|contents#$Memory_179803| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_179716 0)) ((($Memory_179716 (|domain#$Memory_179716| |T@[Int]Bool|) (|contents#$Memory_179716| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_179629 0)) ((($Memory_179629 (|domain#$Memory_179629| |T@[Int]Bool|) (|contents#$Memory_179629| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_173422 0)) ((($Memory_173422 (|domain#$Memory_173422| |T@[Int]Bool|) (|contents#$Memory_173422| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_178556 0)) ((($Memory_178556 (|domain#$Memory_178556| |T@[Int]Bool|) (|contents#$Memory_178556| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_173263 0)) ((($Memory_173263 (|domain#$Memory_173263| |T@[Int]Bool|) (|contents#$Memory_173263| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_172854 0)) ((($Memory_172854 (|domain#$Memory_172854| |T@[Int]Bool|) (|contents#$Memory_172854| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_173170 0)) ((($Memory_173170 (|domain#$Memory_173170| |T@[Int]Bool|) (|contents#$Memory_173170| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_132017 0)) (((Vec_132017 (|v#Vec_132017| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_132017| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_132017) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_131978 0)) (((Vec_131978 (|v#Vec_131978| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_131978| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_131978) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_23605 0)) (((Vec_23605 (|v#Vec_23605| |T@[Int]Int|) (|l#Vec_23605| Int) ) ) ))
(declare-sort |T@[Int]Vec_23605| 0)
(declare-datatypes ((T@Vec_132208 0)) (((Vec_132208 (|v#Vec_132208| |T@[Int]Vec_23605|) (|l#Vec_132208| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_132208) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_174152 0)) ((($Memory_174152 (|domain#$Memory_174152| |T@[Int]Bool|) (|contents#$Memory_174152| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_132208) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_173493 0)) ((($Memory_173493 (|domain#$Memory_173493| |T@[Int]Bool|) (|contents#$Memory_173493| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_23605) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_23605) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_174776 0)) ((($Memory_174776 (|domain#$Memory_174776| |T@[Int]Bool|) (|contents#$Memory_174776| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_23605) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_178423 0)) ((($Memory_178423 (|domain#$Memory_178423| |T@[Int]Bool|) (|contents#$Memory_178423| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_23605) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_243919 0)) ((($Memory_243919 (|domain#$Memory_243919| |T@[Int]Bool|) (|contents#$Memory_243919| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_23605) (|$base_url#$1_DualAttestation_Credential| T@Vec_23605) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_23605) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_243632 0)) ((($Memory_243632 (|domain#$Memory_243632| |T@[Int]Bool|) (|contents#$Memory_243632| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_132651 0)) (((Vec_132651 (|v#Vec_132651| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_132651| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_132651) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_244104 0)) ((($Memory_244104 (|domain#$Memory_244104| |T@[Int]Bool|) (|contents#$Memory_244104| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'#0'| 0)
(declare-datatypes ((T@Vec_132496 0)) (((Vec_132496 (|v#Vec_132496| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#Vec_132496| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| T@Vec_132496) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_191558 0)) ((($Memory_191558 (|domain#$Memory_191558| |T@[Int]Bool|) (|contents#$Memory_191558| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)
(declare-datatypes ((T@Vec_132457 0)) (((Vec_132457 (|v#Vec_132457| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#Vec_132457| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| T@Vec_132457) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_191441 0)) ((($Memory_191441 (|domain#$Memory_191441| |T@[Int]Bool|) (|contents#$Memory_191441| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)
(declare-datatypes ((T@Vec_132418 0)) (((Vec_132418 (|v#Vec_132418| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#Vec_132418| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| T@Vec_132418) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_191324 0)) ((($Memory_191324 (|domain#$Memory_191324| |T@[Int]Bool|) (|contents#$Memory_191324| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_184229 0)) ((($Memory_184229 (|domain#$Memory_184229| |T@[Int]Bool|) (|contents#$Memory_184229| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173816 0)) ((($Memory_173816 (|domain#$Memory_173816| |T@[Int]Bool|) (|contents#$Memory_173816| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_23605) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173577 0)) ((($Memory_173577 (|domain#$Memory_173577| |T@[Int]Bool|) (|contents#$Memory_173577| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_23605) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_23605) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_131939 0)) (((Vec_131939 (|v#Vec_131939| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_131939| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_131939) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_132151 0)) (((Vec_132151 (|v#Vec_132151| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_132151| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_132151) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_173349 0)) ((($Memory_173349 (|domain#$Memory_173349| |T@[Int]Bool|) (|contents#$Memory_173349| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_177677 0)) ((($Memory_177677 (|domain#$Memory_177677| |T@[Int]Bool|) (|contents#$Memory_177677| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_23605) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_177034 0)) ((($Memory_177034 (|domain#$Memory_177034| |T@[Int]Bool|) (|contents#$Memory_177034| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_172983 0)) ((($Memory_172983 (|domain#$Memory_172983| |T@[Int]Bool|) (|contents#$Memory_172983| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_172301 0)) ((($Memory_172301 (|domain#$Memory_172301| |T@[Int]Bool|) (|contents#$Memory_172301| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_131853 0)) (((Multiset_131853 (|v#Multiset_131853| |T@[$EventRep]Int|) (|l#Multiset_131853| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_131853| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_131853|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_306474 0)) ((($Mutation_306474 (|l#$Mutation_306474| T@$Location) (|p#$Mutation_306474| T@Vec_23605) (|v#$Mutation_306474| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_306429 0)) ((($Mutation_306429 (|l#$Mutation_306429| T@$Location) (|p#$Mutation_306429| T@Vec_23605) (|v#$Mutation_306429| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_288052 0)) ((($Mutation_288052 (|l#$Mutation_288052| T@$Location) (|p#$Mutation_288052| T@Vec_23605) (|v#$Mutation_288052| |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_284871 0)) ((($Mutation_284871 (|l#$Mutation_284871| T@$Location) (|p#$Mutation_284871| T@Vec_23605) (|v#$Mutation_284871| |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_281786 0)) ((($Mutation_281786 (|l#$Mutation_281786| T@$Location) (|p#$Mutation_281786| T@Vec_23605) (|v#$Mutation_281786| |T@$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_268527 0)) ((($Mutation_268527 (|l#$Mutation_268527| T@$Location) (|p#$Mutation_268527| T@Vec_23605) (|v#$Mutation_268527| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_74103 0)) ((($Mutation_74103 (|l#$Mutation_74103| T@$Location) (|p#$Mutation_74103| T@Vec_23605) (|v#$Mutation_74103| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_201529 0)) ((($Mutation_201529 (|l#$Mutation_201529| T@$Location) (|p#$Mutation_201529| T@Vec_23605) (|v#$Mutation_201529| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_201479 0)) ((($Mutation_201479 (|l#$Mutation_201479| T@$Location) (|p#$Mutation_201479| T@Vec_23605) (|v#$Mutation_201479| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_201431 0)) ((($Mutation_201431 (|l#$Mutation_201431| T@$Location) (|p#$Mutation_201431| T@Vec_23605) (|v#$Mutation_201431| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_196936 0)) ((($Mutation_196936 (|l#$Mutation_196936| T@$Location) (|p#$Mutation_196936| T@Vec_23605) (|v#$Mutation_196936| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_196886 0)) ((($Mutation_196886 (|l#$Mutation_196886| T@$Location) (|p#$Mutation_196886| T@Vec_23605) (|v#$Mutation_196886| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_196838 0)) ((($Mutation_196838 (|l#$Mutation_196838| T@$Location) (|p#$Mutation_196838| T@Vec_23605) (|v#$Mutation_196838| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_192429 0)) ((($Mutation_192429 (|l#$Mutation_192429| T@$Location) (|p#$Mutation_192429| T@Vec_23605) (|v#$Mutation_192429| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_192379 0)) ((($Mutation_192379 (|l#$Mutation_192379| T@$Location) (|p#$Mutation_192379| T@Vec_23605) (|v#$Mutation_192379| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_192331 0)) ((($Mutation_192331 (|l#$Mutation_192331| T@$Location) (|p#$Mutation_192331| T@Vec_23605) (|v#$Mutation_192331| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_182801 0)) ((($Mutation_182801 (|l#$Mutation_182801| T@$Location) (|p#$Mutation_182801| T@Vec_23605) (|v#$Mutation_182801| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_172796 0)) ((($Mutation_172796 (|l#$Mutation_172796| T@$Location) (|p#$Mutation_172796| T@Vec_23605) (|v#$Mutation_172796| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_165569 0)) ((($Mutation_165569 (|l#$Mutation_165569| T@$Location) (|p#$Mutation_165569| T@Vec_23605) (|v#$Mutation_165569| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_15070 0)) ((($Mutation_15070 (|l#$Mutation_15070| T@$Location) (|p#$Mutation_15070| T@Vec_23605) (|v#$Mutation_15070| Int) ) ) ))
(declare-datatypes ((T@$Mutation_159826 0)) ((($Mutation_159826 (|l#$Mutation_159826| T@$Location) (|p#$Mutation_159826| T@Vec_23605) (|v#$Mutation_159826| T@Vec_23605) ) ) ))
(declare-datatypes ((T@$Mutation_158738 0)) ((($Mutation_158738 (|l#$Mutation_158738| T@$Location) (|p#$Mutation_158738| T@Vec_23605) (|v#$Mutation_158738| T@Vec_132208) ) ) ))
(declare-datatypes ((T@$Mutation_157029 0)) ((($Mutation_157029 (|l#$Mutation_157029| T@$Location) (|p#$Mutation_157029| T@Vec_23605) (|v#$Mutation_157029| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_156042 0)) ((($Mutation_156042 (|l#$Mutation_156042| T@$Location) (|p#$Mutation_156042| T@Vec_23605) (|v#$Mutation_156042| T@Vec_131939) ) ) ))
(declare-datatypes ((T@$Mutation_154387 0)) ((($Mutation_154387 (|l#$Mutation_154387| T@$Location) (|p#$Mutation_154387| T@Vec_23605) (|v#$Mutation_154387| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_153400 0)) ((($Mutation_153400 (|l#$Mutation_153400| T@$Location) (|p#$Mutation_153400| T@Vec_23605) (|v#$Mutation_153400| T@Vec_132651) ) ) ))
(declare-datatypes ((T@$Mutation_151722 0)) ((($Mutation_151722 (|l#$Mutation_151722| T@$Location) (|p#$Mutation_151722| T@Vec_23605) (|v#$Mutation_151722| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_150735 0)) ((($Mutation_150735 (|l#$Mutation_150735| T@$Location) (|p#$Mutation_150735| T@Vec_23605) (|v#$Mutation_150735| T@Vec_132418) ) ) ))
(declare-datatypes ((T@$Mutation_149026 0)) ((($Mutation_149026 (|l#$Mutation_149026| T@$Location) (|p#$Mutation_149026| T@Vec_23605) (|v#$Mutation_149026| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_148039 0)) ((($Mutation_148039 (|l#$Mutation_148039| T@$Location) (|p#$Mutation_148039| T@Vec_23605) (|v#$Mutation_148039| T@Vec_132457) ) ) ))
(declare-datatypes ((T@$Mutation_146330 0)) ((($Mutation_146330 (|l#$Mutation_146330| T@$Location) (|p#$Mutation_146330| T@Vec_23605) (|v#$Mutation_146330| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_145343 0)) ((($Mutation_145343 (|l#$Mutation_145343| T@$Location) (|p#$Mutation_145343| T@Vec_23605) (|v#$Mutation_145343| T@Vec_132496) ) ) ))
(declare-datatypes ((T@$Mutation_143634 0)) ((($Mutation_143634 (|l#$Mutation_143634| T@$Location) (|p#$Mutation_143634| T@Vec_23605) (|v#$Mutation_143634| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_142647 0)) ((($Mutation_142647 (|l#$Mutation_142647| T@$Location) (|p#$Mutation_142647| T@Vec_23605) (|v#$Mutation_142647| T@Vec_132151) ) ) ))
(declare-datatypes ((T@$Mutation_140847 0)) ((($Mutation_140847 (|l#$Mutation_140847| T@$Location) (|p#$Mutation_140847| T@Vec_23605) (|v#$Mutation_140847| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_139860 0)) ((($Mutation_139860 (|l#$Mutation_139860| T@$Location) (|p#$Mutation_139860| T@Vec_23605) (|v#$Mutation_139860| T@Vec_132017) ) ) ))
(declare-datatypes ((T@$Mutation_138195 0)) ((($Mutation_138195 (|l#$Mutation_138195| T@$Location) (|p#$Mutation_138195| T@Vec_23605) (|v#$Mutation_138195| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_137208 0)) ((($Mutation_137208 (|l#$Mutation_137208| T@$Location) (|p#$Mutation_137208| T@Vec_23605) (|v#$Mutation_137208| T@Vec_131978) ) ) ))
(declare-datatypes ((T@$Mutation_135495 0)) ((($Mutation_135495 (|l#$Mutation_135495| T@$Location) (|p#$Mutation_135495| T@Vec_23605) (|v#$Mutation_135495| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_134508 0)) ((($Mutation_134508 (|l#$Mutation_134508| T@$Location) (|p#$Mutation_134508| T@Vec_23605) (|v#$Mutation_134508| T@Vec_133863) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_133863 T@Vec_133863) Bool)
(declare-fun InRangeVec_117660 (T@Vec_133863 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_133863) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_133863 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_131978 T@Vec_131978) Bool)
(declare-fun InRangeVec_117861 (T@Vec_131978 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_131978) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_131978 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_132017 T@Vec_132017) Bool)
(declare-fun InRangeVec_118062 (T@Vec_132017 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_132017) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_132017 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_132151 T@Vec_132151) Bool)
(declare-fun InRangeVec_118263 (T@Vec_132151 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_23605 T@Vec_23605) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_132151) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_132151 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_132496 T@Vec_132496) Bool)
(declare-fun InRangeVec_118464 (T@Vec_132496 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|T@[Int]$1_Diem_PreburnWithMetadata'#0'| Int) |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (T@Vec_132496) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| (T@Vec_132496 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_132457 T@Vec_132457) Bool)
(declare-fun InRangeVec_118665 (T@Vec_132457 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (T@Vec_132457) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (T@Vec_132457 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun |$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_132418 T@Vec_132418) Bool)
(declare-fun InRangeVec_118866 (T@Vec_132418 Int) Bool)
(declare-fun |Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (T@Vec_132418) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (T@Vec_132418 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_132651 T@Vec_132651) Bool)
(declare-fun InRangeVec_119067 (T@Vec_132651 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_132651) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_132651 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_131939 T@Vec_131939) Bool)
(declare-fun InRangeVec_119268 (T@Vec_131939 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_131939) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_131939 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_132208 T@Vec_132208) Bool)
(declare-fun InRangeVec_158161 (T@Vec_132208 Int) Bool)
(declare-fun |Select__T@[Int]Vec_23605_| (|T@[Int]Vec_23605| Int) T@Vec_23605)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_132208) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_23605) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_132208 T@Vec_23605) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_131853_| (|T@[$1_Event_EventHandle]Multiset_131853| T@$1_Event_EventHandle) T@Multiset_131853)
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
(declare-fun IndexOfVec_131939 (T@Vec_131939 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_131978 (T@Vec_131978 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_132017 (T@Vec_132017 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_132151 (T@Vec_132151 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_132208 (T@Vec_132208 T@Vec_23605) Int)
(declare-fun IndexOfVec_132418 (T@Vec_132418 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) Int)
(declare-fun IndexOfVec_132457 (T@Vec_132457 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) Int)
(declare-fun IndexOfVec_132496 (T@Vec_132496 |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
(declare-fun IndexOfVec_132651 (T@Vec_132651 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_133863 (T@Vec_133863 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_131853| |T@[$1_Event_EventHandle]Multiset_131853|) |T@[$1_Event_EventHandle]Multiset_131853|)
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
 :qid |XUSbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XUSbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XUSbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XUSbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XUSbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XUSbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XUSbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XUSbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_133863) (v2 T@Vec_133863) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_133863| v1) (|l#Vec_133863| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_117660 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_133863| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_133863| v2) i@@0)))
 :qid |XUSbpl.615:13|
 :skolemid |17|
))))
 :qid |XUSbpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_133863) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_133863| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_117660 v@@4 i@@1) true)
 :qid |XUSbpl.621:13|
 :skolemid |19|
))))
 :qid |XUSbpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_133863) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_117660 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@5) i@@3) e))
 :qid |XUSbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_117660 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@5) j) e)))
 :qid |XUSbpl.634:17|
 :skolemid |22|
)))))
 :qid |XUSbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_131978) (v2@@0 T@Vec_131978) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_131978| v1@@0) (|l#Vec_131978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_117861 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v2@@0) i@@4)))
 :qid |XUSbpl.796:13|
 :skolemid |24|
))))
 :qid |XUSbpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_131978) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_131978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_117861 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@6) i@@5)))
 :qid |XUSbpl.802:13|
 :skolemid |26|
))))
 :qid |XUSbpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_131978) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_117861 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@7) i@@7) e@@0))
 :qid |XUSbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_117861 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@7) j@@0) e@@0)))
 :qid |XUSbpl.815:17|
 :skolemid |29|
)))))
 :qid |XUSbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_132017) (v2@@1 T@Vec_132017) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_132017| v1@@1) (|l#Vec_132017| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_118062 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v2@@1) i@@8)))
 :qid |XUSbpl.977:13|
 :skolemid |31|
))))
 :qid |XUSbpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_132017) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_132017| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_118062 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@8) i@@9)))
 :qid |XUSbpl.983:13|
 :skolemid |33|
))))
 :qid |XUSbpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_132017) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_118062 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@9) i@@11) e@@1))
 :qid |XUSbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_118062 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@9) j@@1) e@@1)))
 :qid |XUSbpl.996:17|
 :skolemid |36|
)))))
 :qid |XUSbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_132151) (v2@@2 T@Vec_132151) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_132151| v1@@2) (|l#Vec_132151| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_118263 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v2@@2) i@@12)))))
 :qid |XUSbpl.1158:13|
 :skolemid |38|
))))
 :qid |XUSbpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_132151) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_132151| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_118263 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@10) i@@13)))
 :qid |XUSbpl.1164:13|
 :skolemid |40|
))))
 :qid |XUSbpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_132151) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_118263 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |XUSbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_118263 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |XUSbpl.1177:17|
 :skolemid |43|
)))))
 :qid |XUSbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_132496) (v2@@3 T@Vec_132496) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3)  (and (= (|l#Vec_132496| v1@@3) (|l#Vec_132496| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_118464 v1@@3 i@@16) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v1@@3) i@@16)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v1@@3) i@@16)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v2@@3) i@@16)))))
 :qid |XUSbpl.1339:13|
 :skolemid |45|
))))
 :qid |XUSbpl.1337:57|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'#0'''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_132496) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_132496| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_118464 v@@12 i@@17) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@12) i@@17)))
 :qid |XUSbpl.1345:13|
 :skolemid |47|
))))
 :qid |XUSbpl.1343:57|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_132496) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@18 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_118464 v@@13 i@@19)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) i@@19)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) i@@19)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3))))
 :qid |XUSbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_118464 v@@13 i@@18)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) i@@18)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) i@@18)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) j@@3)) (|$preburn#$1_Diem_PreburnWithMetadata'#0'| e@@3)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@13) j@@3)) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| e@@3)))))
 :qid |XUSbpl.1358:17|
 :skolemid |50|
)))))
 :qid |XUSbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_132457) (v2@@4 T@Vec_132457) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4)  (and (= (|l#Vec_132457| v1@@4) (|l#Vec_132457| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_118665 v1@@4 i@@20) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v1@@4) i@@20)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v1@@4) i@@20)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v2@@4) i@@20)))))
 :qid |XUSbpl.1520:13|
 :skolemid |52|
))))
 :qid |XUSbpl.1518:65|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_132457) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_132457| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_118665 v@@14 i@@21) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@14) i@@21)))
 :qid |XUSbpl.1526:13|
 :skolemid |54|
))))
 :qid |XUSbpl.1524:65|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_132457) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@22 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_118665 v@@15 i@@23)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) i@@23)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) i@@23)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4))))
 :qid |XUSbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_118665 v@@15 i@@22)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) i@@22)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) i@@22)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) j@@4)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@15) j@@4)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| e@@4)))))
 :qid |XUSbpl.1539:17|
 :skolemid |57|
)))))
 :qid |XUSbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_132418) (v2@@5 T@Vec_132418) ) (! (= (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5)  (and (= (|l#Vec_132418| v1@@5) (|l#Vec_132418| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_118866 v1@@5 i@@24) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v1@@5) i@@24)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v2@@5) i@@24))) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v1@@5) i@@24)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v2@@5) i@@24)))))
 :qid |XUSbpl.1701:13|
 :skolemid |59|
))))
 :qid |XUSbpl.1699:65|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_132418) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_132418| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_118866 v@@16 i@@25) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@16) i@@25)))
 :qid |XUSbpl.1707:13|
 :skolemid |61|
))))
 :qid |XUSbpl.1705:65|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_132418) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@26 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_118866 v@@17 i@@27)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) i@@27)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) i@@27)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5))))
 :qid |XUSbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_118866 v@@17 i@@26)) (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) i@@26)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) i@@26)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (and (= (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) j@@5)) (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)) (|$IsEqual'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@17) j@@5)) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| e@@5)))))
 :qid |XUSbpl.1720:17|
 :skolemid |64|
)))))
 :qid |XUSbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_132651) (v2@@6 T@Vec_132651) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6)  (and (= (|l#Vec_132651| v1@@6) (|l#Vec_132651| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_119067 v1@@6 i@@28) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v1@@6) i@@28)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v2@@6) i@@28))))
 :qid |XUSbpl.1882:13|
 :skolemid |66|
))))
 :qid |XUSbpl.1880:50|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_132651) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_132651| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_119067 v@@18 i@@29) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@18) i@@29)))
 :qid |XUSbpl.1888:13|
 :skolemid |68|
))))
 :qid |XUSbpl.1886:50|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_132651) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@30 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_119067 v@@19 i@@31)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@19) i@@31)) (|$domain#$1_VASPDomain_VASPDomain| e@@6)))
 :qid |XUSbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_119067 v@@19 i@@30)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@19) i@@30)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@19) j@@6)) (|$domain#$1_VASPDomain_VASPDomain| e@@6))))
 :qid |XUSbpl.1901:17|
 :skolemid |71|
)))))
 :qid |XUSbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_131939) (v2@@7 T@Vec_131939) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7)  (and (= (|l#Vec_131939| v1@@7) (|l#Vec_131939| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_119268 v1@@7 i@@32) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v1@@7) i@@32)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v2@@7) i@@32))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v1@@7) i@@32)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v2@@7) i@@32)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v1@@7) i@@32)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v2@@7) i@@32)))))
 :qid |XUSbpl.2063:13|
 :skolemid |73|
))))
 :qid |XUSbpl.2061:51|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_131939) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_131939| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_119268 v@@20 i@@33) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@20) i@@33)))
 :qid |XUSbpl.2069:13|
 :skolemid |75|
))))
 :qid |XUSbpl.2067:51|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_131939) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@34 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_119268 v@@21 i@@35)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@35)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@35)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@35)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7))))
 :qid |XUSbpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_119268 v@@21 i@@34)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@34)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@34)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) i@@34)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) j@@7)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@7)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) j@@7)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@7))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@21) j@@7)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@7)))))
 :qid |XUSbpl.2082:17|
 :skolemid |78|
)))))
 :qid |XUSbpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_132208) (v2@@8 T@Vec_132208) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@8 v2@@8)  (and (= (|l#Vec_132208| v1@@8) (|l#Vec_132208| v2@@8)) (forall ((i@@36 Int) ) (!  (=> (InRangeVec_158161 v1@@8 i@@36) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v1@@8) i@@36) (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v2@@8) i@@36)))
 :qid |XUSbpl.2244:13|
 :skolemid |80|
))))
 :qid |XUSbpl.2242:33|
 :skolemid |81|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@8 v2@@8))
)))
(assert (forall ((v@@22 T@Vec_132208) ) (! (= (|$IsValid'vec'vec'u8'''| v@@22)  (and (|$IsValid'u64'| (|l#Vec_132208| v@@22)) (forall ((i@@37 Int) ) (!  (=> (InRangeVec_158161 v@@22 i@@37) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@22) i@@37)))
 :qid |XUSbpl.2250:13|
 :skolemid |82|
))))
 :qid |XUSbpl.2248:33|
 :skolemid |83|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@22))
)))
(assert (forall ((v@@23 T@Vec_132208) (e@@8 T@Vec_23605) ) (! (let ((i@@38 (|$IndexOfVec'vec'u8''| v@@23 e@@8)))
(ite  (not (exists ((i@@39 Int) ) (!  (and (and (|$IsValid'u64'| i@@39) (InRangeVec_158161 v@@23 i@@39)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@23) i@@39) e@@8))
 :qid |XUSbpl.2255:13|
 :skolemid |84|
))) (= i@@38 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@38) (InRangeVec_158161 v@@23 i@@38)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@23) i@@38) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@38)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@23) j@@8) e@@8)))
 :qid |XUSbpl.2263:17|
 :skolemid |85|
)))))
 :qid |XUSbpl.2259:15|
 :skolemid |86|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@23 e@@8))
)))
(assert (forall ((v1@@9 T@Vec_23605) (v2@@9 T@Vec_23605) ) (! (= (|$IsEqual'vec'address''| v1@@9 v2@@9)  (and (= (|l#Vec_23605| v1@@9) (|l#Vec_23605| v2@@9)) (forall ((i@@40 Int) ) (!  (=> (InRangeVec_14446 v1@@9 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v1@@9) i@@40) (|Select__T@[Int]Int_| (|v#Vec_23605| v2@@9) i@@40)))
 :qid |XUSbpl.2425:13|
 :skolemid |87|
))))
 :qid |XUSbpl.2423:33|
 :skolemid |88|
 :pattern ( (|$IsEqual'vec'address''| v1@@9 v2@@9))
)))
(assert (forall ((v@@24 T@Vec_23605) ) (! (= (|$IsValid'vec'address''| v@@24)  (and (|$IsValid'u64'| (|l#Vec_23605| v@@24)) (forall ((i@@41 Int) ) (!  (=> (InRangeVec_14446 v@@24 i@@41) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_23605| v@@24) i@@41)))
 :qid |XUSbpl.2431:13|
 :skolemid |89|
))))
 :qid |XUSbpl.2429:33|
 :skolemid |90|
 :pattern ( (|$IsValid'vec'address''| v@@24))
)))
(assert (forall ((v@@25 T@Vec_23605) (e@@9 Int) ) (! (let ((i@@42 (|$IndexOfVec'address'| v@@25 e@@9)))
(ite  (not (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (InRangeVec_14446 v@@25 i@@43)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) i@@43) e@@9))
 :qid |XUSbpl.2436:13|
 :skolemid |91|
))) (= i@@42 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@42) (InRangeVec_14446 v@@25 i@@42)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) i@@42) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@42)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@25) j@@9) e@@9)))
 :qid |XUSbpl.2444:17|
 :skolemid |92|
)))))
 :qid |XUSbpl.2440:15|
 :skolemid |93|
 :pattern ( (|$IndexOfVec'address'| v@@25 e@@9))
)))
(assert (forall ((v1@@10 T@Vec_23605) (v2@@10 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@10 v2@@10)  (and (= (|l#Vec_23605| v1@@10) (|l#Vec_23605| v2@@10)) (forall ((i@@44 Int) ) (!  (=> (InRangeVec_14446 v1@@10 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v1@@10) i@@44) (|Select__T@[Int]Int_| (|v#Vec_23605| v2@@10) i@@44)))
 :qid |XUSbpl.2606:13|
 :skolemid |94|
))))
 :qid |XUSbpl.2604:28|
 :skolemid |95|
 :pattern ( (|$IsEqual'vec'u8''| v1@@10 v2@@10))
)))
(assert (forall ((v@@26 T@Vec_23605) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (|l#Vec_23605| v@@26)) (forall ((i@@45 Int) ) (!  (=> (InRangeVec_14446 v@@26 i@@45) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_23605| v@@26) i@@45)))
 :qid |XUSbpl.2612:13|
 :skolemid |96|
))))
 :qid |XUSbpl.2610:28|
 :skolemid |97|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 T@Vec_23605) (e@@10 Int) ) (! (let ((i@@46 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (InRangeVec_14446 v@@27 i@@47)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) i@@47) e@@10))
 :qid |XUSbpl.2617:13|
 :skolemid |98|
))) (= i@@46 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@46) (InRangeVec_14446 v@@27 i@@46)) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) i@@46) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@46)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@27) j@@10) e@@10)))
 :qid |XUSbpl.2625:17|
 :skolemid |99|
)))))
 :qid |XUSbpl.2621:15|
 :skolemid |100|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1@@11 T@Vec_23605) (v2@@11 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@11 v2@@11) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11)))
 :qid |XUSbpl.2798:15|
 :skolemid |101|
 :pattern ( ($1_Hash_sha2 v1@@11) ($1_Hash_sha2 v2@@11))
)))
(assert (forall ((v1@@12 T@Vec_23605) (v2@@12 T@Vec_23605) ) (! (= (|$IsEqual'vec'u8''| v1@@12 v2@@12) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12)))
 :qid |XUSbpl.2814:15|
 :skolemid |102|
 :pattern ( ($1_Hash_sha3 v1@@12) ($1_Hash_sha3 v2@@12))
)))
(assert (forall ((k1 T@Vec_23605) (k2 T@Vec_23605) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XUSbpl.2885:15|
 :skolemid |103|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_23605) (s2 T@Vec_23605) (k1@@0 T@Vec_23605) (k2@@0 T@Vec_23605) (m1 T@Vec_23605) (m2 T@Vec_23605) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XUSbpl.2888:15|
 :skolemid |104|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_131853| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_131853| stream) v@@28) 0)
 :qid |XUSbpl.159:13|
 :skolemid |4|
))))
 :qid |XUSbpl.2949:13|
 :skolemid |105|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XUSbpl.2990:80|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@13 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@13 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13)))
 :qid |XUSbpl.2996:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@13) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@13))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XUSbpl.3046:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@14 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14)))
 :qid |XUSbpl.3052:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@14) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@14))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XUSbpl.3102:80|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@15 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@15 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@15)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@15) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@15))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15)))
 :qid |XUSbpl.3108:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@15) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@15))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XUSbpl.3158:79|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_AdminTransactionEvent) (v2@@16 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16)))
 :qid |XUSbpl.3164:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@16))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XUSbpl.3214:76|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@17 T@$1_DiemAccount_CreateAccountEvent) (v2@@17 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17)))
 :qid |XUSbpl.3220:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@17) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@17))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XUSbpl.3270:78|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@18 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@18 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@18) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@18))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18)))
 :qid |XUSbpl.3276:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@18) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@18))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XUSbpl.3326:74|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@19 T@$1_DiemAccount_SentPaymentEvent) (v2@@19 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@19))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@19) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@19))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19)))
 :qid |XUSbpl.3332:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@19) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@19))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XUSbpl.3382:69|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@20 T@$1_DiemBlock_NewBlockEvent) (v2@@20 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@20) (|$round#$1_DiemBlock_NewBlockEvent| v2@@20)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@20) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@20))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@20) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@20) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@20))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20)))
 :qid |XUSbpl.3388:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@20) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@20))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XUSbpl.3438:70|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@21 T@$1_DiemConfig_NewEpochEvent) (v2@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@21 v2@@21) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21)))
 :qid |XUSbpl.3444:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@21))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XUSbpl.3494:60|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@22 T@$1_Diem_BurnEvent) (v2@@22 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@22) (|$amount#$1_Diem_BurnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@22) (|$currency_code#$1_Diem_BurnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@22) (|$preburn_address#$1_Diem_BurnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22)))
 :qid |XUSbpl.3500:15|
 :skolemid |126|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@22) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@22))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XUSbpl.3550:66|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@23 T@$1_Diem_CancelBurnEvent) (v2@@23 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@23) (|$amount#$1_Diem_CancelBurnEvent| v2@@23)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@23) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@23) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23)))
 :qid |XUSbpl.3556:15|
 :skolemid |128|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@23) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@23))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XUSbpl.3606:60|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@24 T@$1_Diem_MintEvent) (v2@@24 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@24) (|$amount#$1_Diem_MintEvent| v2@@24)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@24) (|$currency_code#$1_Diem_MintEvent| v2@@24))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24)))
 :qid |XUSbpl.3612:15|
 :skolemid |130|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@24) (|$ToEventRep'$1_Diem_MintEvent'| v2@@24))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XUSbpl.3662:63|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@25 T@$1_Diem_PreburnEvent) (v2@@25 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@25) (|$amount#$1_Diem_PreburnEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@25) (|$currency_code#$1_Diem_PreburnEvent| v2@@25))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@25) (|$preburn_address#$1_Diem_PreburnEvent| v2@@25))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25)))
 :qid |XUSbpl.3668:15|
 :skolemid |132|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@25) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@25))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XUSbpl.3718:79|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@26 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@26) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@26))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26)))
 :qid |XUSbpl.3724:15|
 :skolemid |134|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@26) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@26))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XUSbpl.3774:82|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@27 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@27 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@27)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@27) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@27))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27)))
 :qid |XUSbpl.3780:15|
 :skolemid |136|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@27) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@27))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XUSbpl.3830:88|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@28 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@28) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@28))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28)))
 :qid |XUSbpl.3836:15|
 :skolemid |138|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@28) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@28))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XUSbpl.3886:72|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@29 T@$1_VASPDomain_VASPDomainEvent) (v2@@29 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@29)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@29)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@29)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@29) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@29))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29)))
 :qid |XUSbpl.3892:15|
 :skolemid |140|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@29) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@29))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XUSbpl.3971:61|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |XUSbpl.4786:36|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |XUSbpl.4805:71|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |XUSbpl.4868:46|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |XUSbpl.4880:64|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |XUSbpl.4892:75|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |XUSbpl.4904:72|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |XUSbpl.4932:55|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |XUSbpl.4955:46|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |XUSbpl.4974:49|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |XUSbpl.5059:71|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |XUSbpl.5072:91|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |XUSbpl.5085:113|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |XUSbpl.5098:89|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |XUSbpl.5111:75|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |XUSbpl.5124:73|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |XUSbpl.5144:48|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |XUSbpl.5161:57|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |XUSbpl.5175:83|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |XUSbpl.5189:103|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |XUSbpl.5203:125|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |XUSbpl.5217:101|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |XUSbpl.5231:87|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |XUSbpl.5245:85|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |XUSbpl.5259:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |XUSbpl.5280:45|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |XUSbpl.5294:51|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |XUSbpl.5317:48|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |XUSbpl.5616:49|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |XUSbpl.5661:65|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |XUSbpl.6247:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |XUSbpl.6260:45|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@31) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@31)))
 :qid |XUSbpl.6273:37|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32) true)
 :qid |XUSbpl.6286:55|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33) true)
 :qid |XUSbpl.6300:55|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34) true)
 :qid |XUSbpl.6314:47|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@35))))
 :qid |XUSbpl.6334:38|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@36))))
 :qid |XUSbpl.6356:44|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@37))))
 :qid |XUSbpl.6408:53|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@38))))
 :qid |XUSbpl.6481:53|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@39))))
 :qid |XUSbpl.6554:45|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |XUSbpl.6591:55|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |XUSbpl.6605:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@42) true)
 :qid |XUSbpl.6619:47|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@43)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@43)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@43))))
 :qid |XUSbpl.6636:38|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@44)))
 :qid |XUSbpl.6650:48|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@45)))
 :qid |XUSbpl.6664:48|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@46) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@46)))
 :qid |XUSbpl.6678:40|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@47)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@47)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@47))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@47))))
 :qid |XUSbpl.6698:41|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@48)))
 :qid |XUSbpl.6714:53|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@49)))
 :qid |XUSbpl.6727:53|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@50)))
 :qid |XUSbpl.6740:45|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@51))))
 :qid |XUSbpl.6756:60|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@52))))
 :qid |XUSbpl.6773:60|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@53)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@53))))
 :qid |XUSbpl.6790:52|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@53))
)))
(assert (forall ((s@@54 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@54))))
 :qid |XUSbpl.6807:57|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55) true)
 :qid |XUSbpl.23920:68|
 :skolemid |845|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@56))))
 :qid |XUSbpl.23942:66|
 :skolemid |846|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@57))))
 :qid |XUSbpl.23968:66|
 :skolemid |847|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@58))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@58))))
 :qid |XUSbpl.23994:58|
 :skolemid |848|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@58))
)))
(assert (forall ((s@@59 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@59))))
 :qid |XUSbpl.24023:56|
 :skolemid |849|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@59))
)))
(assert (forall ((s@@60 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@60))))
 :qid |XUSbpl.24053:56|
 :skolemid |850|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@60))
)))
(assert (forall ((s@@61 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@61)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@61)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@61))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@61))))
 :qid |XUSbpl.24083:48|
 :skolemid |851|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@61))
)))
(assert (forall ((s@@62 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@62) true)
 :qid |XUSbpl.26144:31|
 :skolemid |957|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@62))
)))
(assert (forall ((s@@63 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@63) true)
 :qid |XUSbpl.27263:31|
 :skolemid |1002|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@63))
)))
(assert (forall ((s@@64 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@64)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@64)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@64))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@64))))
 :qid |XUSbpl.27282:35|
 :skolemid |1003|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@65)))
 :qid |XUSbpl.27691:45|
 :skolemid |1004|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@66))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@66))))
 :qid |XUSbpl.27709:50|
 :skolemid |1005|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@67)))
 :qid |XUSbpl.27725:52|
 :skolemid |1006|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@67))
)))
(assert (forall ((s@@68 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@68)))
 :qid |XUSbpl.27738:46|
 :skolemid |1007|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@68))
)))
(assert (forall ((s@@69 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@69) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@69)))
 :qid |XUSbpl.27761:38|
 :skolemid |1008|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@69))
)))
(assert (forall ((s@@70 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@70) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@70)))
 :qid |XUSbpl.27775:39|
 :skolemid |1009|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@70))
)))
(assert (forall ((s@@71 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@71))))
 :qid |XUSbpl.27802:65|
 :skolemid |1010|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@71))
)))
(assert (forall ((s@@72 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@72)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@72))))
 :qid |XUSbpl.28170:60|
 :skolemid |1011|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@73))))
 :qid |XUSbpl.28187:66|
 :skolemid |1012|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@74)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@74))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@74))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@74))))
 :qid |XUSbpl.28216:50|
 :skolemid |1013|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@75) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@75)))
 :qid |XUSbpl.28239:45|
 :skolemid |1014|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@76)) true))
 :qid |XUSbpl.28546:87|
 :skolemid |1015|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@77)))
 :qid |XUSbpl.28747:47|
 :skolemid |1016|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@78)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@78))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@78))))
 :qid |XUSbpl.28766:58|
 :skolemid |1017|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@79) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@79)))
 :qid |XUSbpl.28782:39|
 :skolemid |1018|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@79))
)))
(assert (forall ((s@@80 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@80)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@80))))
 :qid |XUSbpl.28804:58|
 :skolemid |1019|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@81))))
 :qid |XUSbpl.28821:58|
 :skolemid |1020|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@81))
)))
(assert (forall ((s@@82 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82) true)
 :qid |XUSbpl.28836:51|
 :skolemid |1021|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@82))
)))
(assert (forall ((s@@83 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@83))))
 :qid |XUSbpl.28853:60|
 :skolemid |1022|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@84)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@84))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@84))))
 :qid |XUSbpl.29139:47|
 :skolemid |1023|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@85))))
 :qid |XUSbpl.29165:63|
 :skolemid |1024|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@86)))
 :qid |XUSbpl.29180:57|
 :skolemid |1025|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@86))
)))
(assert (forall ((s@@87 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@87)))
 :qid |XUSbpl.29193:55|
 :skolemid |1026|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@87))
)))
(assert (forall ((s@@88 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@88)))
 :qid |XUSbpl.29207:55|
 :skolemid |1027|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@89)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@89))))
 :qid |XUSbpl.29224:54|
 :skolemid |1028|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@90)))
 :qid |XUSbpl.29238:55|
 :skolemid |1029|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@91)))
 :qid |XUSbpl.29251:57|
 :skolemid |1030|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@92)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@92))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@92))))
 :qid |XUSbpl.29273:56|
 :skolemid |1031|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@93)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@93))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@93))))
 :qid |XUSbpl.29300:52|
 :skolemid |1032|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@94)))
 :qid |XUSbpl.29318:54|
 :skolemid |1033|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@95)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@95))))
 :qid |XUSbpl.30160:47|
 :skolemid |1034|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@96)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@96))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@96))))
 :qid |XUSbpl.30184:47|
 :skolemid |1035|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@97)))
 :qid |XUSbpl.30418:63|
 :skolemid |1036|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@98)))
 :qid |XUSbpl.30753:49|
 :skolemid |1037|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@98))
)))
(assert (forall ((s@@99 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@99)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@99))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@99))))
 :qid |XUSbpl.30795:49|
 :skolemid |1038|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@99))
)))
(assert (forall ((s@@100 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@100)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@100))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@100))))
 :qid |XUSbpl.30824:48|
 :skolemid |1039|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@100))
)))
(assert (forall ((s@@101 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@101)))
 :qid |XUSbpl.31109:47|
 :skolemid |1040|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@101))
)))
(assert (forall ((v@@29 T@Vec_133863) (i@@48 Int) ) (! (= (InRangeVec_117660 v@@29 i@@48)  (and (>= i@@48 0) (< i@@48 (|l#Vec_133863| v@@29))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_117660 v@@29 i@@48))
)))
(assert (forall ((v@@30 T@Vec_131978) (i@@49 Int) ) (! (= (InRangeVec_117861 v@@30 i@@49)  (and (>= i@@49 0) (< i@@49 (|l#Vec_131978| v@@30))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_117861 v@@30 i@@49))
)))
(assert (forall ((v@@31 T@Vec_132017) (i@@50 Int) ) (! (= (InRangeVec_118062 v@@31 i@@50)  (and (>= i@@50 0) (< i@@50 (|l#Vec_132017| v@@31))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_118062 v@@31 i@@50))
)))
(assert (forall ((v@@32 T@Vec_132151) (i@@51 Int) ) (! (= (InRangeVec_118263 v@@32 i@@51)  (and (>= i@@51 0) (< i@@51 (|l#Vec_132151| v@@32))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_118263 v@@32 i@@51))
)))
(assert (forall ((v@@33 T@Vec_132496) (i@@52 Int) ) (! (= (InRangeVec_118464 v@@33 i@@52)  (and (>= i@@52 0) (< i@@52 (|l#Vec_132496| v@@33))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_118464 v@@33 i@@52))
)))
(assert (forall ((v@@34 T@Vec_132457) (i@@53 Int) ) (! (= (InRangeVec_118665 v@@34 i@@53)  (and (>= i@@53 0) (< i@@53 (|l#Vec_132457| v@@34))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_118665 v@@34 i@@53))
)))
(assert (forall ((v@@35 T@Vec_132418) (i@@54 Int) ) (! (= (InRangeVec_118866 v@@35 i@@54)  (and (>= i@@54 0) (< i@@54 (|l#Vec_132418| v@@35))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_118866 v@@35 i@@54))
)))
(assert (forall ((v@@36 T@Vec_132651) (i@@55 Int) ) (! (= (InRangeVec_119067 v@@36 i@@55)  (and (>= i@@55 0) (< i@@55 (|l#Vec_132651| v@@36))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_119067 v@@36 i@@55))
)))
(assert (forall ((v@@37 T@Vec_131939) (i@@56 Int) ) (! (= (InRangeVec_119268 v@@37 i@@56)  (and (>= i@@56 0) (< i@@56 (|l#Vec_131939| v@@37))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_119268 v@@37 i@@56))
)))
(assert (forall ((v@@38 T@Vec_132208) (i@@57 Int) ) (! (= (InRangeVec_158161 v@@38 i@@57)  (and (>= i@@57 0) (< i@@57 (|l#Vec_132208| v@@38))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_158161 v@@38 i@@57))
)))
(assert (forall ((v@@39 T@Vec_23605) (i@@58 Int) ) (! (= (InRangeVec_14446 v@@39 i@@58)  (and (>= i@@58 0) (< i@@58 (|l#Vec_23605| v@@39))))
 :qid |XUSbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14446 v@@39 i@@58))
)))
(assert (forall ((v@@40 T@Vec_23605) (e@@11 Int) ) (! (let ((i@@59 (IndexOfVec_23605 v@@40 e@@11)))
(ite  (not (exists ((i@@60 Int) ) (!  (and (InRangeVec_14446 v@@40 i@@60) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) i@@60) e@@11))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@59 (- 0 1))  (and (and (InRangeVec_14446 v@@40 i@@59) (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) i@@59) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@59)) (not (= (|Select__T@[Int]Int_| (|v#Vec_23605| v@@40) j@@11) e@@11)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_23605 v@@40 e@@11))
)))
(assert (forall ((v@@41 T@Vec_131939) (e@@12 T@$1_ValidatorConfig_Config) ) (! (let ((i@@61 (IndexOfVec_131939 v@@41 e@@12)))
(ite  (not (exists ((i@@62 Int) ) (!  (and (InRangeVec_119268 v@@41 i@@62) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@41) i@@62) e@@12))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@61 (- 0 1))  (and (and (InRangeVec_119268 v@@41 i@@61) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@41) i@@61) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@61)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_131939| v@@41) j@@12) e@@12)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_131939 v@@41 e@@12))
)))
(assert (forall ((v@@42 T@Vec_131978) (e@@13 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@63 (IndexOfVec_131978 v@@42 e@@13)))
(ite  (not (exists ((i@@64 Int) ) (!  (and (InRangeVec_117861 v@@42 i@@64) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@42) i@@64) e@@13))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@63 (- 0 1))  (and (and (InRangeVec_117861 v@@42 i@@63) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@42) i@@63) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@63)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_131978| v@@42) j@@13) e@@13)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_131978 v@@42 e@@13))
)))
(assert (forall ((v@@43 T@Vec_132017) (e@@14 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@65 (IndexOfVec_132017 v@@43 e@@14)))
(ite  (not (exists ((i@@66 Int) ) (!  (and (InRangeVec_118062 v@@43 i@@66) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@43) i@@66) e@@14))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@65 (- 0 1))  (and (and (InRangeVec_118062 v@@43 i@@65) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@43) i@@65) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@65)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_132017| v@@43) j@@14) e@@14)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132017 v@@43 e@@14))
)))
(assert (forall ((v@@44 T@Vec_132151) (e@@15 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@67 (IndexOfVec_132151 v@@44 e@@15)))
(ite  (not (exists ((i@@68 Int) ) (!  (and (InRangeVec_118263 v@@44 i@@68) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@44) i@@68) e@@15))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@67 (- 0 1))  (and (and (InRangeVec_118263 v@@44 i@@67) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@44) i@@67) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@67)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_132151| v@@44) j@@15) e@@15)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132151 v@@44 e@@15))
)))
(assert (forall ((v@@45 T@Vec_132208) (e@@16 T@Vec_23605) ) (! (let ((i@@69 (IndexOfVec_132208 v@@45 e@@16)))
(ite  (not (exists ((i@@70 Int) ) (!  (and (InRangeVec_158161 v@@45 i@@70) (= (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@45) i@@70) e@@16))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@69 (- 0 1))  (and (and (InRangeVec_158161 v@@45 i@@69) (= (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@45) i@@69) e@@16)) (forall ((j@@16 Int) ) (!  (=> (and (>= j@@16 0) (< j@@16 i@@69)) (not (= (|Select__T@[Int]Vec_23605_| (|v#Vec_132208| v@@45) j@@16) e@@16)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132208 v@@45 e@@16))
)))
(assert (forall ((v@@46 T@Vec_132418) (e@@17 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@71 (IndexOfVec_132418 v@@46 e@@17)))
(ite  (not (exists ((i@@72 Int) ) (!  (and (InRangeVec_118866 v@@46 i@@72) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@46) i@@72) e@@17))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@71 (- 0 1))  (and (and (InRangeVec_118866 v@@46 i@@71) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@46) i@@71) e@@17)) (forall ((j@@17 Int) ) (!  (=> (and (>= j@@17 0) (< j@@17 i@@71)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|v#Vec_132418| v@@46) j@@17) e@@17)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132418 v@@46 e@@17))
)))
(assert (forall ((v@@47 T@Vec_132457) (e@@18 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@73 (IndexOfVec_132457 v@@47 e@@18)))
(ite  (not (exists ((i@@74 Int) ) (!  (and (InRangeVec_118665 v@@47 i@@74) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@47) i@@74) e@@18))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@73 (- 0 1))  (and (and (InRangeVec_118665 v@@47 i@@73) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@47) i@@73) e@@18)) (forall ((j@@18 Int) ) (!  (=> (and (>= j@@18 0) (< j@@18 i@@73)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|v#Vec_132457| v@@47) j@@18) e@@18)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132457 v@@47 e@@18))
)))
(assert (forall ((v@@48 T@Vec_132496) (e@@19 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@75 (IndexOfVec_132496 v@@48 e@@19)))
(ite  (not (exists ((i@@76 Int) ) (!  (and (InRangeVec_118464 v@@48 i@@76) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@48) i@@76) e@@19))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@75 (- 0 1))  (and (and (InRangeVec_118464 v@@48 i@@75) (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@48) i@@75) e@@19)) (forall ((j@@19 Int) ) (!  (=> (and (>= j@@19 0) (< j@@19 i@@75)) (not (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|v#Vec_132496| v@@48) j@@19) e@@19)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132496 v@@48 e@@19))
)))
(assert (forall ((v@@49 T@Vec_132651) (e@@20 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@77 (IndexOfVec_132651 v@@49 e@@20)))
(ite  (not (exists ((i@@78 Int) ) (!  (and (InRangeVec_119067 v@@49 i@@78) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@49) i@@78) e@@20))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@77 (- 0 1))  (and (and (InRangeVec_119067 v@@49 i@@77) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@49) i@@77) e@@20)) (forall ((j@@20 Int) ) (!  (=> (and (>= j@@20 0) (< j@@20 i@@77)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_132651| v@@49) j@@20) e@@20)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_132651 v@@49 e@@20))
)))
(assert (forall ((v@@50 T@Vec_133863) (e@@21 |T@#0|) ) (! (let ((i@@79 (IndexOfVec_133863 v@@50 e@@21)))
(ite  (not (exists ((i@@80 Int) ) (!  (and (InRangeVec_117660 v@@50 i@@80) (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@50) i@@80) e@@21))
 :qid |XUSbpl.109:13|
 :skolemid |0|
))) (= i@@79 (- 0 1))  (and (and (InRangeVec_117660 v@@50 i@@79) (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@50) i@@79) e@@21)) (forall ((j@@21 Int) ) (!  (=> (and (>= j@@21 0) (< j@@21 i@@79)) (not (= (|Select__T@[Int]#0_| (|v#Vec_133863| v@@50) j@@21) e@@21)))
 :qid |XUSbpl.117:17|
 :skolemid |1|
)))))
 :qid |XUSbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_133863 v@@50 e@@21))
)))
(assert (forall ((|l#0| Bool) (i@@81 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81) |l#0|)
 :qid |XUSbpl.275:54|
 :skolemid |1131|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@81))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_131853|) (|l#1| |T@[$1_Event_EventHandle]Multiset_131853|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| |l#1| handle@@0))))
(Multiset_131853 (|lambda#36| (|v#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| |l#0@@0| handle@@0)) (|v#Multiset_131853| (|Select__T@[$1_Event_EventHandle]Multiset_131853_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XUSbpl.2959:13|
 :skolemid |1132|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_131853_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@82 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82) (ite  (and (>= i@@82 |l#0@@1|) (< i@@82 |l#1@@0|)) (ite (< i@@82 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@82) (|Select__T@[Int]#0_| |l#4| (- i@@82 |l#5|))) |l#6|))
 :qid |XUSbpl.73:19|
 :skolemid |1133|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@82))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@83 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83) (ite  (and (<= |l#0@@2| i@@83) (< i@@83 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@83) |l#4@@0|)) |l#5@@0|))
 :qid |XUSbpl.82:30|
 :skolemid |1134|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@83))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@22 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22) (ite  (and (>= j@@22 |l#0@@3|) (< j@@22 |l#1@@2|)) (ite (< j@@22 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@22) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@22 |l#5@@1|))) |l#6@@0|))
 :qid |XUSbpl.63:20|
 :skolemid |1135|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@22))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@84 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84) (ite  (and (>= i@@84 |l#0@@4|) (< i@@84 |l#1@@3|)) (ite (< i@@84 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@84) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@84 |l#5@@2|))) |l#6@@1|))
 :qid |XUSbpl.73:19|
 :skolemid |1136|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@84))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@85 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85) (ite  (and (<= |l#0@@5| i@@85) (< i@@85 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@85) |l#4@@3|)) |l#5@@3|))
 :qid |XUSbpl.82:30|
 :skolemid |1137|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@85))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@23 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23) (ite  (and (>= j@@23 |l#0@@6|) (< j@@23 |l#1@@5|)) (ite (< j@@23 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@23) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@23 |l#5@@4|))) |l#6@@2|))
 :qid |XUSbpl.63:20|
 :skolemid |1138|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@23))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@86 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86) (ite  (and (>= i@@86 |l#0@@7|) (< i@@86 |l#1@@6|)) (ite (< i@@86 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@86) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@86 |l#5@@5|))) |l#6@@3|))
 :qid |XUSbpl.73:19|
 :skolemid |1139|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@86))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@87 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87) (ite  (and (<= |l#0@@8| i@@87) (< i@@87 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@87) |l#4@@6|)) |l#5@@6|))
 :qid |XUSbpl.82:30|
 :skolemid |1140|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@87))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@24 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24) (ite  (and (>= j@@24 |l#0@@9|) (< j@@24 |l#1@@8|)) (ite (< j@@24 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@24) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@24 |l#5@@7|))) |l#6@@4|))
 :qid |XUSbpl.63:20|
 :skolemid |1141|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@24))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@88 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88) (ite  (and (>= i@@88 |l#0@@10|) (< i@@88 |l#1@@9|)) (ite (< i@@88 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@88) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@88 |l#5@@8|))) |l#6@@5|))
 :qid |XUSbpl.73:19|
 :skolemid |1142|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@88))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@89 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89) (ite  (and (<= |l#0@@11| i@@89) (< i@@89 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@89) |l#4@@9|)) |l#5@@9|))
 :qid |XUSbpl.82:30|
 :skolemid |1143|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@89))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@25 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25) (ite  (and (>= j@@25 |l#0@@12|) (< j@@25 |l#1@@11|)) (ite (< j@@25 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@25) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@25 |l#5@@10|))) |l#6@@6|))
 :qid |XUSbpl.63:20|
 :skolemid |1144|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@25))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@11| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@11| Int) (|l#6@@7| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@90 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90) (ite  (and (>= i@@90 |l#0@@13|) (< i@@90 |l#1@@12|)) (ite (< i@@90 |l#2@@11|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@11| i@@90) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@11| (- i@@90 |l#5@@11|))) |l#6@@7|))
 :qid |XUSbpl.73:19|
 :skolemid |1145|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@90))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| |T@$1_Diem_PreburnWithMetadata'#0'|) (i@@91 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91) (ite  (and (<= |l#0@@14| i@@91) (< i@@91 |l#1@@13|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#2@@12| (- (- |l#3@@12| i@@91) |l#4@@12|)) |l#5@@12|))
 :qid |XUSbpl.82:30|
 :skolemid |1146|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@91))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#4@@13| |T@[Int]$1_Diem_PreburnWithMetadata'#0'|) (|l#5@@13| Int) (|l#6@@8| |T@$1_Diem_PreburnWithMetadata'#0'|) (j@@26 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26) (ite  (and (>= j@@26 |l#0@@15|) (< j@@26 |l#1@@14|)) (ite (< j@@26 |l#2@@13|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#3@@13| j@@26) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| |l#4@@13| (+ j@@26 |l#5@@13|))) |l#6@@8|))
 :qid |XUSbpl.63:20|
 :skolemid |1147|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'#0'_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@26))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@14| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@14| Int) (|l#6@@9| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@92 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92) (ite  (and (>= i@@92 |l#0@@16|) (< i@@92 |l#1@@15|)) (ite (< i@@92 |l#2@@14|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@14| i@@92) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@14| (- i@@92 |l#5@@14|))) |l#6@@9|))
 :qid |XUSbpl.73:19|
 :skolemid |1148|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@92))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (i@@93 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93) (ite  (and (<= |l#0@@17| i@@93) (< i@@93 |l#1@@16|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#2@@15| (- (- |l#3@@15| i@@93) |l#4@@15|)) |l#5@@15|))
 :qid |XUSbpl.82:30|
 :skolemid |1149|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@93))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#4@@16| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (|l#5@@16| Int) (|l#6@@10| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) (j@@27 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27) (ite  (and (>= j@@27 |l#0@@18|) (< j@@27 |l#1@@17|)) (ite (< j@@27 |l#2@@16|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#3@@16| j@@27) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| |l#4@@16| (+ j@@27 |l#5@@16|))) |l#6@@10|))
 :qid |XUSbpl.63:20|
 :skolemid |1150|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XDX_XDX'_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@27))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@17| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@17| Int) (|l#6@@11| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@94 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94) (ite  (and (>= i@@94 |l#0@@19|) (< i@@94 |l#1@@18|)) (ite (< i@@94 |l#2@@17|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@17| i@@94) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@17| (- i@@94 |l#5@@17|))) |l#6@@11|))
 :qid |XUSbpl.73:19|
 :skolemid |1151|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@94))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (i@@95 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95) (ite  (and (<= |l#0@@20| i@@95) (< i@@95 |l#1@@19|)) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#2@@18| (- (- |l#3@@18| i@@95) |l#4@@18|)) |l#5@@18|))
 :qid |XUSbpl.82:30|
 :skolemid |1152|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@95))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#4@@19| |T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (|l#5@@19| Int) (|l#6@@12| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) (j@@28 Int) ) (! (= (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28) (ite  (and (>= j@@28 |l#0@@21|) (< j@@28 |l#1@@20|)) (ite (< j@@28 |l#2@@19|) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#3@@19| j@@28) (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| |l#4@@19| (+ j@@28 |l#5@@19|))) |l#6@@12|))
 :qid |XUSbpl.63:20|
 :skolemid |1153|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnWithMetadata'$1_XUS_XUS'_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@28))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@20| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@20| Int) (|l#6@@13| T@$1_VASPDomain_VASPDomain) (i@@96 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96) (ite  (and (>= i@@96 |l#0@@22|) (< i@@96 |l#1@@21|)) (ite (< i@@96 |l#2@@20|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@20| i@@96) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@20| (- i@@96 |l#5@@20|))) |l#6@@13|))
 :qid |XUSbpl.73:19|
 :skolemid |1154|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@96))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| T@$1_VASPDomain_VASPDomain) (i@@97 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97) (ite  (and (<= |l#0@@23| i@@97) (< i@@97 |l#1@@22|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@21| (- (- |l#3@@21| i@@97) |l#4@@21|)) |l#5@@21|))
 :qid |XUSbpl.82:30|
 :skolemid |1155|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@97))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@22| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@22| Int) (|l#6@@14| T@$1_VASPDomain_VASPDomain) (j@@29 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29) (ite  (and (>= j@@29 |l#0@@24|) (< j@@29 |l#1@@23|)) (ite (< j@@29 |l#2@@22|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@22| j@@29) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@22| (+ j@@29 |l#5@@22|))) |l#6@@14|))
 :qid |XUSbpl.63:20|
 :skolemid |1156|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@29))
)))
(assert (forall ((|l#0@@25| Int) (|l#1@@24| Int) (|l#2@@23| Int) (|l#3@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@23| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@23| Int) (|l#6@@15| T@$1_ValidatorConfig_Config) (i@@98 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98) (ite  (and (>= i@@98 |l#0@@25|) (< i@@98 |l#1@@24|)) (ite (< i@@98 |l#2@@23|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@23| i@@98) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@23| (- i@@98 |l#5@@23|))) |l#6@@15|))
 :qid |XUSbpl.73:19|
 :skolemid |1157|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#27| |l#0@@25| |l#1@@24| |l#2@@23| |l#3@@23| |l#4@@23| |l#5@@23| |l#6@@15|) i@@98))
)))
(assert (forall ((|l#0@@26| Int) (|l#1@@25| Int) (|l#2@@24| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@24| Int) (|l#4@@24| Int) (|l#5@@24| T@$1_ValidatorConfig_Config) (i@@99 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99) (ite  (and (<= |l#0@@26| i@@99) (< i@@99 |l#1@@25|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@24| (- (- |l#3@@24| i@@99) |l#4@@24|)) |l#5@@24|))
 :qid |XUSbpl.82:30|
 :skolemid |1158|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#28| |l#0@@26| |l#1@@25| |l#2@@24| |l#3@@24| |l#4@@24| |l#5@@24|) i@@99))
)))
(assert (forall ((|l#0@@27| Int) (|l#1@@26| Int) (|l#2@@25| Int) (|l#3@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@25| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@25| Int) (|l#6@@16| T@$1_ValidatorConfig_Config) (j@@30 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30) (ite  (and (>= j@@30 |l#0@@27|) (< j@@30 |l#1@@26|)) (ite (< j@@30 |l#2@@25|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@25| j@@30) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@25| (+ j@@30 |l#5@@25|))) |l#6@@16|))
 :qid |XUSbpl.63:20|
 :skolemid |1159|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#29| |l#0@@27| |l#1@@26| |l#2@@25| |l#3@@25| |l#4@@25| |l#5@@25| |l#6@@16|) j@@30))
)))
(assert (forall ((|l#0@@28| Int) (|l#1@@27| Int) (|l#2@@26| Int) (|l#3@@26| |T@[Int]Vec_23605|) (|l#4@@26| |T@[Int]Vec_23605|) (|l#5@@26| Int) (|l#6@@17| T@Vec_23605) (i@@100 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100) (ite  (and (>= i@@100 |l#0@@28|) (< i@@100 |l#1@@27|)) (ite (< i@@100 |l#2@@26|) (|Select__T@[Int]Vec_23605_| |l#3@@26| i@@100) (|Select__T@[Int]Vec_23605_| |l#4@@26| (- i@@100 |l#5@@26|))) |l#6@@17|))
 :qid |XUSbpl.73:19|
 :skolemid |1160|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#30| |l#0@@28| |l#1@@27| |l#2@@26| |l#3@@26| |l#4@@26| |l#5@@26| |l#6@@17|) i@@100))
)))
(assert (forall ((|l#0@@29| Int) (|l#1@@28| Int) (|l#2@@27| |T@[Int]Vec_23605|) (|l#3@@27| Int) (|l#4@@27| Int) (|l#5@@27| T@Vec_23605) (i@@101 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101) (ite  (and (<= |l#0@@29| i@@101) (< i@@101 |l#1@@28|)) (|Select__T@[Int]Vec_23605_| |l#2@@27| (- (- |l#3@@27| i@@101) |l#4@@27|)) |l#5@@27|))
 :qid |XUSbpl.82:30|
 :skolemid |1161|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#31| |l#0@@29| |l#1@@28| |l#2@@27| |l#3@@27| |l#4@@27| |l#5@@27|) i@@101))
)))
(assert (forall ((|l#0@@30| Int) (|l#1@@29| Int) (|l#2@@28| Int) (|l#3@@28| |T@[Int]Vec_23605|) (|l#4@@28| |T@[Int]Vec_23605|) (|l#5@@28| Int) (|l#6@@18| T@Vec_23605) (j@@31 Int) ) (! (= (|Select__T@[Int]Vec_23605_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31) (ite  (and (>= j@@31 |l#0@@30|) (< j@@31 |l#1@@29|)) (ite (< j@@31 |l#2@@28|) (|Select__T@[Int]Vec_23605_| |l#3@@28| j@@31) (|Select__T@[Int]Vec_23605_| |l#4@@28| (+ j@@31 |l#5@@28|))) |l#6@@18|))
 :qid |XUSbpl.63:20|
 :skolemid |1162|
 :pattern ( (|Select__T@[Int]Vec_23605_| (|lambda#32| |l#0@@30| |l#1@@29| |l#2@@28| |l#3@@28| |l#4@@28| |l#5@@28| |l#6@@18|) j@@31))
)))
(assert (forall ((|l#0@@31| Int) (|l#1@@30| Int) (|l#2@@29| Int) (|l#3@@29| |T@[Int]Int|) (|l#4@@29| |T@[Int]Int|) (|l#5@@29| Int) (|l#6@@19| Int) (i@@102 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102) (ite  (and (>= i@@102 |l#0@@31|) (< i@@102 |l#1@@30|)) (ite (< i@@102 |l#2@@29|) (|Select__T@[Int]Int_| |l#3@@29| i@@102) (|Select__T@[Int]Int_| |l#4@@29| (- i@@102 |l#5@@29|))) |l#6@@19|))
 :qid |XUSbpl.73:19|
 :skolemid |1163|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#33| |l#0@@31| |l#1@@30| |l#2@@29| |l#3@@29| |l#4@@29| |l#5@@29| |l#6@@19|) i@@102))
)))
(assert (forall ((|l#0@@32| Int) (|l#1@@31| Int) (|l#2@@30| |T@[Int]Int|) (|l#3@@30| Int) (|l#4@@30| Int) (|l#5@@30| Int) (i@@103 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103) (ite  (and (<= |l#0@@32| i@@103) (< i@@103 |l#1@@31|)) (|Select__T@[Int]Int_| |l#2@@30| (- (- |l#3@@30| i@@103) |l#4@@30|)) |l#5@@30|))
 :qid |XUSbpl.82:30|
 :skolemid |1164|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#34| |l#0@@32| |l#1@@31| |l#2@@30| |l#3@@30| |l#4@@30| |l#5@@30|) i@@103))
)))
(assert (forall ((|l#0@@33| Int) (|l#1@@32| Int) (|l#2@@31| Int) (|l#3@@31| |T@[Int]Int|) (|l#4@@31| |T@[Int]Int|) (|l#5@@31| Int) (|l#6@@20| Int) (j@@32 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32) (ite  (and (>= j@@32 |l#0@@33|) (< j@@32 |l#1@@32|)) (ite (< j@@32 |l#2@@31|) (|Select__T@[Int]Int_| |l#3@@31| j@@32) (|Select__T@[Int]Int_| |l#4@@31| (+ j@@32 |l#5@@31|))) |l#6@@20|))
 :qid |XUSbpl.63:20|
 :skolemid |1165|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#35| |l#0@@33| |l#1@@32| |l#2@@31| |l#3@@31| |l#4@@31| |l#5@@31| |l#6@@20|) j@@32))
)))
(assert (forall ((|l#0@@34| |T@[$EventRep]Int|) (|l#1@@33| |T@[$EventRep]Int|) (v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51) (- (|Select__T@[$EventRep]Int_| |l#0@@34| v@@51) (|Select__T@[$EventRep]Int_| |l#1@@33| v@@51)))
 :qid |XUSbpl.154:29|
 :skolemid |1166|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#36| |l#0@@34| |l#1@@33|) v@@51))
)))
; Valid

