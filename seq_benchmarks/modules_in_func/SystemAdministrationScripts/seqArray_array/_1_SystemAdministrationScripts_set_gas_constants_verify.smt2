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
(declare-datatypes ((T@$Memory_66817 0)) ((($Memory_66817 (|domain#$Memory_66817| |T@[Int]Bool|) (|contents#$Memory_66817| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_88439 0)) ((($Memory_88439 (|domain#$Memory_88439| |T@[Int]Bool|) (|contents#$Memory_88439| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_87904 0)) ((($Memory_87904 (|domain#$Memory_87904| |T@[Int]Bool|) (|contents#$Memory_87904| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_86297 0)) ((($Memory_86297 (|domain#$Memory_86297| |T@[Int]Bool|) (|contents#$Memory_86297| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_86609 0)) ((($Memory_86609 (|domain#$Memory_86609| |T@[Int]Bool|) (|contents#$Memory_86609| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_86264 0)) ((($Memory_86264 (|domain#$Memory_86264| |T@[Int]Bool|) (|contents#$Memory_86264| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_86044 0)) ((($Memory_86044 (|domain#$Memory_86044| |T@[Int]Bool|) (|contents#$Memory_86044| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_85034 0)) ((($Memory_85034 (|domain#$Memory_85034| |T@[Int]Bool|) (|contents#$Memory_85034| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_84611 0)) ((($Memory_84611 (|domain#$Memory_84611| |T@[Int]Bool|) (|contents#$Memory_84611| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_84547 0)) ((($Memory_84547 (|domain#$Memory_84547| |T@[Int]Bool|) (|contents#$Memory_84547| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_84397 0)) ((($Memory_84397 (|domain#$Memory_84397| |T@[Int]Bool|) (|contents#$Memory_84397| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_83787 0)) ((($Memory_83787 (|domain#$Memory_83787| |T@[Int]Bool|) (|contents#$Memory_83787| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_83568 0)) ((($Memory_83568 (|domain#$Memory_83568| |T@[Int]Bool|) (|contents#$Memory_83568| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_87500 0)) ((($Memory_87500 (|domain#$Memory_87500| |T@[Int]Bool|) (|contents#$Memory_87500| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_82808 0)) ((($Memory_82808 (|domain#$Memory_82808| |T@[Int]Bool|) (|contents#$Memory_82808| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_79083 0)) ((($Memory_79083 (|domain#$Memory_79083| |T@[Int]Bool|) (|contents#$Memory_79083| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_87726 0)) ((($Memory_87726 (|domain#$Memory_87726| |T@[Int]Bool|) (|contents#$Memory_87726| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_83076 0)) ((($Memory_83076 (|domain#$Memory_83076| |T@[Int]Bool|) (|contents#$Memory_83076| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_83874 0)) ((($Memory_83874 (|domain#$Memory_83874| |T@[Int]Bool|) (|contents#$Memory_83874| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_87635 0)) ((($Memory_87635 (|domain#$Memory_87635| |T@[Int]Bool|) (|contents#$Memory_87635| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_82985 0)) ((($Memory_82985 (|domain#$Memory_82985| |T@[Int]Bool|) (|contents#$Memory_82985| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_84791 0)) ((($Memory_84791 (|domain#$Memory_84791| |T@[Int]Bool|) (|contents#$Memory_84791| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_78207 0)) ((($Memory_78207 (|domain#$Memory_78207| |T@[Int]Bool|) (|contents#$Memory_78207| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_78120 0)) ((($Memory_78120 (|domain#$Memory_78120| |T@[Int]Bool|) (|contents#$Memory_78120| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_78033 0)) ((($Memory_78033 (|domain#$Memory_78033| |T@[Int]Bool|) (|contents#$Memory_78033| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_77946 0)) ((($Memory_77946 (|domain#$Memory_77946| |T@[Int]Bool|) (|contents#$Memory_77946| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_78462 0)) ((($Memory_78462 (|domain#$Memory_78462| |T@[Int]Bool|) (|contents#$Memory_78462| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_76553 0)) ((($Memory_76553 (|domain#$Memory_76553| |T@[Int]Bool|) (|contents#$Memory_76553| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_76619 0)) ((($Memory_76619 (|domain#$Memory_76619| |T@[Int]Bool|) (|contents#$Memory_76619| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_76472 0)) ((($Memory_76472 (|domain#$Memory_76472| |T@[Int]Bool|) (|contents#$Memory_76472| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_75779 0)) ((($Memory_75779 (|domain#$Memory_75779| |T@[Int]Bool|) (|contents#$Memory_75779| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_44897 0)) (((Vec_44897 (|v#Vec_44897| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_44897| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_44897) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_44858 0)) (((Vec_44858 (|v#Vec_44858| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_44858| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_44858) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_17281 0)) (((Vec_17281 (|v#Vec_17281| |T@[Int]Int|) (|l#Vec_17281| Int) ) ) ))
(declare-sort |T@[Int]Vec_17281| 0)
(declare-datatypes ((T@Vec_45082 0)) (((Vec_45082 (|v#Vec_45082| |T@[Int]Vec_17281|) (|l#Vec_45082| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_45082) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_76782 0)) ((($Memory_76782 (|domain#$Memory_76782| |T@[Int]Bool|) (|contents#$Memory_76782| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_45082) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_76718 0)) ((($Memory_76718 (|domain#$Memory_76718| |T@[Int]Bool|) (|contents#$Memory_76718| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_17281) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_17281) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_76391 0)) ((($Memory_76391 (|domain#$Memory_76391| |T@[Int]Bool|) (|contents#$Memory_76391| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_17281) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_76310 0)) ((($Memory_76310 (|domain#$Memory_76310| |T@[Int]Bool|) (|contents#$Memory_76310| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_17281) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_86776 0)) ((($Memory_86776 (|domain#$Memory_86776| |T@[Int]Bool|) (|contents#$Memory_86776| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_17281) (|$base_url#$1_DualAttestation_Credential| T@Vec_17281) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_17281) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_84970 0)) ((($Memory_84970 (|domain#$Memory_84970| |T@[Int]Bool|) (|contents#$Memory_84970| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_17281) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_45300 0)) (((Vec_45300 (|v#Vec_45300| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_45300| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_45300) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_84514 0)) ((($Memory_84514 (|domain#$Memory_84514| |T@[Int]Bool|) (|contents#$Memory_84514| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_17281) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_78857 0)) ((($Memory_78857 (|domain#$Memory_78857| |T@[Int]Bool|) (|contents#$Memory_78857| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_17281) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_78793 0)) ((($Memory_78793 (|domain#$Memory_78793| |T@[Int]Bool|) (|contents#$Memory_78793| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_17281) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_17281) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_17281) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_44819 0)) (((Vec_44819 (|v#Vec_44819| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_44819| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_44819) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_45025 0)) (((Vec_45025 (|v#Vec_45025| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_45025| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_45025) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_76229 0)) ((($Memory_76229 (|domain#$Memory_76229| |T@[Int]Bool|) (|contents#$Memory_76229| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_17281) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_17281) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_75167 0)) ((($Memory_75167 (|domain#$Memory_75167| |T@[Int]Bool|) (|contents#$Memory_75167| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_17281) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_74664 0)) ((($Memory_74664 (|domain#$Memory_74664| |T@[Int]Bool|) (|contents#$Memory_74664| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_74337 0)) ((($Memory_74337 (|domain#$Memory_74337| |T@[Int]Bool|) (|contents#$Memory_74337| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_74173 0)) ((($Memory_74173 (|domain#$Memory_74173| |T@[Int]Bool|) (|contents#$Memory_74173| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_17281) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_17281) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_17281) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_17281) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_17281) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_17281) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_17281) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_17281) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_17281) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_17281) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_17281) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_17281) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_17281) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_44733 0)) (((Multiset_44733 (|v#Multiset_44733| |T@[$EventRep]Int|) (|l#Multiset_44733| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_44733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_44733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_91934 0)) ((($Mutation_91934 (|l#$Mutation_91934| T@$Location) (|p#$Mutation_91934| T@Vec_17281) (|v#$Mutation_91934| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((T@$Mutation_91893 0)) ((($Mutation_91893 (|l#$Mutation_91893| T@$Location) (|p#$Mutation_91893| T@Vec_17281) (|v#$Mutation_91893| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_91850 0)) ((($Mutation_91850 (|l#$Mutation_91850| T@$Location) (|p#$Mutation_91850| T@Vec_17281) (|v#$Mutation_91850| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$Mutation_67448 0)) ((($Mutation_67448 (|l#$Mutation_67448| T@$Location) (|p#$Mutation_67448| T@Vec_17281) (|v#$Mutation_67448| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10506 0)) ((($Mutation_10506 (|l#$Mutation_10506| T@$Location) (|p#$Mutation_10506| T@Vec_17281) (|v#$Mutation_10506| Int) ) ) ))
(declare-datatypes ((T@$Mutation_61705 0)) ((($Mutation_61705 (|l#$Mutation_61705| T@$Location) (|p#$Mutation_61705| T@Vec_17281) (|v#$Mutation_61705| T@Vec_17281) ) ) ))
(declare-datatypes ((T@$Mutation_60617 0)) ((($Mutation_60617 (|l#$Mutation_60617| T@$Location) (|p#$Mutation_60617| T@Vec_17281) (|v#$Mutation_60617| T@Vec_45082) ) ) ))
(declare-datatypes ((T@$Mutation_58908 0)) ((($Mutation_58908 (|l#$Mutation_58908| T@$Location) (|p#$Mutation_58908| T@Vec_17281) (|v#$Mutation_58908| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_57921 0)) ((($Mutation_57921 (|l#$Mutation_57921| T@$Location) (|p#$Mutation_57921| T@Vec_17281) (|v#$Mutation_57921| T@Vec_44819) ) ) ))
(declare-datatypes ((T@$Mutation_56266 0)) ((($Mutation_56266 (|l#$Mutation_56266| T@$Location) (|p#$Mutation_56266| T@Vec_17281) (|v#$Mutation_56266| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_55279 0)) ((($Mutation_55279 (|l#$Mutation_55279| T@$Location) (|p#$Mutation_55279| T@Vec_17281) (|v#$Mutation_55279| T@Vec_45300) ) ) ))
(declare-datatypes ((T@$Mutation_53601 0)) ((($Mutation_53601 (|l#$Mutation_53601| T@$Location) (|p#$Mutation_53601| T@Vec_17281) (|v#$Mutation_53601| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_52614 0)) ((($Mutation_52614 (|l#$Mutation_52614| T@$Location) (|p#$Mutation_52614| T@Vec_17281) (|v#$Mutation_52614| T@Vec_45025) ) ) ))
(declare-datatypes ((T@$Mutation_50814 0)) ((($Mutation_50814 (|l#$Mutation_50814| T@$Location) (|p#$Mutation_50814| T@Vec_17281) (|v#$Mutation_50814| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_49827 0)) ((($Mutation_49827 (|l#$Mutation_49827| T@$Location) (|p#$Mutation_49827| T@Vec_17281) (|v#$Mutation_49827| T@Vec_44897) ) ) ))
(declare-datatypes ((T@$Mutation_48114 0)) ((($Mutation_48114 (|l#$Mutation_48114| T@$Location) (|p#$Mutation_48114| T@Vec_17281) (|v#$Mutation_48114| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_47127 0)) ((($Mutation_47127 (|l#$Mutation_47127| T@$Location) (|p#$Mutation_47127| T@Vec_17281) (|v#$Mutation_47127| T@Vec_44858) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_44858 T@Vec_44858) Bool)
(declare-fun InRangeVec_39012 (T@Vec_44858 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_44858) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_44858 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_44897 T@Vec_44897) Bool)
(declare-fun InRangeVec_39213 (T@Vec_44897 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_44897) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_44897 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_45025 T@Vec_45025) Bool)
(declare-fun InRangeVec_39414 (T@Vec_45025 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_17281 T@Vec_17281) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_45025) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_45025 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_45300 T@Vec_45300) Bool)
(declare-fun InRangeVec_39615 (T@Vec_45300 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_45300) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_45300 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_44819 T@Vec_44819) Bool)
(declare-fun InRangeVec_39816 (T@Vec_44819 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_44819) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_44819 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_45082 T@Vec_45082) Bool)
(declare-fun InRangeVec_60040 (T@Vec_45082 Int) Bool)
(declare-fun |Select__T@[Int]Vec_17281_| (|T@[Int]Vec_17281| Int) T@Vec_17281)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_45082) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_17281) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_45082 T@Vec_17281) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_17281 T@Vec_17281) Bool)
(declare-fun InRangeVec_9882 (T@Vec_17281 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_17281) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_17281 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_17281 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_17281) T@Vec_17281)
(declare-fun $1_Hash_sha3 (T@Vec_17281) T@Vec_17281)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_17281) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_17281 T@Vec_17281 T@Vec_17281) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_44733_| (|T@[$1_Event_EventHandle]Multiset_44733| T@$1_Event_EventHandle) T@Multiset_44733)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (T@$1_DiemConsensusConfig_DiemConsensusConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
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
(declare-fun IndexOfVec_17281 (T@Vec_17281 Int) Int)
(declare-fun IndexOfVec_44819 (T@Vec_44819 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_44858 (T@Vec_44858 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_44897 (T@Vec_44897 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_45025 (T@Vec_45025 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_45082 (T@Vec_45082 T@Vec_17281) Int)
(declare-fun IndexOfVec_45300 (T@Vec_45300 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_44733| |T@[$1_Event_EventHandle]Multiset_44733|) |T@[$1_Event_EventHandle]Multiset_44733|)
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
(declare-fun |lambda#18| (Int Int Int |T@[Int]Vec_17281| |T@[Int]Vec_17281| Int T@Vec_17281) |T@[Int]Vec_17281|)
(declare-fun |lambda#19| (Int Int |T@[Int]Vec_17281| Int Int T@Vec_17281) |T@[Int]Vec_17281|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]Vec_17281| |T@[Int]Vec_17281| Int T@Vec_17281) |T@[Int]Vec_17281|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#22| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SystemAdministrationScriptsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SystemAdministrationScriptsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SystemAdministrationScriptsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SystemAdministrationScriptsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SystemAdministrationScriptsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SystemAdministrationScriptsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SystemAdministrationScriptsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SystemAdministrationScriptsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_44858) (v2 T@Vec_44858) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2)  (and (= (|l#Vec_44858| v1) (|l#Vec_44858| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_39012 v1 i@@0) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v1) i@@0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v2) i@@0)))
 :qid |SystemAdministrationScriptsbpl.615:13|
 :skolemid |17|
))))
 :qid |SystemAdministrationScriptsbpl.613:62|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_44858) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_44858| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_39012 v@@4 i@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@4) i@@1)))
 :qid |SystemAdministrationScriptsbpl.621:13|
 :skolemid |19|
))))
 :qid |SystemAdministrationScriptsbpl.619:62|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_44858) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@2 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_39012 v@@5 i@@3)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@5) i@@3) e))
 :qid |SystemAdministrationScriptsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_39012 v@@5 i@@2)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@5) j) e)))
 :qid |SystemAdministrationScriptsbpl.634:17|
 :skolemid |22|
)))))
 :qid |SystemAdministrationScriptsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_44897) (v2@@0 T@Vec_44897) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_44897| v1@@0) (|l#Vec_44897| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_39213 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v2@@0) i@@4)))
 :qid |SystemAdministrationScriptsbpl.796:13|
 :skolemid |24|
))))
 :qid |SystemAdministrationScriptsbpl.794:59|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_44897) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_44897| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_39213 v@@6 i@@5) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@6) i@@5)))
 :qid |SystemAdministrationScriptsbpl.802:13|
 :skolemid |26|
))))
 :qid |SystemAdministrationScriptsbpl.800:59|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_44897) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_39213 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@7) i@@7) e@@0))
 :qid |SystemAdministrationScriptsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_39213 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@7) j@@0) e@@0)))
 :qid |SystemAdministrationScriptsbpl.815:17|
 :skolemid |29|
)))))
 :qid |SystemAdministrationScriptsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_45025) (v2@@1 T@Vec_45025) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1)  (and (= (|l#Vec_45025| v1@@1) (|l#Vec_45025| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_39414 v1@@1 i@@8) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8)))))
 :qid |SystemAdministrationScriptsbpl.977:13|
 :skolemid |31|
))))
 :qid |SystemAdministrationScriptsbpl.975:53|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_45025) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_45025| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_39414 v@@8 i@@9) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@8) i@@9)))
 :qid |SystemAdministrationScriptsbpl.983:13|
 :skolemid |33|
))))
 :qid |SystemAdministrationScriptsbpl.981:53|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_45025) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_39414 v@@9 i@@11)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1))))
 :qid |SystemAdministrationScriptsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_39414 v@@9 i@@10)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))))
 :qid |SystemAdministrationScriptsbpl.996:17|
 :skolemid |36|
)))))
 :qid |SystemAdministrationScriptsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_45300) (v2@@2 T@Vec_45300) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@2 v2@@2)  (and (= (|l#Vec_45300| v1@@2) (|l#Vec_45300| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_39615 v1@@2 i@@12) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v1@@2) i@@12)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v2@@2) i@@12))))
 :qid |SystemAdministrationScriptsbpl.1158:13|
 :skolemid |38|
))))
 :qid |SystemAdministrationScriptsbpl.1156:50|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_45300) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_45300| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_39615 v@@10 i@@13) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@10) i@@13)))
 :qid |SystemAdministrationScriptsbpl.1164:13|
 :skolemid |40|
))))
 :qid |SystemAdministrationScriptsbpl.1162:50|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_45300) (e@@2 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@14 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_39615 v@@11 i@@15)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@11) i@@15)) (|$domain#$1_VASPDomain_VASPDomain| e@@2)))
 :qid |SystemAdministrationScriptsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_39615 v@@11 i@@14)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@11) i@@14)) (|$domain#$1_VASPDomain_VASPDomain| e@@2))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@11) j@@2)) (|$domain#$1_VASPDomain_VASPDomain| e@@2))))
 :qid |SystemAdministrationScriptsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |SystemAdministrationScriptsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_44819) (v2@@3 T@Vec_44819) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@3 v2@@3)  (and (= (|l#Vec_44819| v1@@3) (|l#Vec_44819| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_39816 v1@@3 i@@16) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v1@@3) i@@16)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v1@@3) i@@16)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v2@@3) i@@16)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v1@@3) i@@16)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v2@@3) i@@16)))))
 :qid |SystemAdministrationScriptsbpl.1339:13|
 :skolemid |45|
))))
 :qid |SystemAdministrationScriptsbpl.1337:51|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_44819) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_44819| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_39816 v@@12 i@@17) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@12) i@@17)))
 :qid |SystemAdministrationScriptsbpl.1345:13|
 :skolemid |47|
))))
 :qid |SystemAdministrationScriptsbpl.1343:51|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_44819) (e@@3 T@$1_ValidatorConfig_Config) ) (! (let ((i@@18 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_39816 v@@13 i@@19)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@19)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@19)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@19)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3))))
 :qid |SystemAdministrationScriptsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_39816 v@@13 i@@18)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@18)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@18)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@18)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) j@@3)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) j@@3)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) j@@3)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3)))))
 :qid |SystemAdministrationScriptsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |SystemAdministrationScriptsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_45082) (v2@@4 T@Vec_45082) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@4 v2@@4)  (and (= (|l#Vec_45082| v1@@4) (|l#Vec_45082| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_60040 v1@@4 i@@20) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v1@@4) i@@20) (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v2@@4) i@@20)))
 :qid |SystemAdministrationScriptsbpl.1520:13|
 :skolemid |52|
))))
 :qid |SystemAdministrationScriptsbpl.1518:33|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_45082) ) (! (= (|$IsValid'vec'vec'u8'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_45082| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_60040 v@@14 i@@21) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@14) i@@21)))
 :qid |SystemAdministrationScriptsbpl.1526:13|
 :skolemid |54|
))))
 :qid |SystemAdministrationScriptsbpl.1524:33|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_45082) (e@@4 T@Vec_17281) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_60040 v@@15 i@@23)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@15) i@@23) e@@4))
 :qid |SystemAdministrationScriptsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_60040 v@@15 i@@22)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@15) j@@4) e@@4)))
 :qid |SystemAdministrationScriptsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |SystemAdministrationScriptsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_17281) (v2@@5 T@Vec_17281) ) (! (= (|$IsEqual'vec'address''| v1@@5 v2@@5)  (and (= (|l#Vec_17281| v1@@5) (|l#Vec_17281| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_9882 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_17281| v2@@5) i@@24)))
 :qid |SystemAdministrationScriptsbpl.1701:13|
 :skolemid |59|
))))
 :qid |SystemAdministrationScriptsbpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'address''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_17281) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_17281| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_9882 v@@16 i@@25) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_17281| v@@16) i@@25)))
 :qid |SystemAdministrationScriptsbpl.1707:13|
 :skolemid |61|
))))
 :qid |SystemAdministrationScriptsbpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_17281) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_9882 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@17) i@@27) e@@5))
 :qid |SystemAdministrationScriptsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_9882 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@17) j@@5) e@@5)))
 :qid |SystemAdministrationScriptsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |SystemAdministrationScriptsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_17281) (v2@@6 T@Vec_17281) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6)  (and (= (|l#Vec_17281| v1@@6) (|l#Vec_17281| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_9882 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_17281| v2@@6) i@@28)))
 :qid |SystemAdministrationScriptsbpl.1882:13|
 :skolemid |66|
))))
 :qid |SystemAdministrationScriptsbpl.1880:28|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'u8''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_17281) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_17281| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_9882 v@@18 i@@29) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_17281| v@@18) i@@29)))
 :qid |SystemAdministrationScriptsbpl.1888:13|
 :skolemid |68|
))))
 :qid |SystemAdministrationScriptsbpl.1886:28|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_17281) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_9882 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@19) i@@31) e@@6))
 :qid |SystemAdministrationScriptsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_9882 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@19) j@@6) e@@6)))
 :qid |SystemAdministrationScriptsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |SystemAdministrationScriptsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_17281) (v2@@7 T@Vec_17281) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7)))
 :qid |SystemAdministrationScriptsbpl.2074:15|
 :skolemid |73|
 :pattern ( ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7))
)))
(assert (forall ((v1@@8 T@Vec_17281) (v2@@8 T@Vec_17281) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8)))
 :qid |SystemAdministrationScriptsbpl.2090:15|
 :skolemid |74|
 :pattern ( ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8))
)))
(assert (forall ((k1 T@Vec_17281) (k2 T@Vec_17281) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SystemAdministrationScriptsbpl.2161:15|
 :skolemid |75|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_17281) (s2 T@Vec_17281) (k1@@0 T@Vec_17281) (k2@@0 T@Vec_17281) (m1 T@Vec_17281) (m2 T@Vec_17281) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SystemAdministrationScriptsbpl.2164:15|
 :skolemid |76|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_44733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_44733| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_44733| stream) v@@20) 0)
 :qid |SystemAdministrationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |SystemAdministrationScriptsbpl.2225:13|
 :skolemid |77|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |SystemAdministrationScriptsbpl.2266:80|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@9 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@9 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@9) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@9)))
 :qid |SystemAdministrationScriptsbpl.2272:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@9) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@9))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |SystemAdministrationScriptsbpl.2322:82|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@10 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@10 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@10)))
 :qid |SystemAdministrationScriptsbpl.2328:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@10))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |SystemAdministrationScriptsbpl.2378:80|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@11 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@11 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@11)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@11))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@11))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@11) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@11)))
 :qid |SystemAdministrationScriptsbpl.2384:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@11) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@11))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |SystemAdministrationScriptsbpl.2434:79|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@12 T@$1_DiemAccount_AdminTransactionEvent) (v2@@12 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@12) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@12)))
 :qid |SystemAdministrationScriptsbpl.2440:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@12) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@12))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |SystemAdministrationScriptsbpl.2490:76|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@13 T@$1_DiemAccount_CreateAccountEvent) (v2@@13 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@13)))
 :qid |SystemAdministrationScriptsbpl.2496:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@13))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |SystemAdministrationScriptsbpl.2546:78|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@14 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@14)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@14)))
 :qid |SystemAdministrationScriptsbpl.2552:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@14))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |SystemAdministrationScriptsbpl.2602:74|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_SentPaymentEvent) (v2@@15 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@15))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@15))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@15))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@15)))
 :qid |SystemAdministrationScriptsbpl.2608:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@15))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |SystemAdministrationScriptsbpl.2658:69|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@16 T@$1_DiemBlock_NewBlockEvent) (v2@@16 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@16) (|$round#$1_DiemBlock_NewBlockEvent| v2@@16)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@16) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@16))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@16) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@16))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@16) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@16))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@16) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@16)))
 :qid |SystemAdministrationScriptsbpl.2664:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@16) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@16))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |SystemAdministrationScriptsbpl.2714:70|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@17 T@$1_DiemConfig_NewEpochEvent) (v2@@17 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@17) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@17)))
 :qid |SystemAdministrationScriptsbpl.2720:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@17) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@17))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |SystemAdministrationScriptsbpl.2770:60|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@18 T@$1_Diem_BurnEvent) (v2@@18 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@18) (|$amount#$1_Diem_BurnEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@18) (|$currency_code#$1_Diem_BurnEvent| v2@@18))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@18) (|$preburn_address#$1_Diem_BurnEvent| v2@@18))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@18) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@18)))
 :qid |SystemAdministrationScriptsbpl.2776:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@18) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@18))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |SystemAdministrationScriptsbpl.2826:66|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@19 T@$1_Diem_CancelBurnEvent) (v2@@19 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@19) (|$amount#$1_Diem_CancelBurnEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@19) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@19))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@19) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@19))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@19)))
 :qid |SystemAdministrationScriptsbpl.2832:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@19))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |SystemAdministrationScriptsbpl.2882:60|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@20 T@$1_Diem_MintEvent) (v2@@20 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@20) (|$amount#$1_Diem_MintEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@20) (|$currency_code#$1_Diem_MintEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@20) (|$ToEventRep'$1_Diem_MintEvent'| v2@@20)))
 :qid |SystemAdministrationScriptsbpl.2888:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@20) (|$ToEventRep'$1_Diem_MintEvent'| v2@@20))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |SystemAdministrationScriptsbpl.2938:63|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@21 T@$1_Diem_PreburnEvent) (v2@@21 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@21) (|$amount#$1_Diem_PreburnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@21) (|$currency_code#$1_Diem_PreburnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@21) (|$preburn_address#$1_Diem_PreburnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@21) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@21)))
 :qid |SystemAdministrationScriptsbpl.2944:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@21) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@21))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |SystemAdministrationScriptsbpl.2994:79|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@22 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@22 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@22) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@22)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@22) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@22) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@22)))
 :qid |SystemAdministrationScriptsbpl.3000:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@22) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@22))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |SystemAdministrationScriptsbpl.3050:82|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@23 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@23 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@23) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@23)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@23) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@23))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@23) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@23)))
 :qid |SystemAdministrationScriptsbpl.3056:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@23) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@23))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |SystemAdministrationScriptsbpl.3106:88|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@24 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@24 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@24) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@24)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@24) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@24))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@24)))
 :qid |SystemAdministrationScriptsbpl.3112:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@24))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |SystemAdministrationScriptsbpl.3162:72|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@25 T@$1_VASPDomain_VASPDomainEvent) (v2@@25 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@25) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@25)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@25)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@25) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@25))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@25) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@25)))
 :qid |SystemAdministrationScriptsbpl.3168:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@25) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@25))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |SystemAdministrationScriptsbpl.3234:61|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |SystemAdministrationScriptsbpl.3293:36|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |SystemAdministrationScriptsbpl.3312:71|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |SystemAdministrationScriptsbpl.3335:46|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |SystemAdministrationScriptsbpl.3347:64|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |SystemAdministrationScriptsbpl.3359:75|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |SystemAdministrationScriptsbpl.3371:72|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |SystemAdministrationScriptsbpl.3399:55|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |SystemAdministrationScriptsbpl.3422:46|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |SystemAdministrationScriptsbpl.3434:15|
 :skolemid |122|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |SystemAdministrationScriptsbpl.3447:49|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |SystemAdministrationScriptsbpl.3665:71|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |SystemAdministrationScriptsbpl.3678:91|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |SystemAdministrationScriptsbpl.3691:113|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |SystemAdministrationScriptsbpl.3704:89|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |SystemAdministrationScriptsbpl.3717:75|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |SystemAdministrationScriptsbpl.3730:73|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |SystemAdministrationScriptsbpl.3750:48|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |SystemAdministrationScriptsbpl.3767:57|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |SystemAdministrationScriptsbpl.3781:83|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@18) true)
 :qid |SystemAdministrationScriptsbpl.3795:101|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |SystemAdministrationScriptsbpl.3809:87|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |SystemAdministrationScriptsbpl.3823:85|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |SystemAdministrationScriptsbpl.3837:48|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |SystemAdministrationScriptsbpl.3858:45|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |SystemAdministrationScriptsbpl.3872:51|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |SystemAdministrationScriptsbpl.3895:48|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |SystemAdministrationScriptsbpl.3913:49|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |SystemAdministrationScriptsbpl.3926:65|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |SystemAdministrationScriptsbpl.3948:45|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |SystemAdministrationScriptsbpl.3961:45|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@29) true)
 :qid |SystemAdministrationScriptsbpl.3974:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@30))))
 :qid |SystemAdministrationScriptsbpl.3994:38|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@31))))
 :qid |SystemAdministrationScriptsbpl.4016:44|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@32)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))))
 :qid |SystemAdministrationScriptsbpl.4068:53|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))))
 :qid |SystemAdministrationScriptsbpl.4141:53|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@34) true)
 :qid |SystemAdministrationScriptsbpl.4178:55|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@35)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@35))))
 :qid |SystemAdministrationScriptsbpl.4195:38|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@36) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@36)))
 :qid |SystemAdministrationScriptsbpl.4209:48|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@37) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@37)))
 :qid |SystemAdministrationScriptsbpl.4223:48|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@38)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@38))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@38))))
 :qid |SystemAdministrationScriptsbpl.4243:41|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@39)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@39)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@39))))
 :qid |SystemAdministrationScriptsbpl.4262:57|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@39))
)))
(assert (forall ((s@@40 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@40) true)
 :qid |SystemAdministrationScriptsbpl.4276:68|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@41)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))))
 :qid |SystemAdministrationScriptsbpl.4298:66|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@42)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))))
 :qid |SystemAdministrationScriptsbpl.4324:66|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@43) true)
 :qid |SystemAdministrationScriptsbpl.4341:31|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@43))
)))
(assert (forall ((s@@44 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@44) true)
 :qid |SystemAdministrationScriptsbpl.4359:31|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@44))
)))
(assert (forall ((s@@45 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@45)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@45)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@45))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@45))))
 :qid |SystemAdministrationScriptsbpl.4378:35|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@46) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@46)))
 :qid |SystemAdministrationScriptsbpl.4394:45|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@46))
)))
(assert (forall ((s@@47 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@47)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@47))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@47))))
 :qid |SystemAdministrationScriptsbpl.4412:50|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@48) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@48)))
 :qid |SystemAdministrationScriptsbpl.4428:52|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@48))
)))
(assert (forall ((s@@49 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@49) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@49)))
 :qid |SystemAdministrationScriptsbpl.4441:46|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@49))
)))
(assert (forall ((s@@50 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@50) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@50)))
 :qid |SystemAdministrationScriptsbpl.4464:38|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@50))
)))
(assert (forall ((s@@51 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@51) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@51)))
 :qid |SystemAdministrationScriptsbpl.4478:39|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@51))
)))
(assert (forall ((s@@52 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52))))
 :qid |SystemAdministrationScriptsbpl.4505:65|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@53)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@53))))
 :qid |SystemAdministrationScriptsbpl.4533:60|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54))))
 :qid |SystemAdministrationScriptsbpl.4550:66|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@55)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@55)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@55))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@55))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@55))))
 :qid |SystemAdministrationScriptsbpl.4579:50|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@56) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@56)))
 :qid |SystemAdministrationScriptsbpl.4602:45|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@57)) true))
 :qid |SystemAdministrationScriptsbpl.4619:87|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |SystemAdministrationScriptsbpl.4633:47|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |SystemAdministrationScriptsbpl.4652:58|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |SystemAdministrationScriptsbpl.4668:39|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@61))))
 :qid |SystemAdministrationScriptsbpl.4690:58|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62))))
 :qid |SystemAdministrationScriptsbpl.4707:58|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63) true)
 :qid |SystemAdministrationScriptsbpl.4722:51|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64))))
 :qid |SystemAdministrationScriptsbpl.4739:60|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@65)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@65))))
 :qid |SystemAdministrationScriptsbpl.4773:47|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@66))))
 :qid |SystemAdministrationScriptsbpl.4799:63|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@67)))
 :qid |SystemAdministrationScriptsbpl.4814:57|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67))
)))
(assert (forall ((s@@68 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@68) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@68)))
 :qid |SystemAdministrationScriptsbpl.4827:55|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@68))
)))
(assert (forall ((s@@69 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@69) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@69)))
 :qid |SystemAdministrationScriptsbpl.4841:55|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@70)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@70))))
 :qid |SystemAdministrationScriptsbpl.4858:54|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@71) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@71)))
 :qid |SystemAdministrationScriptsbpl.4872:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@72) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@72)))
 :qid |SystemAdministrationScriptsbpl.4885:57|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@73)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@73)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@73))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@73))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@73))))
 :qid |SystemAdministrationScriptsbpl.4907:56|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@74))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@74))))
 :qid |SystemAdministrationScriptsbpl.4934:52|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@75) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@75)))
 :qid |SystemAdministrationScriptsbpl.4952:54|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@76)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@76)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@76))))
 :qid |SystemAdministrationScriptsbpl.4973:47|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@77)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@77)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@77))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@77))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@77))))
 :qid |SystemAdministrationScriptsbpl.4997:47|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@78) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@78)))
 :qid |SystemAdministrationScriptsbpl.5015:63|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |SystemAdministrationScriptsbpl.5350:49|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |SystemAdministrationScriptsbpl.5392:49|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |SystemAdministrationScriptsbpl.5421:48|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |SystemAdministrationScriptsbpl.5992:47|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@21 T@Vec_44858) (i@@32 Int) ) (! (= (InRangeVec_39012 v@@21 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_44858| v@@21))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39012 v@@21 i@@32))
)))
(assert (forall ((v@@22 T@Vec_44897) (i@@33 Int) ) (! (= (InRangeVec_39213 v@@22 i@@33)  (and (>= i@@33 0) (< i@@33 (|l#Vec_44897| v@@22))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39213 v@@22 i@@33))
)))
(assert (forall ((v@@23 T@Vec_45025) (i@@34 Int) ) (! (= (InRangeVec_39414 v@@23 i@@34)  (and (>= i@@34 0) (< i@@34 (|l#Vec_45025| v@@23))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39414 v@@23 i@@34))
)))
(assert (forall ((v@@24 T@Vec_45300) (i@@35 Int) ) (! (= (InRangeVec_39615 v@@24 i@@35)  (and (>= i@@35 0) (< i@@35 (|l#Vec_45300| v@@24))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39615 v@@24 i@@35))
)))
(assert (forall ((v@@25 T@Vec_44819) (i@@36 Int) ) (! (= (InRangeVec_39816 v@@25 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_44819| v@@25))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39816 v@@25 i@@36))
)))
(assert (forall ((v@@26 T@Vec_45082) (i@@37 Int) ) (! (= (InRangeVec_60040 v@@26 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_45082| v@@26))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_60040 v@@26 i@@37))
)))
(assert (forall ((v@@27 T@Vec_17281) (i@@38 Int) ) (! (= (InRangeVec_9882 v@@27 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_17281| v@@27))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9882 v@@27 i@@38))
)))
(assert (forall ((v@@28 T@Vec_17281) (e@@7 Int) ) (! (let ((i@@39 (IndexOfVec_17281 v@@28 e@@7)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_9882 v@@28 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@28) i@@40) e@@7))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_9882 v@@28 i@@39) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@28) i@@39) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@39)) (not (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@28) j@@7) e@@7)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_17281 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_44819) (e@@8 T@$1_ValidatorConfig_Config) ) (! (let ((i@@41 (IndexOfVec_44819 v@@29 e@@8)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_39816 v@@29 i@@42) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@29) i@@42) e@@8))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_39816 v@@29 i@@41) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@29) i@@41) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@41)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@29) j@@8) e@@8)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44819 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_44858) (e@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@43 (IndexOfVec_44858 v@@30 e@@9)))
(ite  (not (exists ((i@@44 Int) ) (!  (and (InRangeVec_39012 v@@30 i@@44) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@30) i@@44) e@@9))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@43 (- 0 1))  (and (and (InRangeVec_39012 v@@30 i@@43) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@30) i@@43) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@43)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@30) j@@9) e@@9)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44858 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_44897) (e@@10 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@45 (IndexOfVec_44897 v@@31 e@@10)))
(ite  (not (exists ((i@@46 Int) ) (!  (and (InRangeVec_39213 v@@31 i@@46) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@31) i@@46) e@@10))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@45 (- 0 1))  (and (and (InRangeVec_39213 v@@31 i@@45) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@31) i@@45) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@45)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@31) j@@10) e@@10)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44897 v@@31 e@@10))
)))
(assert (forall ((v@@32 T@Vec_45025) (e@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@47 (IndexOfVec_45025 v@@32 e@@11)))
(ite  (not (exists ((i@@48 Int) ) (!  (and (InRangeVec_39414 v@@32 i@@48) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@32) i@@48) e@@11))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@47 (- 0 1))  (and (and (InRangeVec_39414 v@@32 i@@47) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@32) i@@47) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@47)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@32) j@@11) e@@11)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_45025 v@@32 e@@11))
)))
(assert (forall ((v@@33 T@Vec_45082) (e@@12 T@Vec_17281) ) (! (let ((i@@49 (IndexOfVec_45082 v@@33 e@@12)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_60040 v@@33 i@@50) (= (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@33) i@@50) e@@12))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_60040 v@@33 i@@49) (= (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@33) i@@49) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@49)) (not (= (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@33) j@@12) e@@12)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_45082 v@@33 e@@12))
)))
(assert (forall ((v@@34 T@Vec_45300) (e@@13 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@51 (IndexOfVec_45300 v@@34 e@@13)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_39615 v@@34 i@@52) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@34) i@@52) e@@13))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_39615 v@@34 i@@51) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@34) i@@51) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@51)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@34) j@@13) e@@13)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_45300 v@@34 e@@13))
)))
(assert (forall ((|l#0| Bool) (i@@53 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53) |l#0|)
 :qid |SystemAdministrationScriptsbpl.275:54|
 :skolemid |335|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_44733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_44733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_44733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_44733| (|Select__T@[$1_Event_EventHandle]Multiset_44733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_44733| (|Select__T@[$1_Event_EventHandle]Multiset_44733_| |l#1| handle@@0))))
(Multiset_44733 (|lambda#24| (|v#Multiset_44733| (|Select__T@[$1_Event_EventHandle]Multiset_44733_| |l#0@@0| handle@@0)) (|v#Multiset_44733| (|Select__T@[$1_Event_EventHandle]Multiset_44733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |SystemAdministrationScriptsbpl.2235:13|
 :skolemid |336|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_44733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5| Int) (|l#6| T@$1_DiemAccount_KeyRotationCapability) (i@@54 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54) (ite  (and (>= i@@54 |l#0@@1|) (< i@@54 |l#1@@0|)) (ite (< i@@54 |l#2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3| i@@54) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4| (- i@@54 |l#5|))) |l#6|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |337|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_DiemAccount_KeyRotationCapability) (i@@55 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55) (ite  (and (<= |l#0@@2| i@@55) (< i@@55 |l#1@@1|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@0| (- (- |l#3@@0| i@@55) |l#4@@0|)) |l#5@@0|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |338|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@1| Int) (|l#6@@0| T@$1_DiemAccount_KeyRotationCapability) (j@@14 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14) (ite  (and (>= j@@14 |l#0@@3|) (< j@@14 |l#1@@2|)) (ite (< j@@14 |l#2@@1|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@1| j@@14) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@1| (+ j@@14 |l#5@@1|))) |l#6@@0|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |339|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_WithdrawCapability) (i@@56 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56) (ite  (and (>= i@@56 |l#0@@4|) (< i@@56 |l#1@@3|)) (ite (< i@@56 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@2| i@@56) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@2| (- i@@56 |l#5@@2|))) |l#6@@1|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_WithdrawCapability) (i@@57 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57) (ite  (and (<= |l#0@@5| i@@57) (< i@@57 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@3| (- (- |l#3@@3| i@@57) |l#4@@3|)) |l#5@@3|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |341|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_WithdrawCapability) (j@@15 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15) (ite  (and (>= j@@15 |l#0@@6|) (< j@@15 |l#1@@5|)) (ite (< j@@15 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@4| j@@15) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@4| (+ j@@15 |l#5@@4|))) |l#6@@2|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemSystem_ValidatorInfo) (i@@58 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58) (ite  (and (>= i@@58 |l#0@@7|) (< i@@58 |l#1@@6|)) (ite (< i@@58 |l#2@@5|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@5| i@@58) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@5| (- i@@58 |l#5@@5|))) |l#6@@3|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |343|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemSystem_ValidatorInfo) (i@@59 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59) (ite  (and (<= |l#0@@8| i@@59) (< i@@59 |l#1@@7|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@6| (- (- |l#3@@6| i@@59) |l#4@@6|)) |l#5@@6|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |344|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemSystem_ValidatorInfo) (j@@16 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16) (ite  (and (>= j@@16 |l#0@@9|) (< j@@16 |l#1@@8|)) (ite (< j@@16 |l#2@@7|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@7| j@@16) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@7| (+ j@@16 |l#5@@7|))) |l#6@@4|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |345|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@8| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@8| Int) (|l#6@@5| T@$1_VASPDomain_VASPDomain) (i@@60 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60) (ite  (and (>= i@@60 |l#0@@10|) (< i@@60 |l#1@@9|)) (ite (< i@@60 |l#2@@8|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@8| i@@60) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@8| (- i@@60 |l#5@@8|))) |l#6@@5|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |346|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_VASPDomain_VASPDomain) (i@@61 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61) (ite  (and (<= |l#0@@11| i@@61) (< i@@61 |l#1@@10|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@9| (- (- |l#3@@9| i@@61) |l#4@@9|)) |l#5@@9|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |347|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@10| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@10| Int) (|l#6@@6| T@$1_VASPDomain_VASPDomain) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17) (ite  (and (>= j@@17 |l#0@@12|) (< j@@17 |l#1@@11|)) (ite (< j@@17 |l#2@@10|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@10| j@@17) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@10| (+ j@@17 |l#5@@10|))) |l#6@@6|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |348|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@11| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@11| Int) (|l#6@@7| T@$1_ValidatorConfig_Config) (i@@62 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62) (ite  (and (>= i@@62 |l#0@@13|) (< i@@62 |l#1@@12|)) (ite (< i@@62 |l#2@@11|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@11| i@@62) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@11| (- i@@62 |l#5@@11|))) |l#6@@7|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |349|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_ValidatorConfig_Config) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63) (ite  (and (<= |l#0@@14| i@@63) (< i@@63 |l#1@@13|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@12| (- (- |l#3@@12| i@@63) |l#4@@12|)) |l#5@@12|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |350|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@13| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@13| Int) (|l#6@@8| T@$1_ValidatorConfig_Config) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18) (ite  (and (>= j@@18 |l#0@@15|) (< j@@18 |l#1@@14|)) (ite (< j@@18 |l#2@@13|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@13| j@@18) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@13| (+ j@@18 |l#5@@13|))) |l#6@@8|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |351|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]Vec_17281|) (|l#4@@14| |T@[Int]Vec_17281|) (|l#5@@14| Int) (|l#6@@9| T@Vec_17281) (i@@64 Int) ) (! (= (|Select__T@[Int]Vec_17281_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64) (ite  (and (>= i@@64 |l#0@@16|) (< i@@64 |l#1@@15|)) (ite (< i@@64 |l#2@@14|) (|Select__T@[Int]Vec_17281_| |l#3@@14| i@@64) (|Select__T@[Int]Vec_17281_| |l#4@@14| (- i@@64 |l#5@@14|))) |l#6@@9|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |352|
 :pattern ( (|Select__T@[Int]Vec_17281_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]Vec_17281|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@Vec_17281) (i@@65 Int) ) (! (= (|Select__T@[Int]Vec_17281_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65) (ite  (and (<= |l#0@@17| i@@65) (< i@@65 |l#1@@16|)) (|Select__T@[Int]Vec_17281_| |l#2@@15| (- (- |l#3@@15| i@@65) |l#4@@15|)) |l#5@@15|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |353|
 :pattern ( (|Select__T@[Int]Vec_17281_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]Vec_17281|) (|l#4@@16| |T@[Int]Vec_17281|) (|l#5@@16| Int) (|l#6@@10| T@Vec_17281) (j@@19 Int) ) (! (= (|Select__T@[Int]Vec_17281_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19) (ite  (and (>= j@@19 |l#0@@18|) (< j@@19 |l#1@@17|)) (ite (< j@@19 |l#2@@16|) (|Select__T@[Int]Vec_17281_| |l#3@@16| j@@19) (|Select__T@[Int]Vec_17281_| |l#4@@16| (+ j@@19 |l#5@@16|))) |l#6@@10|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |354|
 :pattern ( (|Select__T@[Int]Vec_17281_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Int|) (|l#4@@17| |T@[Int]Int|) (|l#5@@17| Int) (|l#6@@11| Int) (i@@66 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66) (ite  (and (>= i@@66 |l#0@@19|) (< i@@66 |l#1@@18|)) (ite (< i@@66 |l#2@@17|) (|Select__T@[Int]Int_| |l#3@@17| i@@66) (|Select__T@[Int]Int_| |l#4@@17| (- i@@66 |l#5@@17|))) |l#6@@11|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |355|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Int|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| Int) (i@@67 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67) (ite  (and (<= |l#0@@20| i@@67) (< i@@67 |l#1@@19|)) (|Select__T@[Int]Int_| |l#2@@18| (- (- |l#3@@18| i@@67) |l#4@@18|)) |l#5@@18|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |356|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Int|) (|l#4@@19| |T@[Int]Int|) (|l#5@@19| Int) (|l#6@@12| Int) (j@@20 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20) (ite  (and (>= j@@20 |l#0@@21|) (< j@@20 |l#1@@20|)) (ite (< j@@20 |l#2@@19|) (|Select__T@[Int]Int_| |l#3@@19| j@@20) (|Select__T@[Int]Int_| |l#4@@19| (+ j@@20 |l#5@@19|))) |l#6@@12|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |357|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20))
)))
(assert (forall ((|l#0@@22| |T@[$EventRep]Int|) (|l#1@@21| |T@[$EventRep]Int|) (v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35) (- (|Select__T@[$EventRep]Int_| |l#0@@22| v@@35) (|Select__T@[$EventRep]Int_| |l#1@@21| v@@35)))
 :qid |SystemAdministrationScriptsbpl.154:29|
 :skolemid |358|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35))
)))
(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_SystemAdministrationScripts_set_gas_constants$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 126009) true)
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
(declare-datatypes ((T@$Memory_66817 0)) ((($Memory_66817 (|domain#$Memory_66817| |T@[Int]Bool|) (|contents#$Memory_66817| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_88439 0)) ((($Memory_88439 (|domain#$Memory_88439| |T@[Int]Bool|) (|contents#$Memory_88439| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_87904 0)) ((($Memory_87904 (|domain#$Memory_87904| |T@[Int]Bool|) (|contents#$Memory_87904| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_86297 0)) ((($Memory_86297 (|domain#$Memory_86297| |T@[Int]Bool|) (|contents#$Memory_86297| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_86609 0)) ((($Memory_86609 (|domain#$Memory_86609| |T@[Int]Bool|) (|contents#$Memory_86609| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_86264 0)) ((($Memory_86264 (|domain#$Memory_86264| |T@[Int]Bool|) (|contents#$Memory_86264| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_86044 0)) ((($Memory_86044 (|domain#$Memory_86044| |T@[Int]Bool|) (|contents#$Memory_86044| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_85034 0)) ((($Memory_85034 (|domain#$Memory_85034| |T@[Int]Bool|) (|contents#$Memory_85034| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_84611 0)) ((($Memory_84611 (|domain#$Memory_84611| |T@[Int]Bool|) (|contents#$Memory_84611| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_84547 0)) ((($Memory_84547 (|domain#$Memory_84547| |T@[Int]Bool|) (|contents#$Memory_84547| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_84397 0)) ((($Memory_84397 (|domain#$Memory_84397| |T@[Int]Bool|) (|contents#$Memory_84397| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_83787 0)) ((($Memory_83787 (|domain#$Memory_83787| |T@[Int]Bool|) (|contents#$Memory_83787| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_83568 0)) ((($Memory_83568 (|domain#$Memory_83568| |T@[Int]Bool|) (|contents#$Memory_83568| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_87500 0)) ((($Memory_87500 (|domain#$Memory_87500| |T@[Int]Bool|) (|contents#$Memory_87500| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_82808 0)) ((($Memory_82808 (|domain#$Memory_82808| |T@[Int]Bool|) (|contents#$Memory_82808| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_79083 0)) ((($Memory_79083 (|domain#$Memory_79083| |T@[Int]Bool|) (|contents#$Memory_79083| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_87726 0)) ((($Memory_87726 (|domain#$Memory_87726| |T@[Int]Bool|) (|contents#$Memory_87726| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_83076 0)) ((($Memory_83076 (|domain#$Memory_83076| |T@[Int]Bool|) (|contents#$Memory_83076| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_83874 0)) ((($Memory_83874 (|domain#$Memory_83874| |T@[Int]Bool|) (|contents#$Memory_83874| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_87635 0)) ((($Memory_87635 (|domain#$Memory_87635| |T@[Int]Bool|) (|contents#$Memory_87635| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_82985 0)) ((($Memory_82985 (|domain#$Memory_82985| |T@[Int]Bool|) (|contents#$Memory_82985| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_84791 0)) ((($Memory_84791 (|domain#$Memory_84791| |T@[Int]Bool|) (|contents#$Memory_84791| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_78207 0)) ((($Memory_78207 (|domain#$Memory_78207| |T@[Int]Bool|) (|contents#$Memory_78207| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_78120 0)) ((($Memory_78120 (|domain#$Memory_78120| |T@[Int]Bool|) (|contents#$Memory_78120| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_78033 0)) ((($Memory_78033 (|domain#$Memory_78033| |T@[Int]Bool|) (|contents#$Memory_78033| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_77946 0)) ((($Memory_77946 (|domain#$Memory_77946| |T@[Int]Bool|) (|contents#$Memory_77946| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_78462 0)) ((($Memory_78462 (|domain#$Memory_78462| |T@[Int]Bool|) (|contents#$Memory_78462| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_76553 0)) ((($Memory_76553 (|domain#$Memory_76553| |T@[Int]Bool|) (|contents#$Memory_76553| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_76619 0)) ((($Memory_76619 (|domain#$Memory_76619| |T@[Int]Bool|) (|contents#$Memory_76619| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_76472 0)) ((($Memory_76472 (|domain#$Memory_76472| |T@[Int]Bool|) (|contents#$Memory_76472| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_75779 0)) ((($Memory_75779 (|domain#$Memory_75779| |T@[Int]Bool|) (|contents#$Memory_75779| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_44897 0)) (((Vec_44897 (|v#Vec_44897| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_44897| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_44897) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_44858 0)) (((Vec_44858 (|v#Vec_44858| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_44858| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_44858) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_17281 0)) (((Vec_17281 (|v#Vec_17281| |T@[Int]Int|) (|l#Vec_17281| Int) ) ) ))
(declare-sort |T@[Int]Vec_17281| 0)
(declare-datatypes ((T@Vec_45082 0)) (((Vec_45082 (|v#Vec_45082| |T@[Int]Vec_17281|) (|l#Vec_45082| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_45082) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_76782 0)) ((($Memory_76782 (|domain#$Memory_76782| |T@[Int]Bool|) (|contents#$Memory_76782| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_45082) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_76718 0)) ((($Memory_76718 (|domain#$Memory_76718| |T@[Int]Bool|) (|contents#$Memory_76718| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_17281) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_17281) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_76391 0)) ((($Memory_76391 (|domain#$Memory_76391| |T@[Int]Bool|) (|contents#$Memory_76391| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_17281) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_76310 0)) ((($Memory_76310 (|domain#$Memory_76310| |T@[Int]Bool|) (|contents#$Memory_76310| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_17281) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_86776 0)) ((($Memory_86776 (|domain#$Memory_86776| |T@[Int]Bool|) (|contents#$Memory_86776| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_17281) (|$base_url#$1_DualAttestation_Credential| T@Vec_17281) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_17281) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_84970 0)) ((($Memory_84970 (|domain#$Memory_84970| |T@[Int]Bool|) (|contents#$Memory_84970| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_17281) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_45300 0)) (((Vec_45300 (|v#Vec_45300| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_45300| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_45300) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_84514 0)) ((($Memory_84514 (|domain#$Memory_84514| |T@[Int]Bool|) (|contents#$Memory_84514| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_17281) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_78857 0)) ((($Memory_78857 (|domain#$Memory_78857| |T@[Int]Bool|) (|contents#$Memory_78857| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_17281) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_78793 0)) ((($Memory_78793 (|domain#$Memory_78793| |T@[Int]Bool|) (|contents#$Memory_78793| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_17281) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_17281) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_17281) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_44819 0)) (((Vec_44819 (|v#Vec_44819| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_44819| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_44819) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_45025 0)) (((Vec_45025 (|v#Vec_45025| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_45025| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_45025) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_76229 0)) ((($Memory_76229 (|domain#$Memory_76229| |T@[Int]Bool|) (|contents#$Memory_76229| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_17281) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_17281) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_75167 0)) ((($Memory_75167 (|domain#$Memory_75167| |T@[Int]Bool|) (|contents#$Memory_75167| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_17281) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_74664 0)) ((($Memory_74664 (|domain#$Memory_74664| |T@[Int]Bool|) (|contents#$Memory_74664| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_74337 0)) ((($Memory_74337 (|domain#$Memory_74337| |T@[Int]Bool|) (|contents#$Memory_74337| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_74173 0)) ((($Memory_74173 (|domain#$Memory_74173| |T@[Int]Bool|) (|contents#$Memory_74173| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_17281) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_17281) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_17281) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_17281) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_17281) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_17281) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_17281) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_17281) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_17281) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_17281) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_17281) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_17281) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_17281) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_44733 0)) (((Multiset_44733 (|v#Multiset_44733| |T@[$EventRep]Int|) (|l#Multiset_44733| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_44733| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_44733|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_91934 0)) ((($Mutation_91934 (|l#$Mutation_91934| T@$Location) (|p#$Mutation_91934| T@Vec_17281) (|v#$Mutation_91934| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((T@$Mutation_91893 0)) ((($Mutation_91893 (|l#$Mutation_91893| T@$Location) (|p#$Mutation_91893| T@Vec_17281) (|v#$Mutation_91893| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_91850 0)) ((($Mutation_91850 (|l#$Mutation_91850| T@$Location) (|p#$Mutation_91850| T@Vec_17281) (|v#$Mutation_91850| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$Mutation_67448 0)) ((($Mutation_67448 (|l#$Mutation_67448| T@$Location) (|p#$Mutation_67448| T@Vec_17281) (|v#$Mutation_67448| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10506 0)) ((($Mutation_10506 (|l#$Mutation_10506| T@$Location) (|p#$Mutation_10506| T@Vec_17281) (|v#$Mutation_10506| Int) ) ) ))
(declare-datatypes ((T@$Mutation_61705 0)) ((($Mutation_61705 (|l#$Mutation_61705| T@$Location) (|p#$Mutation_61705| T@Vec_17281) (|v#$Mutation_61705| T@Vec_17281) ) ) ))
(declare-datatypes ((T@$Mutation_60617 0)) ((($Mutation_60617 (|l#$Mutation_60617| T@$Location) (|p#$Mutation_60617| T@Vec_17281) (|v#$Mutation_60617| T@Vec_45082) ) ) ))
(declare-datatypes ((T@$Mutation_58908 0)) ((($Mutation_58908 (|l#$Mutation_58908| T@$Location) (|p#$Mutation_58908| T@Vec_17281) (|v#$Mutation_58908| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_57921 0)) ((($Mutation_57921 (|l#$Mutation_57921| T@$Location) (|p#$Mutation_57921| T@Vec_17281) (|v#$Mutation_57921| T@Vec_44819) ) ) ))
(declare-datatypes ((T@$Mutation_56266 0)) ((($Mutation_56266 (|l#$Mutation_56266| T@$Location) (|p#$Mutation_56266| T@Vec_17281) (|v#$Mutation_56266| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_55279 0)) ((($Mutation_55279 (|l#$Mutation_55279| T@$Location) (|p#$Mutation_55279| T@Vec_17281) (|v#$Mutation_55279| T@Vec_45300) ) ) ))
(declare-datatypes ((T@$Mutation_53601 0)) ((($Mutation_53601 (|l#$Mutation_53601| T@$Location) (|p#$Mutation_53601| T@Vec_17281) (|v#$Mutation_53601| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_52614 0)) ((($Mutation_52614 (|l#$Mutation_52614| T@$Location) (|p#$Mutation_52614| T@Vec_17281) (|v#$Mutation_52614| T@Vec_45025) ) ) ))
(declare-datatypes ((T@$Mutation_50814 0)) ((($Mutation_50814 (|l#$Mutation_50814| T@$Location) (|p#$Mutation_50814| T@Vec_17281) (|v#$Mutation_50814| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_49827 0)) ((($Mutation_49827 (|l#$Mutation_49827| T@$Location) (|p#$Mutation_49827| T@Vec_17281) (|v#$Mutation_49827| T@Vec_44897) ) ) ))
(declare-datatypes ((T@$Mutation_48114 0)) ((($Mutation_48114 (|l#$Mutation_48114| T@$Location) (|p#$Mutation_48114| T@Vec_17281) (|v#$Mutation_48114| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_47127 0)) ((($Mutation_47127 (|l#$Mutation_47127| T@$Location) (|p#$Mutation_47127| T@Vec_17281) (|v#$Mutation_47127| T@Vec_44858) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_44858 T@Vec_44858) Bool)
(declare-fun InRangeVec_39012 (T@Vec_44858 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_44858) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_44858 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_44897 T@Vec_44897) Bool)
(declare-fun InRangeVec_39213 (T@Vec_44897 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_44897) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_44897 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_45025 T@Vec_45025) Bool)
(declare-fun InRangeVec_39414 (T@Vec_45025 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_17281 T@Vec_17281) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_45025) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_45025 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_45300 T@Vec_45300) Bool)
(declare-fun InRangeVec_39615 (T@Vec_45300 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_45300) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_45300 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_44819 T@Vec_44819) Bool)
(declare-fun InRangeVec_39816 (T@Vec_44819 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_44819) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_44819 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_45082 T@Vec_45082) Bool)
(declare-fun InRangeVec_60040 (T@Vec_45082 Int) Bool)
(declare-fun |Select__T@[Int]Vec_17281_| (|T@[Int]Vec_17281| Int) T@Vec_17281)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_45082) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_17281) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_45082 T@Vec_17281) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_17281 T@Vec_17281) Bool)
(declare-fun InRangeVec_9882 (T@Vec_17281 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_17281) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_17281 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_17281 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_17281) T@Vec_17281)
(declare-fun $1_Hash_sha3 (T@Vec_17281) T@Vec_17281)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_17281) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_17281 T@Vec_17281 T@Vec_17281) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_44733_| (|T@[$1_Event_EventHandle]Multiset_44733| T@$1_Event_EventHandle) T@Multiset_44733)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (T@$1_DiemConsensusConfig_DiemConsensusConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
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
(declare-fun IndexOfVec_17281 (T@Vec_17281 Int) Int)
(declare-fun IndexOfVec_44819 (T@Vec_44819 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_44858 (T@Vec_44858 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_44897 (T@Vec_44897 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_45025 (T@Vec_45025 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_45082 (T@Vec_45082 T@Vec_17281) Int)
(declare-fun IndexOfVec_45300 (T@Vec_45300 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_44733| |T@[$1_Event_EventHandle]Multiset_44733|) |T@[$1_Event_EventHandle]Multiset_44733|)
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
(declare-fun |lambda#18| (Int Int Int |T@[Int]Vec_17281| |T@[Int]Vec_17281| Int T@Vec_17281) |T@[Int]Vec_17281|)
(declare-fun |lambda#19| (Int Int |T@[Int]Vec_17281| Int Int T@Vec_17281) |T@[Int]Vec_17281|)
(declare-fun |lambda#20| (Int Int Int |T@[Int]Vec_17281| |T@[Int]Vec_17281| Int T@Vec_17281) |T@[Int]Vec_17281|)
(declare-fun |lambda#21| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#22| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SystemAdministrationScriptsbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SystemAdministrationScriptsbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SystemAdministrationScriptsbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SystemAdministrationScriptsbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SystemAdministrationScriptsbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SystemAdministrationScriptsbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SystemAdministrationScriptsbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SystemAdministrationScriptsbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_44858) (v2 T@Vec_44858) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2)  (and (= (|l#Vec_44858| v1) (|l#Vec_44858| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_39012 v1 i@@0) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v1) i@@0) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v2) i@@0)))
 :qid |SystemAdministrationScriptsbpl.615:13|
 :skolemid |17|
))))
 :qid |SystemAdministrationScriptsbpl.613:62|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_44858) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_44858| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_39012 v@@4 i@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@4) i@@1)))
 :qid |SystemAdministrationScriptsbpl.621:13|
 :skolemid |19|
))))
 :qid |SystemAdministrationScriptsbpl.619:62|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_44858) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@2 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_39012 v@@5 i@@3)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@5) i@@3) e))
 :qid |SystemAdministrationScriptsbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_39012 v@@5 i@@2)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@5) j) e)))
 :qid |SystemAdministrationScriptsbpl.634:17|
 :skolemid |22|
)))))
 :qid |SystemAdministrationScriptsbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_44897) (v2@@0 T@Vec_44897) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_44897| v1@@0) (|l#Vec_44897| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_39213 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v2@@0) i@@4)))
 :qid |SystemAdministrationScriptsbpl.796:13|
 :skolemid |24|
))))
 :qid |SystemAdministrationScriptsbpl.794:59|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_44897) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_44897| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_39213 v@@6 i@@5) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@6) i@@5)))
 :qid |SystemAdministrationScriptsbpl.802:13|
 :skolemid |26|
))))
 :qid |SystemAdministrationScriptsbpl.800:59|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_44897) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_39213 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@7) i@@7) e@@0))
 :qid |SystemAdministrationScriptsbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_39213 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@7) j@@0) e@@0)))
 :qid |SystemAdministrationScriptsbpl.815:17|
 :skolemid |29|
)))))
 :qid |SystemAdministrationScriptsbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_45025) (v2@@1 T@Vec_45025) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1)  (and (= (|l#Vec_45025| v1@@1) (|l#Vec_45025| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_39414 v1@@1 i@@8) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v1@@1) i@@8)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v2@@1) i@@8)))))
 :qid |SystemAdministrationScriptsbpl.977:13|
 :skolemid |31|
))))
 :qid |SystemAdministrationScriptsbpl.975:53|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_45025) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_45025| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_39414 v@@8 i@@9) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@8) i@@9)))
 :qid |SystemAdministrationScriptsbpl.983:13|
 :skolemid |33|
))))
 :qid |SystemAdministrationScriptsbpl.981:53|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_45025) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_39414 v@@9 i@@11)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@11)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1))))
 :qid |SystemAdministrationScriptsbpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_39414 v@@9 i@@10)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) i@@10)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@1)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@1))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@1))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@9) j@@1)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@1)))))
 :qid |SystemAdministrationScriptsbpl.996:17|
 :skolemid |36|
)))))
 :qid |SystemAdministrationScriptsbpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_45300) (v2@@2 T@Vec_45300) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@2 v2@@2)  (and (= (|l#Vec_45300| v1@@2) (|l#Vec_45300| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_39615 v1@@2 i@@12) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v1@@2) i@@12)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v2@@2) i@@12))))
 :qid |SystemAdministrationScriptsbpl.1158:13|
 :skolemid |38|
))))
 :qid |SystemAdministrationScriptsbpl.1156:50|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_45300) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_45300| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_39615 v@@10 i@@13) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@10) i@@13)))
 :qid |SystemAdministrationScriptsbpl.1164:13|
 :skolemid |40|
))))
 :qid |SystemAdministrationScriptsbpl.1162:50|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_45300) (e@@2 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@14 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_39615 v@@11 i@@15)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@11) i@@15)) (|$domain#$1_VASPDomain_VASPDomain| e@@2)))
 :qid |SystemAdministrationScriptsbpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_39615 v@@11 i@@14)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@11) i@@14)) (|$domain#$1_VASPDomain_VASPDomain| e@@2))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@11) j@@2)) (|$domain#$1_VASPDomain_VASPDomain| e@@2))))
 :qid |SystemAdministrationScriptsbpl.1177:17|
 :skolemid |43|
)))))
 :qid |SystemAdministrationScriptsbpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_44819) (v2@@3 T@Vec_44819) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@3 v2@@3)  (and (= (|l#Vec_44819| v1@@3) (|l#Vec_44819| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_39816 v1@@3 i@@16) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v1@@3) i@@16)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v2@@3) i@@16))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v1@@3) i@@16)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v2@@3) i@@16)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v1@@3) i@@16)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v2@@3) i@@16)))))
 :qid |SystemAdministrationScriptsbpl.1339:13|
 :skolemid |45|
))))
 :qid |SystemAdministrationScriptsbpl.1337:51|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_44819) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_44819| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_39816 v@@12 i@@17) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@12) i@@17)))
 :qid |SystemAdministrationScriptsbpl.1345:13|
 :skolemid |47|
))))
 :qid |SystemAdministrationScriptsbpl.1343:51|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_44819) (e@@3 T@$1_ValidatorConfig_Config) ) (! (let ((i@@18 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_39816 v@@13 i@@19)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@19)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@19)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@19)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3))))
 :qid |SystemAdministrationScriptsbpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_39816 v@@13 i@@18)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@18)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@18)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) i@@18)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3)))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) j@@3)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@3)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) j@@3)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@3))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@13) j@@3)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@3)))))
 :qid |SystemAdministrationScriptsbpl.1358:17|
 :skolemid |50|
)))))
 :qid |SystemAdministrationScriptsbpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_45082) (v2@@4 T@Vec_45082) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@4 v2@@4)  (and (= (|l#Vec_45082| v1@@4) (|l#Vec_45082| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_60040 v1@@4 i@@20) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v1@@4) i@@20) (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v2@@4) i@@20)))
 :qid |SystemAdministrationScriptsbpl.1520:13|
 :skolemid |52|
))))
 :qid |SystemAdministrationScriptsbpl.1518:33|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_45082) ) (! (= (|$IsValid'vec'vec'u8'''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_45082| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_60040 v@@14 i@@21) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@14) i@@21)))
 :qid |SystemAdministrationScriptsbpl.1526:13|
 :skolemid |54|
))))
 :qid |SystemAdministrationScriptsbpl.1524:33|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_45082) (e@@4 T@Vec_17281) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_60040 v@@15 i@@23)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@15) i@@23) e@@4))
 :qid |SystemAdministrationScriptsbpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_60040 v@@15 i@@22)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@15) i@@22) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@15) j@@4) e@@4)))
 :qid |SystemAdministrationScriptsbpl.1539:17|
 :skolemid |57|
)))))
 :qid |SystemAdministrationScriptsbpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_17281) (v2@@5 T@Vec_17281) ) (! (= (|$IsEqual'vec'address''| v1@@5 v2@@5)  (and (= (|l#Vec_17281| v1@@5) (|l#Vec_17281| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_9882 v1@@5 i@@24) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v1@@5) i@@24) (|Select__T@[Int]Int_| (|v#Vec_17281| v2@@5) i@@24)))
 :qid |SystemAdministrationScriptsbpl.1701:13|
 :skolemid |59|
))))
 :qid |SystemAdministrationScriptsbpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'address''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_17281) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_17281| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_9882 v@@16 i@@25) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_17281| v@@16) i@@25)))
 :qid |SystemAdministrationScriptsbpl.1707:13|
 :skolemid |61|
))))
 :qid |SystemAdministrationScriptsbpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_17281) (e@@5 Int) ) (! (let ((i@@26 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_9882 v@@17 i@@27)) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@17) i@@27) e@@5))
 :qid |SystemAdministrationScriptsbpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_9882 v@@17 i@@26)) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@17) j@@5) e@@5)))
 :qid |SystemAdministrationScriptsbpl.1720:17|
 :skolemid |64|
)))))
 :qid |SystemAdministrationScriptsbpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_17281) (v2@@6 T@Vec_17281) ) (! (= (|$IsEqual'vec'u8''| v1@@6 v2@@6)  (and (= (|l#Vec_17281| v1@@6) (|l#Vec_17281| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_9882 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_17281| v2@@6) i@@28)))
 :qid |SystemAdministrationScriptsbpl.1882:13|
 :skolemid |66|
))))
 :qid |SystemAdministrationScriptsbpl.1880:28|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'u8''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_17281) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_17281| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_9882 v@@18 i@@29) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_17281| v@@18) i@@29)))
 :qid |SystemAdministrationScriptsbpl.1888:13|
 :skolemid |68|
))))
 :qid |SystemAdministrationScriptsbpl.1886:28|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_17281) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_9882 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@19) i@@31) e@@6))
 :qid |SystemAdministrationScriptsbpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_9882 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@19) j@@6) e@@6)))
 :qid |SystemAdministrationScriptsbpl.1901:17|
 :skolemid |71|
)))))
 :qid |SystemAdministrationScriptsbpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_17281) (v2@@7 T@Vec_17281) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7)))
 :qid |SystemAdministrationScriptsbpl.2074:15|
 :skolemid |73|
 :pattern ( ($1_Hash_sha2 v1@@7) ($1_Hash_sha2 v2@@7))
)))
(assert (forall ((v1@@8 T@Vec_17281) (v2@@8 T@Vec_17281) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8)))
 :qid |SystemAdministrationScriptsbpl.2090:15|
 :skolemid |74|
 :pattern ( ($1_Hash_sha3 v1@@8) ($1_Hash_sha3 v2@@8))
)))
(assert (forall ((k1 T@Vec_17281) (k2 T@Vec_17281) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SystemAdministrationScriptsbpl.2161:15|
 :skolemid |75|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_17281) (s2 T@Vec_17281) (k1@@0 T@Vec_17281) (k2@@0 T@Vec_17281) (m1 T@Vec_17281) (m2 T@Vec_17281) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SystemAdministrationScriptsbpl.2164:15|
 :skolemid |76|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_44733_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_44733| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_44733| stream) v@@20) 0)
 :qid |SystemAdministrationScriptsbpl.159:13|
 :skolemid |4|
))))
 :qid |SystemAdministrationScriptsbpl.2225:13|
 :skolemid |77|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |SystemAdministrationScriptsbpl.2266:80|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@9 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@9 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@9) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@9)))
 :qid |SystemAdministrationScriptsbpl.2272:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@9) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@9))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |SystemAdministrationScriptsbpl.2322:82|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@10 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@10 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@10)))
 :qid |SystemAdministrationScriptsbpl.2328:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@10))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |SystemAdministrationScriptsbpl.2378:80|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@11 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@11 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@11)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@11))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@11) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@11))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@11) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@11)))
 :qid |SystemAdministrationScriptsbpl.2384:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@11) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@11))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |SystemAdministrationScriptsbpl.2434:79|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@12 T@$1_DiemAccount_AdminTransactionEvent) (v2@@12 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@12) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@12)))
 :qid |SystemAdministrationScriptsbpl.2440:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@12) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@12))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |SystemAdministrationScriptsbpl.2490:76|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@13 T@$1_DiemAccount_CreateAccountEvent) (v2@@13 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@13)))
 :qid |SystemAdministrationScriptsbpl.2496:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@13))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |SystemAdministrationScriptsbpl.2546:78|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@14 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@14)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@14) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@14))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@14)))
 :qid |SystemAdministrationScriptsbpl.2552:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@14))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |SystemAdministrationScriptsbpl.2602:74|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_SentPaymentEvent) (v2@@15 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@15))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@15))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@15) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@15))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@15)))
 :qid |SystemAdministrationScriptsbpl.2608:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@15))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |SystemAdministrationScriptsbpl.2658:69|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@16 T@$1_DiemBlock_NewBlockEvent) (v2@@16 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@16) (|$round#$1_DiemBlock_NewBlockEvent| v2@@16)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@16) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@16))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@16) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@16))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@16) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@16))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@16) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@16)))
 :qid |SystemAdministrationScriptsbpl.2664:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@16) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@16))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |SystemAdministrationScriptsbpl.2714:70|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@17 T@$1_DiemConfig_NewEpochEvent) (v2@@17 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@17) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@17)))
 :qid |SystemAdministrationScriptsbpl.2720:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@17) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@17))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |SystemAdministrationScriptsbpl.2770:60|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@18 T@$1_Diem_BurnEvent) (v2@@18 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@18) (|$amount#$1_Diem_BurnEvent| v2@@18)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@18) (|$currency_code#$1_Diem_BurnEvent| v2@@18))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@18) (|$preburn_address#$1_Diem_BurnEvent| v2@@18))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@18) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@18)))
 :qid |SystemAdministrationScriptsbpl.2776:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@18) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@18))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |SystemAdministrationScriptsbpl.2826:66|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@19 T@$1_Diem_CancelBurnEvent) (v2@@19 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@19) (|$amount#$1_Diem_CancelBurnEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@19) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@19))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@19) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@19))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@19)))
 :qid |SystemAdministrationScriptsbpl.2832:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@19))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |SystemAdministrationScriptsbpl.2882:60|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@20 T@$1_Diem_MintEvent) (v2@@20 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@20) (|$amount#$1_Diem_MintEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@20) (|$currency_code#$1_Diem_MintEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@20) (|$ToEventRep'$1_Diem_MintEvent'| v2@@20)))
 :qid |SystemAdministrationScriptsbpl.2888:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@20) (|$ToEventRep'$1_Diem_MintEvent'| v2@@20))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |SystemAdministrationScriptsbpl.2938:63|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@21 T@$1_Diem_PreburnEvent) (v2@@21 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@21) (|$amount#$1_Diem_PreburnEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@21) (|$currency_code#$1_Diem_PreburnEvent| v2@@21))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@21) (|$preburn_address#$1_Diem_PreburnEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@21) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@21)))
 :qid |SystemAdministrationScriptsbpl.2944:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@21) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@21))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |SystemAdministrationScriptsbpl.2994:79|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@22 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@22 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@22) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@22)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@22) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@22) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@22)))
 :qid |SystemAdministrationScriptsbpl.3000:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@22) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@22))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |SystemAdministrationScriptsbpl.3050:82|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@23 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@23 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@23) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@23)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@23) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@23))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@23) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@23)))
 :qid |SystemAdministrationScriptsbpl.3056:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@23) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@23))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |SystemAdministrationScriptsbpl.3106:88|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@24 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@24 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@24) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@24)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@24) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@24))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@24)))
 :qid |SystemAdministrationScriptsbpl.3112:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@24))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |SystemAdministrationScriptsbpl.3162:72|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@25 T@$1_VASPDomain_VASPDomainEvent) (v2@@25 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@25) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@25)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@25)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@25)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@25) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@25))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@25) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@25)))
 :qid |SystemAdministrationScriptsbpl.3168:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@25) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@25))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |SystemAdministrationScriptsbpl.3234:61|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |SystemAdministrationScriptsbpl.3293:36|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |SystemAdministrationScriptsbpl.3312:71|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |SystemAdministrationScriptsbpl.3335:46|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |SystemAdministrationScriptsbpl.3347:64|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |SystemAdministrationScriptsbpl.3359:75|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |SystemAdministrationScriptsbpl.3371:72|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |SystemAdministrationScriptsbpl.3399:55|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |SystemAdministrationScriptsbpl.3422:46|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |SystemAdministrationScriptsbpl.3434:15|
 :skolemid |122|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |SystemAdministrationScriptsbpl.3447:49|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |SystemAdministrationScriptsbpl.3665:71|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |SystemAdministrationScriptsbpl.3678:91|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |SystemAdministrationScriptsbpl.3691:113|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |SystemAdministrationScriptsbpl.3704:89|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |SystemAdministrationScriptsbpl.3717:75|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |SystemAdministrationScriptsbpl.3730:73|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |SystemAdministrationScriptsbpl.3750:48|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |SystemAdministrationScriptsbpl.3767:57|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |SystemAdministrationScriptsbpl.3781:83|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@18) true)
 :qid |SystemAdministrationScriptsbpl.3795:101|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |SystemAdministrationScriptsbpl.3809:87|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |SystemAdministrationScriptsbpl.3823:85|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |SystemAdministrationScriptsbpl.3837:48|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |SystemAdministrationScriptsbpl.3858:45|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |SystemAdministrationScriptsbpl.3872:51|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |SystemAdministrationScriptsbpl.3895:48|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |SystemAdministrationScriptsbpl.3913:49|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |SystemAdministrationScriptsbpl.3926:65|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |SystemAdministrationScriptsbpl.3948:45|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |SystemAdministrationScriptsbpl.3961:45|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@29) true)
 :qid |SystemAdministrationScriptsbpl.3974:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@30)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@30))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@30))))
 :qid |SystemAdministrationScriptsbpl.3994:38|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@31))))
 :qid |SystemAdministrationScriptsbpl.4016:44|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@32)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@32))))
 :qid |SystemAdministrationScriptsbpl.4068:53|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@33))))
 :qid |SystemAdministrationScriptsbpl.4141:53|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@34) true)
 :qid |SystemAdministrationScriptsbpl.4178:55|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@35)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@35))))
 :qid |SystemAdministrationScriptsbpl.4195:38|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@36) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@36)))
 :qid |SystemAdministrationScriptsbpl.4209:48|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@37) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@37)))
 :qid |SystemAdministrationScriptsbpl.4223:48|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@38)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@38))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@38))))
 :qid |SystemAdministrationScriptsbpl.4243:41|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@39)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@39)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@39))))
 :qid |SystemAdministrationScriptsbpl.4262:57|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@39))
)))
(assert (forall ((s@@40 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@40) true)
 :qid |SystemAdministrationScriptsbpl.4276:68|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@41)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@41))))
 :qid |SystemAdministrationScriptsbpl.4298:66|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@42)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@42))))
 :qid |SystemAdministrationScriptsbpl.4324:66|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@43) true)
 :qid |SystemAdministrationScriptsbpl.4341:31|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@43))
)))
(assert (forall ((s@@44 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@44) true)
 :qid |SystemAdministrationScriptsbpl.4359:31|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@44))
)))
(assert (forall ((s@@45 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@45)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@45)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@45))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@45))))
 :qid |SystemAdministrationScriptsbpl.4378:35|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@46) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@46)))
 :qid |SystemAdministrationScriptsbpl.4394:45|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@46))
)))
(assert (forall ((s@@47 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@47)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@47))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@47))))
 :qid |SystemAdministrationScriptsbpl.4412:50|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@48) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@48)))
 :qid |SystemAdministrationScriptsbpl.4428:52|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@48))
)))
(assert (forall ((s@@49 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@49) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@49)))
 :qid |SystemAdministrationScriptsbpl.4441:46|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@49))
)))
(assert (forall ((s@@50 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@50) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@50)))
 :qid |SystemAdministrationScriptsbpl.4464:38|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@50))
)))
(assert (forall ((s@@51 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@51) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@51)))
 :qid |SystemAdministrationScriptsbpl.4478:39|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@51))
)))
(assert (forall ((s@@52 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@52))))
 :qid |SystemAdministrationScriptsbpl.4505:65|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@53)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@53))))
 :qid |SystemAdministrationScriptsbpl.4533:60|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@54))))
 :qid |SystemAdministrationScriptsbpl.4550:66|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@55)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@55)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@55))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@55))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@55))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@55))))
 :qid |SystemAdministrationScriptsbpl.4579:50|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@56) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@56)))
 :qid |SystemAdministrationScriptsbpl.4602:45|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@57)) true))
 :qid |SystemAdministrationScriptsbpl.4619:87|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@58)))
 :qid |SystemAdministrationScriptsbpl.4633:47|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@59)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@59))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@59))))
 :qid |SystemAdministrationScriptsbpl.4652:58|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@60) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@60)))
 :qid |SystemAdministrationScriptsbpl.4668:39|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@61)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@61))))
 :qid |SystemAdministrationScriptsbpl.4690:58|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@62))))
 :qid |SystemAdministrationScriptsbpl.4707:58|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63) true)
 :qid |SystemAdministrationScriptsbpl.4722:51|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@64))))
 :qid |SystemAdministrationScriptsbpl.4739:60|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@65)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@65))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@65))))
 :qid |SystemAdministrationScriptsbpl.4773:47|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@66))))
 :qid |SystemAdministrationScriptsbpl.4799:63|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@67)))
 :qid |SystemAdministrationScriptsbpl.4814:57|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@67))
)))
(assert (forall ((s@@68 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@68) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@68)))
 :qid |SystemAdministrationScriptsbpl.4827:55|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@68))
)))
(assert (forall ((s@@69 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@69) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@69)))
 :qid |SystemAdministrationScriptsbpl.4841:55|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@70)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@70))))
 :qid |SystemAdministrationScriptsbpl.4858:54|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@71) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@71)))
 :qid |SystemAdministrationScriptsbpl.4872:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@72) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@72)))
 :qid |SystemAdministrationScriptsbpl.4885:57|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@73)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@73)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@73))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@73))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@73))))
 :qid |SystemAdministrationScriptsbpl.4907:56|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@74))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@74))))
 :qid |SystemAdministrationScriptsbpl.4934:52|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@75) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@75)))
 :qid |SystemAdministrationScriptsbpl.4952:54|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@76)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@76)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@76))))
 :qid |SystemAdministrationScriptsbpl.4973:47|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@77)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@77)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@77))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@77))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@77))))
 :qid |SystemAdministrationScriptsbpl.4997:47|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@78) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@78)))
 :qid |SystemAdministrationScriptsbpl.5015:63|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@79)))
 :qid |SystemAdministrationScriptsbpl.5350:49|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@80)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@80))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@80))))
 :qid |SystemAdministrationScriptsbpl.5392:49|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@81)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@81))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@81))))
 :qid |SystemAdministrationScriptsbpl.5421:48|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@82)))
 :qid |SystemAdministrationScriptsbpl.5992:47|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@82))
)))
(assert (forall ((v@@21 T@Vec_44858) (i@@32 Int) ) (! (= (InRangeVec_39012 v@@21 i@@32)  (and (>= i@@32 0) (< i@@32 (|l#Vec_44858| v@@21))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39012 v@@21 i@@32))
)))
(assert (forall ((v@@22 T@Vec_44897) (i@@33 Int) ) (! (= (InRangeVec_39213 v@@22 i@@33)  (and (>= i@@33 0) (< i@@33 (|l#Vec_44897| v@@22))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39213 v@@22 i@@33))
)))
(assert (forall ((v@@23 T@Vec_45025) (i@@34 Int) ) (! (= (InRangeVec_39414 v@@23 i@@34)  (and (>= i@@34 0) (< i@@34 (|l#Vec_45025| v@@23))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39414 v@@23 i@@34))
)))
(assert (forall ((v@@24 T@Vec_45300) (i@@35 Int) ) (! (= (InRangeVec_39615 v@@24 i@@35)  (and (>= i@@35 0) (< i@@35 (|l#Vec_45300| v@@24))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39615 v@@24 i@@35))
)))
(assert (forall ((v@@25 T@Vec_44819) (i@@36 Int) ) (! (= (InRangeVec_39816 v@@25 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_44819| v@@25))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_39816 v@@25 i@@36))
)))
(assert (forall ((v@@26 T@Vec_45082) (i@@37 Int) ) (! (= (InRangeVec_60040 v@@26 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_45082| v@@26))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_60040 v@@26 i@@37))
)))
(assert (forall ((v@@27 T@Vec_17281) (i@@38 Int) ) (! (= (InRangeVec_9882 v@@27 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_17281| v@@27))))
 :qid |SystemAdministrationScriptsbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9882 v@@27 i@@38))
)))
(assert (forall ((v@@28 T@Vec_17281) (e@@7 Int) ) (! (let ((i@@39 (IndexOfVec_17281 v@@28 e@@7)))
(ite  (not (exists ((i@@40 Int) ) (!  (and (InRangeVec_9882 v@@28 i@@40) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@28) i@@40) e@@7))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@39 (- 0 1))  (and (and (InRangeVec_9882 v@@28 i@@39) (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@28) i@@39) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (>= j@@7 0) (< j@@7 i@@39)) (not (= (|Select__T@[Int]Int_| (|v#Vec_17281| v@@28) j@@7) e@@7)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_17281 v@@28 e@@7))
)))
(assert (forall ((v@@29 T@Vec_44819) (e@@8 T@$1_ValidatorConfig_Config) ) (! (let ((i@@41 (IndexOfVec_44819 v@@29 e@@8)))
(ite  (not (exists ((i@@42 Int) ) (!  (and (InRangeVec_39816 v@@29 i@@42) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@29) i@@42) e@@8))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@41 (- 0 1))  (and (and (InRangeVec_39816 v@@29 i@@41) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@29) i@@41) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@41)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_44819| v@@29) j@@8) e@@8)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44819 v@@29 e@@8))
)))
(assert (forall ((v@@30 T@Vec_44858) (e@@9 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@43 (IndexOfVec_44858 v@@30 e@@9)))
(ite  (not (exists ((i@@44 Int) ) (!  (and (InRangeVec_39012 v@@30 i@@44) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@30) i@@44) e@@9))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@43 (- 0 1))  (and (and (InRangeVec_39012 v@@30 i@@43) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@30) i@@43) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@43)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_44858| v@@30) j@@9) e@@9)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44858 v@@30 e@@9))
)))
(assert (forall ((v@@31 T@Vec_44897) (e@@10 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@45 (IndexOfVec_44897 v@@31 e@@10)))
(ite  (not (exists ((i@@46 Int) ) (!  (and (InRangeVec_39213 v@@31 i@@46) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@31) i@@46) e@@10))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@45 (- 0 1))  (and (and (InRangeVec_39213 v@@31 i@@45) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@31) i@@45) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@45)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_44897| v@@31) j@@10) e@@10)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_44897 v@@31 e@@10))
)))
(assert (forall ((v@@32 T@Vec_45025) (e@@11 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@47 (IndexOfVec_45025 v@@32 e@@11)))
(ite  (not (exists ((i@@48 Int) ) (!  (and (InRangeVec_39414 v@@32 i@@48) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@32) i@@48) e@@11))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@47 (- 0 1))  (and (and (InRangeVec_39414 v@@32 i@@47) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@32) i@@47) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@47)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_45025| v@@32) j@@11) e@@11)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_45025 v@@32 e@@11))
)))
(assert (forall ((v@@33 T@Vec_45082) (e@@12 T@Vec_17281) ) (! (let ((i@@49 (IndexOfVec_45082 v@@33 e@@12)))
(ite  (not (exists ((i@@50 Int) ) (!  (and (InRangeVec_60040 v@@33 i@@50) (= (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@33) i@@50) e@@12))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@49 (- 0 1))  (and (and (InRangeVec_60040 v@@33 i@@49) (= (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@33) i@@49) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@49)) (not (= (|Select__T@[Int]Vec_17281_| (|v#Vec_45082| v@@33) j@@12) e@@12)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_45082 v@@33 e@@12))
)))
(assert (forall ((v@@34 T@Vec_45300) (e@@13 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@51 (IndexOfVec_45300 v@@34 e@@13)))
(ite  (not (exists ((i@@52 Int) ) (!  (and (InRangeVec_39615 v@@34 i@@52) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@34) i@@52) e@@13))
 :qid |SystemAdministrationScriptsbpl.109:13|
 :skolemid |0|
))) (= i@@51 (- 0 1))  (and (and (InRangeVec_39615 v@@34 i@@51) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@34) i@@51) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@51)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_45300| v@@34) j@@13) e@@13)))
 :qid |SystemAdministrationScriptsbpl.117:17|
 :skolemid |1|
)))))
 :qid |SystemAdministrationScriptsbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_45300 v@@34 e@@13))
)))
(assert (forall ((|l#0| Bool) (i@@53 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53) |l#0|)
 :qid |SystemAdministrationScriptsbpl.275:54|
 :skolemid |335|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@53))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_44733|) (|l#1| |T@[$1_Event_EventHandle]Multiset_44733|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_44733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_44733| (|Select__T@[$1_Event_EventHandle]Multiset_44733_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_44733| (|Select__T@[$1_Event_EventHandle]Multiset_44733_| |l#1| handle@@0))))
(Multiset_44733 (|lambda#24| (|v#Multiset_44733| (|Select__T@[$1_Event_EventHandle]Multiset_44733_| |l#0@@0| handle@@0)) (|v#Multiset_44733| (|Select__T@[$1_Event_EventHandle]Multiset_44733_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |SystemAdministrationScriptsbpl.2235:13|
 :skolemid |336|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_44733_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5| Int) (|l#6| T@$1_DiemAccount_KeyRotationCapability) (i@@54 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54) (ite  (and (>= i@@54 |l#0@@1|) (< i@@54 |l#1@@0|)) (ite (< i@@54 |l#2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3| i@@54) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4| (- i@@54 |l#5|))) |l#6|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |337|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@54))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_DiemAccount_KeyRotationCapability) (i@@55 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55) (ite  (and (<= |l#0@@2| i@@55) (< i@@55 |l#1@@1|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@0| (- (- |l#3@@0| i@@55) |l#4@@0|)) |l#5@@0|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |338|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@55))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@1| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@1| Int) (|l#6@@0| T@$1_DiemAccount_KeyRotationCapability) (j@@14 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14) (ite  (and (>= j@@14 |l#0@@3|) (< j@@14 |l#1@@2|)) (ite (< j@@14 |l#2@@1|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@1| j@@14) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@1| (+ j@@14 |l#5@@1|))) |l#6@@0|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |339|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@14))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_WithdrawCapability) (i@@56 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56) (ite  (and (>= i@@56 |l#0@@4|) (< i@@56 |l#1@@3|)) (ite (< i@@56 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@2| i@@56) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@2| (- i@@56 |l#5@@2|))) |l#6@@1|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@56))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_WithdrawCapability) (i@@57 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57) (ite  (and (<= |l#0@@5| i@@57) (< i@@57 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@3| (- (- |l#3@@3| i@@57) |l#4@@3|)) |l#5@@3|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |341|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@57))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_WithdrawCapability) (j@@15 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15) (ite  (and (>= j@@15 |l#0@@6|) (< j@@15 |l#1@@5|)) (ite (< j@@15 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@4| j@@15) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@4| (+ j@@15 |l#5@@4|))) |l#6@@2|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@15))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@5| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemSystem_ValidatorInfo) (i@@58 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58) (ite  (and (>= i@@58 |l#0@@7|) (< i@@58 |l#1@@6|)) (ite (< i@@58 |l#2@@5|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@5| i@@58) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@5| (- i@@58 |l#5@@5|))) |l#6@@3|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |343|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@58))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemSystem_ValidatorInfo) (i@@59 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59) (ite  (and (<= |l#0@@8| i@@59) (< i@@59 |l#1@@7|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@6| (- (- |l#3@@6| i@@59) |l#4@@6|)) |l#5@@6|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |344|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@59))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@7| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemSystem_ValidatorInfo) (j@@16 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16) (ite  (and (>= j@@16 |l#0@@9|) (< j@@16 |l#1@@8|)) (ite (< j@@16 |l#2@@7|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@7| j@@16) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@7| (+ j@@16 |l#5@@7|))) |l#6@@4|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |345|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@16))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@8| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@8| Int) (|l#6@@5| T@$1_VASPDomain_VASPDomain) (i@@60 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60) (ite  (and (>= i@@60 |l#0@@10|) (< i@@60 |l#1@@9|)) (ite (< i@@60 |l#2@@8|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@8| i@@60) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@8| (- i@@60 |l#5@@8|))) |l#6@@5|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |346|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@60))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_VASPDomain_VASPDomain) (i@@61 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61) (ite  (and (<= |l#0@@11| i@@61) (< i@@61 |l#1@@10|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@9| (- (- |l#3@@9| i@@61) |l#4@@9|)) |l#5@@9|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |347|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@61))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@10| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@10| Int) (|l#6@@6| T@$1_VASPDomain_VASPDomain) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17) (ite  (and (>= j@@17 |l#0@@12|) (< j@@17 |l#1@@11|)) (ite (< j@@17 |l#2@@10|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@10| j@@17) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@10| (+ j@@17 |l#5@@10|))) |l#6@@6|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |348|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@17))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@11| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@11| Int) (|l#6@@7| T@$1_ValidatorConfig_Config) (i@@62 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62) (ite  (and (>= i@@62 |l#0@@13|) (< i@@62 |l#1@@12|)) (ite (< i@@62 |l#2@@11|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@11| i@@62) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@11| (- i@@62 |l#5@@11|))) |l#6@@7|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |349|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@62))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_ValidatorConfig_Config) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63) (ite  (and (<= |l#0@@14| i@@63) (< i@@63 |l#1@@13|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@12| (- (- |l#3@@12| i@@63) |l#4@@12|)) |l#5@@12|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |350|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@63))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@13| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@13| Int) (|l#6@@8| T@$1_ValidatorConfig_Config) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18) (ite  (and (>= j@@18 |l#0@@15|) (< j@@18 |l#1@@14|)) (ite (< j@@18 |l#2@@13|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@13| j@@18) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@13| (+ j@@18 |l#5@@13|))) |l#6@@8|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |351|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@18))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]Vec_17281|) (|l#4@@14| |T@[Int]Vec_17281|) (|l#5@@14| Int) (|l#6@@9| T@Vec_17281) (i@@64 Int) ) (! (= (|Select__T@[Int]Vec_17281_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64) (ite  (and (>= i@@64 |l#0@@16|) (< i@@64 |l#1@@15|)) (ite (< i@@64 |l#2@@14|) (|Select__T@[Int]Vec_17281_| |l#3@@14| i@@64) (|Select__T@[Int]Vec_17281_| |l#4@@14| (- i@@64 |l#5@@14|))) |l#6@@9|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |352|
 :pattern ( (|Select__T@[Int]Vec_17281_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@64))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]Vec_17281|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@Vec_17281) (i@@65 Int) ) (! (= (|Select__T@[Int]Vec_17281_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65) (ite  (and (<= |l#0@@17| i@@65) (< i@@65 |l#1@@16|)) (|Select__T@[Int]Vec_17281_| |l#2@@15| (- (- |l#3@@15| i@@65) |l#4@@15|)) |l#5@@15|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |353|
 :pattern ( (|Select__T@[Int]Vec_17281_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@65))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]Vec_17281|) (|l#4@@16| |T@[Int]Vec_17281|) (|l#5@@16| Int) (|l#6@@10| T@Vec_17281) (j@@19 Int) ) (! (= (|Select__T@[Int]Vec_17281_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19) (ite  (and (>= j@@19 |l#0@@18|) (< j@@19 |l#1@@17|)) (ite (< j@@19 |l#2@@16|) (|Select__T@[Int]Vec_17281_| |l#3@@16| j@@19) (|Select__T@[Int]Vec_17281_| |l#4@@16| (+ j@@19 |l#5@@16|))) |l#6@@10|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |354|
 :pattern ( (|Select__T@[Int]Vec_17281_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@19))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Int|) (|l#4@@17| |T@[Int]Int|) (|l#5@@17| Int) (|l#6@@11| Int) (i@@66 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66) (ite  (and (>= i@@66 |l#0@@19|) (< i@@66 |l#1@@18|)) (ite (< i@@66 |l#2@@17|) (|Select__T@[Int]Int_| |l#3@@17| i@@66) (|Select__T@[Int]Int_| |l#4@@17| (- i@@66 |l#5@@17|))) |l#6@@11|))
 :qid |SystemAdministrationScriptsbpl.73:19|
 :skolemid |355|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@66))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Int|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| Int) (i@@67 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67) (ite  (and (<= |l#0@@20| i@@67) (< i@@67 |l#1@@19|)) (|Select__T@[Int]Int_| |l#2@@18| (- (- |l#3@@18| i@@67) |l#4@@18|)) |l#5@@18|))
 :qid |SystemAdministrationScriptsbpl.82:30|
 :skolemid |356|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@67))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Int|) (|l#4@@19| |T@[Int]Int|) (|l#5@@19| Int) (|l#6@@12| Int) (j@@20 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20) (ite  (and (>= j@@20 |l#0@@21|) (< j@@20 |l#1@@20|)) (ite (< j@@20 |l#2@@19|) (|Select__T@[Int]Int_| |l#3@@19| j@@20) (|Select__T@[Int]Int_| |l#4@@19| (+ j@@20 |l#5@@19|))) |l#6@@12|))
 :qid |SystemAdministrationScriptsbpl.63:20|
 :skolemid |357|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@20))
)))
(assert (forall ((|l#0@@22| |T@[$EventRep]Int|) (|l#1@@21| |T@[$EventRep]Int|) (v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35) (- (|Select__T@[$EventRep]Int_| |l#0@@22| v@@35) (|Select__T@[$EventRep]Int_| |l#1@@21| v@@35)))
 :qid |SystemAdministrationScriptsbpl.154:29|
 :skolemid |358|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#24| |l#0@@22| |l#1@@21|) v@@35))
)))
; Valid

