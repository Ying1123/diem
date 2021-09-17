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
(declare-datatypes ((T@$Memory_98742 0)) ((($Memory_98742 (|domain#$Memory_98742| |T@[Int]Bool|) (|contents#$Memory_98742| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_75755 0)) (((Vec_75755 (|v#Vec_75755| |T@[Int]#0|) (|l#Vec_75755| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_108496 0)) ((($Memory_108496 (|domain#$Memory_108496| |T@[Int]Bool|) (|contents#$Memory_108496| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_108425 0)) ((($Memory_108425 (|domain#$Memory_108425| |T@[Int]Bool|) (|contents#$Memory_108425| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_108182 0)) ((($Memory_108182 (|domain#$Memory_108182| |T@[Int]Bool|) (|contents#$Memory_108182| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_108111 0)) ((($Memory_108111 (|domain#$Memory_108111| |T@[Int]Bool|) (|contents#$Memory_108111| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_108040 0)) ((($Memory_108040 (|domain#$Memory_108040| |T@[Int]Bool|) (|contents#$Memory_108040| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_140508 0)) ((($Memory_140508 (|domain#$Memory_140508| |T@[Int]Bool|) (|contents#$Memory_140508| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_107872 0)) ((($Memory_107872 (|domain#$Memory_107872| |T@[Int]Bool|) (|contents#$Memory_107872| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_136593 0)) ((($Memory_136593 (|domain#$Memory_136593| |T@[Int]Bool|) (|contents#$Memory_136593| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_136529 0)) ((($Memory_136529 (|domain#$Memory_136529| |T@[Int]Bool|) (|contents#$Memory_136529| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_135591 0)) ((($Memory_135591 (|domain#$Memory_135591| |T@[Int]Bool|) (|contents#$Memory_135591| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_132073 0)) ((($Memory_132073 (|domain#$Memory_132073| |T@[Int]Bool|) (|contents#$Memory_132073| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_131786 0)) ((($Memory_131786 (|domain#$Memory_131786| |T@[Int]Bool|) (|contents#$Memory_131786| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107704 0)) ((($Memory_107704 (|domain#$Memory_107704| |T@[Int]Bool|) (|contents#$Memory_107704| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107465 0)) ((($Memory_107465 (|domain#$Memory_107465| |T@[Int]Bool|) (|contents#$Memory_107465| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_108354 0)) ((($Memory_108354 (|domain#$Memory_108354| |T@[Int]Bool|) (|contents#$Memory_108354| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_120361 0)) ((($Memory_120361 (|domain#$Memory_120361| |T@[Int]Bool|) (|contents#$Memory_120361| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120297 0)) ((($Memory_120297 (|domain#$Memory_120297| |T@[Int]Bool|) (|contents#$Memory_120297| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_120674 0)) ((($Memory_120674 (|domain#$Memory_120674| |T@[Int]Bool|) (|contents#$Memory_120674| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120587 0)) ((($Memory_120587 (|domain#$Memory_120587| |T@[Int]Bool|) (|contents#$Memory_120587| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_142773 0)) ((($Memory_142773 (|domain#$Memory_142773| |T@[Int]Bool|) (|contents#$Memory_142773| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_124696 0)) ((($Memory_124696 (|domain#$Memory_124696| |T@[Int]Bool|) (|contents#$Memory_124696| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_107536 0)) ((($Memory_107536 (|domain#$Memory_107536| |T@[Int]Bool|) (|contents#$Memory_107536| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_142682 0)) ((($Memory_142682 (|domain#$Memory_142682| |T@[Int]Bool|) (|contents#$Memory_142682| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_124605 0)) ((($Memory_124605 (|domain#$Memory_124605| |T@[Int]Bool|) (|contents#$Memory_124605| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107775 0)) ((($Memory_107775 (|domain#$Memory_107775| |T@[Int]Bool|) (|contents#$Memory_107775| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_116142 0)) ((($Memory_116142 (|domain#$Memory_116142| |T@[Int]Bool|) (|contents#$Memory_116142| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_116055 0)) ((($Memory_116055 (|domain#$Memory_116055| |T@[Int]Bool|) (|contents#$Memory_116055| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_115968 0)) ((($Memory_115968 (|domain#$Memory_115968| |T@[Int]Bool|) (|contents#$Memory_115968| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_115881 0)) ((($Memory_115881 (|domain#$Memory_115881| |T@[Int]Bool|) (|contents#$Memory_115881| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_115794 0)) ((($Memory_115794 (|domain#$Memory_115794| |T@[Int]Bool|) (|contents#$Memory_115794| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_115707 0)) ((($Memory_115707 (|domain#$Memory_115707| |T@[Int]Bool|) (|contents#$Memory_115707| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_107226 0)) ((($Memory_107226 (|domain#$Memory_107226| |T@[Int]Bool|) (|contents#$Memory_107226| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_114634 0)) ((($Memory_114634 (|domain#$Memory_114634| |T@[Int]Bool|) (|contents#$Memory_114634| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_107067 0)) ((($Memory_107067 (|domain#$Memory_107067| |T@[Int]Bool|) (|contents#$Memory_107067| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_106658 0)) ((($Memory_106658 (|domain#$Memory_106658| |T@[Int]Bool|) (|contents#$Memory_106658| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_106974 0)) ((($Memory_106974 (|domain#$Memory_106974| |T@[Int]Bool|) (|contents#$Memory_106974| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_74114 0)) (((Vec_74114 (|v#Vec_74114| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_74114| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_74114) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_74075 0)) (((Vec_74075 (|v#Vec_74075| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_74075| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_74075) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_20954 0)) (((Vec_20954 (|v#Vec_20954| |T@[Int]Int|) (|l#Vec_20954| Int) ) ) ))
(declare-sort |T@[Int]Vec_20954| 0)
(declare-datatypes ((T@Vec_74305 0)) (((Vec_74305 (|v#Vec_74305| |T@[Int]Vec_20954|) (|l#Vec_74305| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_74305) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_107956 0)) ((($Memory_107956 (|domain#$Memory_107956| |T@[Int]Bool|) (|contents#$Memory_107956| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_74305) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_107297 0)) ((($Memory_107297 (|domain#$Memory_107297| |T@[Int]Bool|) (|contents#$Memory_107297| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_20954) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_20954) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_108580 0)) ((($Memory_108580 (|domain#$Memory_108580| |T@[Int]Bool|) (|contents#$Memory_108580| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_20954) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_114501 0)) ((($Memory_114501 (|domain#$Memory_114501| |T@[Int]Bool|) (|contents#$Memory_114501| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_20954) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_141559 0)) ((($Memory_141559 (|domain#$Memory_141559| |T@[Int]Bool|) (|contents#$Memory_141559| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_20954) (|$base_url#$1_DualAttestation_Credential| T@Vec_20954) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_20954) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_137802 0)) ((($Memory_137802 (|domain#$Memory_137802| |T@[Int]Bool|) (|contents#$Memory_137802| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_20954) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_74543 0)) (((Vec_74543 (|v#Vec_74543| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_74543| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_74543) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_135990 0)) ((($Memory_135990 (|domain#$Memory_135990| |T@[Int]Bool|) (|contents#$Memory_135990| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_20954) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107620 0)) ((($Memory_107620 (|domain#$Memory_107620| |T@[Int]Bool|) (|contents#$Memory_107620| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_20954) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107381 0)) ((($Memory_107381 (|domain#$Memory_107381| |T@[Int]Bool|) (|contents#$Memory_107381| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_20954) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_20954) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_20954) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_74036 0)) (((Vec_74036 (|v#Vec_74036| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_74036| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_74036) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_74248 0)) (((Vec_74248 (|v#Vec_74248| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_74248| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_74248) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_107153 0)) ((($Memory_107153 (|domain#$Memory_107153| |T@[Int]Bool|) (|contents#$Memory_107153| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_20954) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_20954) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_112558 0)) ((($Memory_112558 (|domain#$Memory_112558| |T@[Int]Bool|) (|contents#$Memory_112558| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_20954) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_111915 0)) ((($Memory_111915 (|domain#$Memory_111915| |T@[Int]Bool|) (|contents#$Memory_111915| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_106787 0)) ((($Memory_106787 (|domain#$Memory_106787| |T@[Int]Bool|) (|contents#$Memory_106787| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_106105 0)) ((($Memory_106105 (|domain#$Memory_106105| |T@[Int]Bool|) (|contents#$Memory_106105| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_20954) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_20954) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_20954) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_20954) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_20954) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_20954) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_20954) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_20954) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_20954) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_20954) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_20954) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_20954) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_20954) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_73950 0)) (((Multiset_73950 (|v#Multiset_73950| |T@[$EventRep]Int|) (|l#Multiset_73950| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_73950| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_73950|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_156901 0)) ((($Mutation_156901 (|l#$Mutation_156901| T@$Location) (|p#$Mutation_156901| T@Vec_20954) (|v#$Mutation_156901| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_156856 0)) ((($Mutation_156856 (|l#$Mutation_156856| T@$Location) (|p#$Mutation_156856| T@Vec_20954) (|v#$Mutation_156856| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_34333 0)) ((($Mutation_34333 (|l#$Mutation_34333| T@$Location) (|p#$Mutation_34333| T@Vec_20954) (|v#$Mutation_34333| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_130050 0)) ((($Mutation_130050 (|l#$Mutation_130050| T@$Location) (|p#$Mutation_130050| T@Vec_20954) (|v#$Mutation_130050| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_118819 0)) ((($Mutation_118819 (|l#$Mutation_118819| T@$Location) (|p#$Mutation_118819| T@Vec_20954) (|v#$Mutation_118819| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_106600 0)) ((($Mutation_106600 (|l#$Mutation_106600| T@$Location) (|p#$Mutation_106600| T@Vec_20954) (|v#$Mutation_106600| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_99373 0)) ((($Mutation_99373 (|l#$Mutation_99373| T@$Location) (|p#$Mutation_99373| T@Vec_20954) (|v#$Mutation_99373| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11647 0)) ((($Mutation_11647 (|l#$Mutation_11647| T@$Location) (|p#$Mutation_11647| T@Vec_20954) (|v#$Mutation_11647| Int) ) ) ))
(declare-datatypes ((T@$Mutation_93630 0)) ((($Mutation_93630 (|l#$Mutation_93630| T@$Location) (|p#$Mutation_93630| T@Vec_20954) (|v#$Mutation_93630| T@Vec_20954) ) ) ))
(declare-datatypes ((T@$Mutation_92542 0)) ((($Mutation_92542 (|l#$Mutation_92542| T@$Location) (|p#$Mutation_92542| T@Vec_20954) (|v#$Mutation_92542| T@Vec_74305) ) ) ))
(declare-datatypes ((T@$Mutation_90833 0)) ((($Mutation_90833 (|l#$Mutation_90833| T@$Location) (|p#$Mutation_90833| T@Vec_20954) (|v#$Mutation_90833| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_89846 0)) ((($Mutation_89846 (|l#$Mutation_89846| T@$Location) (|p#$Mutation_89846| T@Vec_20954) (|v#$Mutation_89846| T@Vec_74036) ) ) ))
(declare-datatypes ((T@$Mutation_88191 0)) ((($Mutation_88191 (|l#$Mutation_88191| T@$Location) (|p#$Mutation_88191| T@Vec_20954) (|v#$Mutation_88191| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_87204 0)) ((($Mutation_87204 (|l#$Mutation_87204| T@$Location) (|p#$Mutation_87204| T@Vec_20954) (|v#$Mutation_87204| T@Vec_74543) ) ) ))
(declare-datatypes ((T@$Mutation_85526 0)) ((($Mutation_85526 (|l#$Mutation_85526| T@$Location) (|p#$Mutation_85526| T@Vec_20954) (|v#$Mutation_85526| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_84539 0)) ((($Mutation_84539 (|l#$Mutation_84539| T@$Location) (|p#$Mutation_84539| T@Vec_20954) (|v#$Mutation_84539| T@Vec_74248) ) ) ))
(declare-datatypes ((T@$Mutation_82739 0)) ((($Mutation_82739 (|l#$Mutation_82739| T@$Location) (|p#$Mutation_82739| T@Vec_20954) (|v#$Mutation_82739| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_81752 0)) ((($Mutation_81752 (|l#$Mutation_81752| T@$Location) (|p#$Mutation_81752| T@Vec_20954) (|v#$Mutation_81752| T@Vec_74114) ) ) ))
(declare-datatypes ((T@$Mutation_80087 0)) ((($Mutation_80087 (|l#$Mutation_80087| T@$Location) (|p#$Mutation_80087| T@Vec_20954) (|v#$Mutation_80087| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_79100 0)) ((($Mutation_79100 (|l#$Mutation_79100| T@$Location) (|p#$Mutation_79100| T@Vec_20954) (|v#$Mutation_79100| T@Vec_74075) ) ) ))
(declare-datatypes ((T@$Mutation_77387 0)) ((($Mutation_77387 (|l#$Mutation_77387| T@$Location) (|p#$Mutation_77387| T@Vec_20954) (|v#$Mutation_77387| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_76400 0)) ((($Mutation_76400 (|l#$Mutation_76400| T@$Location) (|p#$Mutation_76400| T@Vec_20954) (|v#$Mutation_76400| T@Vec_75755) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_75755 T@Vec_75755) Bool)
(declare-fun InRangeVec_65954 (T@Vec_75755 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_75755) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_75755 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_74075 T@Vec_74075) Bool)
(declare-fun InRangeVec_66155 (T@Vec_74075 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_74075) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_74075 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_74114 T@Vec_74114) Bool)
(declare-fun InRangeVec_66356 (T@Vec_74114 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_74114) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_74114 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_74248 T@Vec_74248) Bool)
(declare-fun InRangeVec_66557 (T@Vec_74248 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_20954 T@Vec_20954) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_74248) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_74248 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_74543 T@Vec_74543) Bool)
(declare-fun InRangeVec_66758 (T@Vec_74543 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_74543) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_74543 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_74036 T@Vec_74036) Bool)
(declare-fun InRangeVec_66959 (T@Vec_74036 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_74036) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_74036 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_74305 T@Vec_74305) Bool)
(declare-fun InRangeVec_91965 (T@Vec_74305 Int) Bool)
(declare-fun |Select__T@[Int]Vec_20954_| (|T@[Int]Vec_20954| Int) T@Vec_20954)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_74305) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_20954) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_74305 T@Vec_20954) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_20954 T@Vec_20954) Bool)
(declare-fun InRangeVec_11023 (T@Vec_20954 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_20954) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_20954 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_20954 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_20954) T@Vec_20954)
(declare-fun $1_Hash_sha3 (T@Vec_20954) T@Vec_20954)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_20954) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_20954 T@Vec_20954 T@Vec_20954) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_73950_| (|T@[$1_Event_EventHandle]Multiset_73950| T@$1_Event_EventHandle) T@Multiset_73950)
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
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| (|T@$1_Diem_BurnCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| (|T@$1_Diem_MintCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
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
(declare-fun IndexOfVec_20954 (T@Vec_20954 Int) Int)
(declare-fun IndexOfVec_74036 (T@Vec_74036 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_74075 (T@Vec_74075 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_74114 (T@Vec_74114 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_74248 (T@Vec_74248 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_74305 (T@Vec_74305 T@Vec_20954) Int)
(declare-fun IndexOfVec_74543 (T@Vec_74543 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_75755 (T@Vec_75755 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_73950| |T@[$1_Event_EventHandle]Multiset_73950|) |T@[$1_Event_EventHandle]Multiset_73950|)
(declare-fun |lambda#27| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#21| (Int Int Int |T@[Int]Vec_20954| |T@[Int]Vec_20954| Int T@Vec_20954) |T@[Int]Vec_20954|)
(declare-fun |lambda#22| (Int Int |T@[Int]Vec_20954| Int Int T@Vec_20954) |T@[Int]Vec_20954|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Vec_20954| |T@[Int]Vec_20954| Int T@Vec_20954) |T@[Int]Vec_20954|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#25| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SlidingNoncebpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SlidingNoncebpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SlidingNoncebpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SlidingNoncebpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SlidingNoncebpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SlidingNoncebpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SlidingNoncebpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SlidingNoncebpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_75755) (v2 T@Vec_75755) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_75755| v1) (|l#Vec_75755| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_65954 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_75755| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_75755| v2) i@@0)))
 :qid |SlidingNoncebpl.615:13|
 :skolemid |17|
))))
 :qid |SlidingNoncebpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_75755) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_75755| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_65954 v@@4 i@@1) true)
 :qid |SlidingNoncebpl.621:13|
 :skolemid |19|
))))
 :qid |SlidingNoncebpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_75755) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_65954 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@5) i@@3) e))
 :qid |SlidingNoncebpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_65954 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@5) j) e)))
 :qid |SlidingNoncebpl.634:17|
 :skolemid |22|
)))))
 :qid |SlidingNoncebpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_74075) (v2@@0 T@Vec_74075) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_74075| v1@@0) (|l#Vec_74075| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_66155 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v2@@0) i@@4)))
 :qid |SlidingNoncebpl.796:13|
 :skolemid |24|
))))
 :qid |SlidingNoncebpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_74075) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_74075| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_66155 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@6) i@@5)))
 :qid |SlidingNoncebpl.802:13|
 :skolemid |26|
))))
 :qid |SlidingNoncebpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_74075) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_66155 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@7) i@@7) e@@0))
 :qid |SlidingNoncebpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_66155 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@7) j@@0) e@@0)))
 :qid |SlidingNoncebpl.815:17|
 :skolemid |29|
)))))
 :qid |SlidingNoncebpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_74114) (v2@@1 T@Vec_74114) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_74114| v1@@1) (|l#Vec_74114| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_66356 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v2@@1) i@@8)))
 :qid |SlidingNoncebpl.977:13|
 :skolemid |31|
))))
 :qid |SlidingNoncebpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_74114) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_74114| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_66356 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@8) i@@9)))
 :qid |SlidingNoncebpl.983:13|
 :skolemid |33|
))))
 :qid |SlidingNoncebpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_74114) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_66356 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@9) i@@11) e@@1))
 :qid |SlidingNoncebpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_66356 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@9) j@@1) e@@1)))
 :qid |SlidingNoncebpl.996:17|
 :skolemid |36|
)))))
 :qid |SlidingNoncebpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_74248) (v2@@2 T@Vec_74248) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_74248| v1@@2) (|l#Vec_74248| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_66557 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12)))))
 :qid |SlidingNoncebpl.1158:13|
 :skolemid |38|
))))
 :qid |SlidingNoncebpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_74248) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_74248| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_66557 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@10) i@@13)))
 :qid |SlidingNoncebpl.1164:13|
 :skolemid |40|
))))
 :qid |SlidingNoncebpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_74248) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_66557 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |SlidingNoncebpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_66557 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |SlidingNoncebpl.1177:17|
 :skolemid |43|
)))))
 :qid |SlidingNoncebpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_74543) (v2@@3 T@Vec_74543) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_74543| v1@@3) (|l#Vec_74543| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_66758 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v2@@3) i@@16))))
 :qid |SlidingNoncebpl.1339:13|
 :skolemid |45|
))))
 :qid |SlidingNoncebpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_74543) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_74543| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_66758 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@12) i@@17)))
 :qid |SlidingNoncebpl.1345:13|
 :skolemid |47|
))))
 :qid |SlidingNoncebpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_74543) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_66758 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |SlidingNoncebpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_66758 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |SlidingNoncebpl.1358:17|
 :skolemid |50|
)))))
 :qid |SlidingNoncebpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_74036) (v2@@4 T@Vec_74036) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_74036| v1@@4) (|l#Vec_74036| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_66959 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v2@@4) i@@20)))))
 :qid |SlidingNoncebpl.1520:13|
 :skolemid |52|
))))
 :qid |SlidingNoncebpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_74036) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_74036| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_66959 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@14) i@@21)))
 :qid |SlidingNoncebpl.1526:13|
 :skolemid |54|
))))
 :qid |SlidingNoncebpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_74036) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_66959 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |SlidingNoncebpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_66959 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |SlidingNoncebpl.1539:17|
 :skolemid |57|
)))))
 :qid |SlidingNoncebpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_74305) (v2@@5 T@Vec_74305) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5)  (and (= (|l#Vec_74305| v1@@5) (|l#Vec_74305| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_91965 v1@@5 i@@24) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v1@@5) i@@24) (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v2@@5) i@@24)))
 :qid |SlidingNoncebpl.1701:13|
 :skolemid |59|
))))
 :qid |SlidingNoncebpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_74305) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_74305| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_91965 v@@16 i@@25) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@16) i@@25)))
 :qid |SlidingNoncebpl.1707:13|
 :skolemid |61|
))))
 :qid |SlidingNoncebpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_74305) (e@@5 T@Vec_20954) ) (! (let ((i@@26 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_91965 v@@17 i@@27)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@17) i@@27) e@@5))
 :qid |SlidingNoncebpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_91965 v@@17 i@@26)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@17) j@@5) e@@5)))
 :qid |SlidingNoncebpl.1720:17|
 :skolemid |64|
)))))
 :qid |SlidingNoncebpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_20954) (v2@@6 T@Vec_20954) ) (! (= (|$IsEqual'vec'address''| v1@@6 v2@@6)  (and (= (|l#Vec_20954| v1@@6) (|l#Vec_20954| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_11023 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_20954| v2@@6) i@@28)))
 :qid |SlidingNoncebpl.1882:13|
 :skolemid |66|
))))
 :qid |SlidingNoncebpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'address''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_20954) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_20954| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_11023 v@@18 i@@29) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_20954| v@@18) i@@29)))
 :qid |SlidingNoncebpl.1888:13|
 :skolemid |68|
))))
 :qid |SlidingNoncebpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_20954) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_11023 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@19) i@@31) e@@6))
 :qid |SlidingNoncebpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_11023 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@19) j@@6) e@@6)))
 :qid |SlidingNoncebpl.1901:17|
 :skolemid |71|
)))))
 :qid |SlidingNoncebpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_20954) (v2@@7 T@Vec_20954) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7)  (and (= (|l#Vec_20954| v1@@7) (|l#Vec_20954| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_11023 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_20954| v2@@7) i@@32)))
 :qid |SlidingNoncebpl.2063:13|
 :skolemid |73|
))))
 :qid |SlidingNoncebpl.2061:28|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'u8''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_20954) ) (! (= (|$IsValid'vec'u8''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_20954| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_11023 v@@20 i@@33) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_20954| v@@20) i@@33)))
 :qid |SlidingNoncebpl.2069:13|
 :skolemid |75|
))))
 :qid |SlidingNoncebpl.2067:28|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'u8''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_20954) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'u8'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_11023 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@21) i@@35) e@@7))
 :qid |SlidingNoncebpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_11023 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@21) j@@7) e@@7)))
 :qid |SlidingNoncebpl.2082:17|
 :skolemid |78|
)))))
 :qid |SlidingNoncebpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'u8'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_20954) (v2@@8 T@Vec_20954) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@8) ($1_Hash_sha2 v2@@8)))
 :qid |SlidingNoncebpl.2255:15|
 :skolemid |80|
 :pattern ( ($1_Hash_sha2 v1@@8) ($1_Hash_sha2 v2@@8))
)))
(assert (forall ((v1@@9 T@Vec_20954) (v2@@9 T@Vec_20954) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@9) ($1_Hash_sha3 v2@@9)))
 :qid |SlidingNoncebpl.2271:15|
 :skolemid |81|
 :pattern ( ($1_Hash_sha3 v1@@9) ($1_Hash_sha3 v2@@9))
)))
(assert (forall ((k1 T@Vec_20954) (k2 T@Vec_20954) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SlidingNoncebpl.2342:15|
 :skolemid |82|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_20954) (s2 T@Vec_20954) (k1@@0 T@Vec_20954) (k2@@0 T@Vec_20954) (m1 T@Vec_20954) (m2 T@Vec_20954) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SlidingNoncebpl.2345:15|
 :skolemid |83|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_73950| stream) 0) (forall ((v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| stream) v@@22) 0)
 :qid |SlidingNoncebpl.159:13|
 :skolemid |4|
))))
 :qid |SlidingNoncebpl.2406:13|
 :skolemid |84|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |SlidingNoncebpl.2447:80|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@10 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@10 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@10)))
 :qid |SlidingNoncebpl.2453:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@10))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |SlidingNoncebpl.2503:82|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@11)))
 :qid |SlidingNoncebpl.2509:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |SlidingNoncebpl.2559:80|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@12 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@12 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@12)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12)))
 :qid |SlidingNoncebpl.2565:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |SlidingNoncebpl.2615:79|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@13 T@$1_DiemAccount_AdminTransactionEvent) (v2@@13 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@13)))
 :qid |SlidingNoncebpl.2621:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@13))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |SlidingNoncebpl.2671:76|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_CreateAccountEvent) (v2@@14 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@14)))
 :qid |SlidingNoncebpl.2677:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@14))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |SlidingNoncebpl.2727:78|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@15 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@15)))
 :qid |SlidingNoncebpl.2733:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@15))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |SlidingNoncebpl.2783:74|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_SentPaymentEvent) (v2@@16 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@16))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@16)))
 :qid |SlidingNoncebpl.2789:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |SlidingNoncebpl.2839:69|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@17 T@$1_DiemBlock_NewBlockEvent) (v2@@17 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@17) (|$round#$1_DiemBlock_NewBlockEvent| v2@@17)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@17) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@17))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@17) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@17))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@17) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@17))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@17) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@17)))
 :qid |SlidingNoncebpl.2845:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@17) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@17))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |SlidingNoncebpl.2895:70|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@18 T@$1_DiemConfig_NewEpochEvent) (v2@@18 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@18) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@18)))
 :qid |SlidingNoncebpl.2901:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@18) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@18))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |SlidingNoncebpl.2951:60|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@19 T@$1_Diem_BurnEvent) (v2@@19 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@19) (|$amount#$1_Diem_BurnEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@19) (|$currency_code#$1_Diem_BurnEvent| v2@@19))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@19) (|$preburn_address#$1_Diem_BurnEvent| v2@@19))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@19)))
 :qid |SlidingNoncebpl.2957:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@19))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |SlidingNoncebpl.3007:66|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@20 T@$1_Diem_CancelBurnEvent) (v2@@20 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@20) (|$amount#$1_Diem_CancelBurnEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@20) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@20))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@20) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@20)))
 :qid |SlidingNoncebpl.3013:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@20))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |SlidingNoncebpl.3063:60|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@21 T@$1_Diem_MintEvent) (v2@@21 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@21) (|$amount#$1_Diem_MintEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@21) (|$currency_code#$1_Diem_MintEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@21) (|$ToEventRep'$1_Diem_MintEvent'| v2@@21)))
 :qid |SlidingNoncebpl.3069:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@21) (|$ToEventRep'$1_Diem_MintEvent'| v2@@21))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |SlidingNoncebpl.3119:63|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@22 T@$1_Diem_PreburnEvent) (v2@@22 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@22) (|$amount#$1_Diem_PreburnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@22) (|$currency_code#$1_Diem_PreburnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@22) (|$preburn_address#$1_Diem_PreburnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@22) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@22)))
 :qid |SlidingNoncebpl.3125:15|
 :skolemid |111|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@22) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@22))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |SlidingNoncebpl.3175:79|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@23 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@23 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@23) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@23)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@23) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@23) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@23)))
 :qid |SlidingNoncebpl.3181:15|
 :skolemid |113|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@23) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@23))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |SlidingNoncebpl.3231:82|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@24 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@24 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@24) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@24)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@24) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@24))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@24)))
 :qid |SlidingNoncebpl.3237:15|
 :skolemid |115|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@24))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |SlidingNoncebpl.3287:88|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@25 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@25 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@25) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@25)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@25) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@25))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@25)))
 :qid |SlidingNoncebpl.3293:15|
 :skolemid |117|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@25))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |SlidingNoncebpl.3343:72|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@26 T@$1_VASPDomain_VASPDomainEvent) (v2@@26 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@26) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@26)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@26)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@26) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@26))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@26) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@26)))
 :qid |SlidingNoncebpl.3349:15|
 :skolemid |119|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@26) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@26))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |SlidingNoncebpl.3428:61|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |SlidingNoncebpl.4243:36|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |SlidingNoncebpl.4605:71|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |SlidingNoncebpl.4668:46|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |SlidingNoncebpl.4680:64|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |SlidingNoncebpl.4692:75|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |SlidingNoncebpl.4704:72|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |SlidingNoncebpl.4732:55|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |SlidingNoncebpl.4755:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |SlidingNoncebpl.4767:15|
 :skolemid |131|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |SlidingNoncebpl.4780:49|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |SlidingNoncebpl.5222:71|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |SlidingNoncebpl.5235:91|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |SlidingNoncebpl.5248:113|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |SlidingNoncebpl.5261:89|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |SlidingNoncebpl.5274:75|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |SlidingNoncebpl.5287:73|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |SlidingNoncebpl.5307:48|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |SlidingNoncebpl.5324:57|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |SlidingNoncebpl.5338:83|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |SlidingNoncebpl.5352:103|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |SlidingNoncebpl.5366:125|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |SlidingNoncebpl.5380:101|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |SlidingNoncebpl.5394:87|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |SlidingNoncebpl.5408:85|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |SlidingNoncebpl.5422:48|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |SlidingNoncebpl.5443:45|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |SlidingNoncebpl.5457:51|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |SlidingNoncebpl.5480:48|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |SlidingNoncebpl.5774:49|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |SlidingNoncebpl.5787:65|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |SlidingNoncebpl.6293:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |SlidingNoncebpl.6306:45|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |SlidingNoncebpl.6319:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |SlidingNoncebpl.6333:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |SlidingNoncebpl.6353:38|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |SlidingNoncebpl.6375:44|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |SlidingNoncebpl.6427:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |SlidingNoncebpl.6500:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |SlidingNoncebpl.6537:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |SlidingNoncebpl.6551:55|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |SlidingNoncebpl.6568:38|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |SlidingNoncebpl.6582:48|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |SlidingNoncebpl.6596:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |SlidingNoncebpl.6616:41|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@43)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@43)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@43))))
 :qid |SlidingNoncebpl.6635:57|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@43))
)))
(assert (forall ((s@@44 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@44) true)
 :qid |SlidingNoncebpl.8741:68|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@45)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))))
 :qid |SlidingNoncebpl.8763:66|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@46)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))))
 :qid |SlidingNoncebpl.8789:66|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@47)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))))
 :qid |SlidingNoncebpl.8818:56|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@48)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))))
 :qid |SlidingNoncebpl.8848:56|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |SlidingNoncebpl.9282:31|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |SlidingNoncebpl.9612:31|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |SlidingNoncebpl.9631:35|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |SlidingNoncebpl.10040:45|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |SlidingNoncebpl.10058:50|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |SlidingNoncebpl.10074:52|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@55) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@55)))
 :qid |SlidingNoncebpl.10087:46|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@56) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@56)))
 :qid |SlidingNoncebpl.10280:38|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@57) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@57)))
 :qid |SlidingNoncebpl.10294:39|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@57))
)))
(assert (forall ((s@@58 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58))))
 :qid |SlidingNoncebpl.10321:65|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@59)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@59))))
 :qid |SlidingNoncebpl.10689:60|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60))))
 :qid |SlidingNoncebpl.10706:66|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@61)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@61)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@61))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@61))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@61))))
 :qid |SlidingNoncebpl.10735:50|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@62) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@62)))
 :qid |SlidingNoncebpl.10758:45|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@63)) true))
 :qid |SlidingNoncebpl.11065:87|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@64)))
 :qid |SlidingNoncebpl.11266:47|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@65)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@65))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@65))))
 :qid |SlidingNoncebpl.11285:58|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@66) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@66)))
 :qid |SlidingNoncebpl.11301:39|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@67))))
 :qid |SlidingNoncebpl.11323:58|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@68)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@68)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@68))))
 :qid |SlidingNoncebpl.11340:58|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@69) true)
 :qid |SlidingNoncebpl.11355:51|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@70))))
 :qid |SlidingNoncebpl.11372:60|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@71)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@71))))
 :qid |SlidingNoncebpl.11658:47|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@72)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@72)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@72))))
 :qid |SlidingNoncebpl.11684:63|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@73) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@73)))
 :qid |SlidingNoncebpl.11699:57|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@73))
)))
(assert (forall ((s@@74 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@74) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@74)))
 :qid |SlidingNoncebpl.11712:55|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@74))
)))
(assert (forall ((s@@75 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@75) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@75)))
 :qid |SlidingNoncebpl.11726:55|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@76)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@76)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@76))))
 :qid |SlidingNoncebpl.11743:54|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@77)))
 :qid |SlidingNoncebpl.11757:55|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@78) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@78)))
 :qid |SlidingNoncebpl.11770:57|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@79)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@79))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@79))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@79))))
 :qid |SlidingNoncebpl.11792:56|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@80)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@80)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@80))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@80))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@80))))
 :qid |SlidingNoncebpl.11819:52|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@81)))
 :qid |SlidingNoncebpl.11837:54|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@82)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@82)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@82))))
 :qid |SlidingNoncebpl.15017:47|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@83)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@83))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@83))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@83))))
 :qid |SlidingNoncebpl.15041:47|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@84) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@84)))
 :qid |SlidingNoncebpl.15275:63|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@85) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@85)))
 :qid |SlidingNoncebpl.15610:49|
 :skolemid |322|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@86)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@86)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@86))))
 :qid |SlidingNoncebpl.15652:49|
 :skolemid |323|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@87)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@87)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@87))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@87))))
 :qid |SlidingNoncebpl.15681:48|
 :skolemid |324|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@88) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@88)))
 :qid |SlidingNoncebpl.15966:47|
 :skolemid |325|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@88))
)))
(assert (forall ((v@@23 T@Vec_75755) (i@@36 Int) ) (! (= (InRangeVec_65954 v@@23 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_75755| v@@23))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_65954 v@@23 i@@36))
)))
(assert (forall ((v@@24 T@Vec_74075) (i@@37 Int) ) (! (= (InRangeVec_66155 v@@24 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_74075| v@@24))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66155 v@@24 i@@37))
)))
(assert (forall ((v@@25 T@Vec_74114) (i@@38 Int) ) (! (= (InRangeVec_66356 v@@25 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_74114| v@@25))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66356 v@@25 i@@38))
)))
(assert (forall ((v@@26 T@Vec_74248) (i@@39 Int) ) (! (= (InRangeVec_66557 v@@26 i@@39)  (and (>= i@@39 0) (< i@@39 (|l#Vec_74248| v@@26))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66557 v@@26 i@@39))
)))
(assert (forall ((v@@27 T@Vec_74543) (i@@40 Int) ) (! (= (InRangeVec_66758 v@@27 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_74543| v@@27))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66758 v@@27 i@@40))
)))
(assert (forall ((v@@28 T@Vec_74036) (i@@41 Int) ) (! (= (InRangeVec_66959 v@@28 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_74036| v@@28))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66959 v@@28 i@@41))
)))
(assert (forall ((v@@29 T@Vec_74305) (i@@42 Int) ) (! (= (InRangeVec_91965 v@@29 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_74305| v@@29))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_91965 v@@29 i@@42))
)))
(assert (forall ((v@@30 T@Vec_20954) (i@@43 Int) ) (! (= (InRangeVec_11023 v@@30 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_20954| v@@30))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_11023 v@@30 i@@43))
)))
(assert (forall ((v@@31 T@Vec_20954) (e@@8 Int) ) (! (let ((i@@44 (IndexOfVec_20954 v@@31 e@@8)))
(ite  (not (exists ((i@@45 Int) ) (!  (and (InRangeVec_11023 v@@31 i@@45) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@31) i@@45) e@@8))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@44 (- 0 1))  (and (and (InRangeVec_11023 v@@31 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@31) i@@44) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@44)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@31) j@@8) e@@8)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_20954 v@@31 e@@8))
)))
(assert (forall ((v@@32 T@Vec_74036) (e@@9 T@$1_ValidatorConfig_Config) ) (! (let ((i@@46 (IndexOfVec_74036 v@@32 e@@9)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (InRangeVec_66959 v@@32 i@@47) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@32) i@@47) e@@9))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@46 (- 0 1))  (and (and (InRangeVec_66959 v@@32 i@@46) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@32) i@@46) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@46)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@32) j@@9) e@@9)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74036 v@@32 e@@9))
)))
(assert (forall ((v@@33 T@Vec_74075) (e@@10 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@48 (IndexOfVec_74075 v@@33 e@@10)))
(ite  (not (exists ((i@@49 Int) ) (!  (and (InRangeVec_66155 v@@33 i@@49) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@33) i@@49) e@@10))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@48 (- 0 1))  (and (and (InRangeVec_66155 v@@33 i@@48) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@33) i@@48) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@48)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@33) j@@10) e@@10)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74075 v@@33 e@@10))
)))
(assert (forall ((v@@34 T@Vec_74114) (e@@11 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@50 (IndexOfVec_74114 v@@34 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (InRangeVec_66356 v@@34 i@@51) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@34) i@@51) e@@11))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@50 (- 0 1))  (and (and (InRangeVec_66356 v@@34 i@@50) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@34) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@50)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@34) j@@11) e@@11)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74114 v@@34 e@@11))
)))
(assert (forall ((v@@35 T@Vec_74248) (e@@12 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@52 (IndexOfVec_74248 v@@35 e@@12)))
(ite  (not (exists ((i@@53 Int) ) (!  (and (InRangeVec_66557 v@@35 i@@53) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@35) i@@53) e@@12))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@52 (- 0 1))  (and (and (InRangeVec_66557 v@@35 i@@52) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@35) i@@52) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@52)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@35) j@@12) e@@12)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74248 v@@35 e@@12))
)))
(assert (forall ((v@@36 T@Vec_74305) (e@@13 T@Vec_20954) ) (! (let ((i@@54 (IndexOfVec_74305 v@@36 e@@13)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (InRangeVec_91965 v@@36 i@@55) (= (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@36) i@@55) e@@13))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@54 (- 0 1))  (and (and (InRangeVec_91965 v@@36 i@@54) (= (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@36) i@@54) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@54)) (not (= (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@36) j@@13) e@@13)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74305 v@@36 e@@13))
)))
(assert (forall ((v@@37 T@Vec_74543) (e@@14 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@56 (IndexOfVec_74543 v@@37 e@@14)))
(ite  (not (exists ((i@@57 Int) ) (!  (and (InRangeVec_66758 v@@37 i@@57) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@37) i@@57) e@@14))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@56 (- 0 1))  (and (and (InRangeVec_66758 v@@37 i@@56) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@37) i@@56) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@56)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@37) j@@14) e@@14)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74543 v@@37 e@@14))
)))
(assert (forall ((v@@38 T@Vec_75755) (e@@15 |T@#0|) ) (! (let ((i@@58 (IndexOfVec_75755 v@@38 e@@15)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (InRangeVec_65954 v@@38 i@@59) (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@38) i@@59) e@@15))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@58 (- 0 1))  (and (and (InRangeVec_65954 v@@38 i@@58) (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@38) i@@58) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@58)) (not (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@38) j@@15) e@@15)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_75755 v@@38 e@@15))
)))
(assert (forall ((|l#0| Bool) (i@@60 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@60) |l#0|)
 :qid |SlidingNoncebpl.275:54|
 :skolemid |416|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@60))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_73950|) (|l#1| |T@[$1_Event_EventHandle]Multiset_73950|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| |l#1| handle@@0))))
(Multiset_73950 (|lambda#27| (|v#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| |l#0@@0| handle@@0)) (|v#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |SlidingNoncebpl.2416:13|
 :skolemid |417|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@61 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@61) (ite  (and (>= i@@61 |l#0@@1|) (< i@@61 |l#1@@0|)) (ite (< i@@61 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@61) (|Select__T@[Int]#0_| |l#4| (- i@@61 |l#5|))) |l#6|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |418|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@61))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@62 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@62) (ite  (and (<= |l#0@@2| i@@62) (< i@@62 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@62) |l#4@@0|)) |l#5@@0|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |419|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@62))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@16) (ite  (and (>= j@@16 |l#0@@3|) (< j@@16 |l#1@@2|)) (ite (< j@@16 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@16) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@16 |l#5@@1|))) |l#6@@0|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |420|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@16))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@63) (ite  (and (>= i@@63 |l#0@@4|) (< i@@63 |l#1@@3|)) (ite (< i@@63 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@63) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@63 |l#5@@2|))) |l#6@@1|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |421|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@63))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@64 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@64) (ite  (and (<= |l#0@@5| i@@64) (< i@@64 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@64) |l#4@@3|)) |l#5@@3|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@64))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@17) (ite  (and (>= j@@17 |l#0@@6|) (< j@@17 |l#1@@5|)) (ite (< j@@17 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@17) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@17 |l#5@@4|))) |l#6@@2|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |423|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@17))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@65 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@65) (ite  (and (>= i@@65 |l#0@@7|) (< i@@65 |l#1@@6|)) (ite (< i@@65 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@65) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@65 |l#5@@5|))) |l#6@@3|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |424|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@65))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@66 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@66) (ite  (and (<= |l#0@@8| i@@66) (< i@@66 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@66) |l#4@@6|)) |l#5@@6|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |425|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@66))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@18) (ite  (and (>= j@@18 |l#0@@9|) (< j@@18 |l#1@@8|)) (ite (< j@@18 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@18) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@18 |l#5@@7|))) |l#6@@4|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |426|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@18))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@67 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@67) (ite  (and (>= i@@67 |l#0@@10|) (< i@@67 |l#1@@9|)) (ite (< i@@67 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@67) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@67 |l#5@@8|))) |l#6@@5|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |427|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@67))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@68 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@68) (ite  (and (<= |l#0@@11| i@@68) (< i@@68 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@68) |l#4@@9|)) |l#5@@9|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |428|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@68))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@19) (ite  (and (>= j@@19 |l#0@@12|) (< j@@19 |l#1@@11|)) (ite (< j@@19 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@19) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@19 |l#5@@10|))) |l#6@@6|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |429|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@19))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@69 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@69) (ite  (and (>= i@@69 |l#0@@13|) (< i@@69 |l#1@@12|)) (ite (< i@@69 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@69) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@69 |l#5@@11|))) |l#6@@7|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |430|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@69))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@70) (ite  (and (<= |l#0@@14| i@@70) (< i@@70 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@70) |l#4@@12|)) |l#5@@12|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |431|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@70))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@20) (ite  (and (>= j@@20 |l#0@@15|) (< j@@20 |l#1@@14|)) (ite (< j@@20 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@20) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@20 |l#5@@13|))) |l#6@@8|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |432|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@20))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@71) (ite  (and (>= i@@71 |l#0@@16|) (< i@@71 |l#1@@15|)) (ite (< i@@71 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@71) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@71 |l#5@@14|))) |l#6@@9|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |433|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@71))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@72) (ite  (and (<= |l#0@@17| i@@72) (< i@@72 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@72) |l#4@@15|)) |l#5@@15|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |434|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@72))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@21) (ite  (and (>= j@@21 |l#0@@18|) (< j@@21 |l#1@@17|)) (ite (< j@@21 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@21) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@21 |l#5@@16|))) |l#6@@10|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |435|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@21))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Vec_20954|) (|l#4@@17| |T@[Int]Vec_20954|) (|l#5@@17| Int) (|l#6@@11| T@Vec_20954) (i@@73 Int) ) (! (= (|Select__T@[Int]Vec_20954_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@73) (ite  (and (>= i@@73 |l#0@@19|) (< i@@73 |l#1@@18|)) (ite (< i@@73 |l#2@@17|) (|Select__T@[Int]Vec_20954_| |l#3@@17| i@@73) (|Select__T@[Int]Vec_20954_| |l#4@@17| (- i@@73 |l#5@@17|))) |l#6@@11|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |436|
 :pattern ( (|Select__T@[Int]Vec_20954_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@73))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Vec_20954|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@Vec_20954) (i@@74 Int) ) (! (= (|Select__T@[Int]Vec_20954_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@74) (ite  (and (<= |l#0@@20| i@@74) (< i@@74 |l#1@@19|)) (|Select__T@[Int]Vec_20954_| |l#2@@18| (- (- |l#3@@18| i@@74) |l#4@@18|)) |l#5@@18|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |437|
 :pattern ( (|Select__T@[Int]Vec_20954_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@74))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Vec_20954|) (|l#4@@19| |T@[Int]Vec_20954|) (|l#5@@19| Int) (|l#6@@12| T@Vec_20954) (j@@22 Int) ) (! (= (|Select__T@[Int]Vec_20954_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@22) (ite  (and (>= j@@22 |l#0@@21|) (< j@@22 |l#1@@20|)) (ite (< j@@22 |l#2@@19|) (|Select__T@[Int]Vec_20954_| |l#3@@19| j@@22) (|Select__T@[Int]Vec_20954_| |l#4@@19| (+ j@@22 |l#5@@19|))) |l#6@@12|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |438|
 :pattern ( (|Select__T@[Int]Vec_20954_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@22))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Int|) (|l#4@@20| |T@[Int]Int|) (|l#5@@20| Int) (|l#6@@13| Int) (i@@75 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@75) (ite  (and (>= i@@75 |l#0@@22|) (< i@@75 |l#1@@21|)) (ite (< i@@75 |l#2@@20|) (|Select__T@[Int]Int_| |l#3@@20| i@@75) (|Select__T@[Int]Int_| |l#4@@20| (- i@@75 |l#5@@20|))) |l#6@@13|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |439|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@75))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Int|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| Int) (i@@76 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@76) (ite  (and (<= |l#0@@23| i@@76) (< i@@76 |l#1@@22|)) (|Select__T@[Int]Int_| |l#2@@21| (- (- |l#3@@21| i@@76) |l#4@@21|)) |l#5@@21|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |440|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@76))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Int|) (|l#4@@22| |T@[Int]Int|) (|l#5@@22| Int) (|l#6@@14| Int) (j@@23 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@23) (ite  (and (>= j@@23 |l#0@@24|) (< j@@23 |l#1@@23|)) (ite (< j@@23 |l#2@@22|) (|Select__T@[Int]Int_| |l#3@@22| j@@23) (|Select__T@[Int]Int_| |l#4@@22| (+ j@@23 |l#5@@22|))) |l#6@@14|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |441|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@23))
)))
(assert (forall ((|l#0@@25| |T@[$EventRep]Int|) (|l#1@@24| |T@[$EventRep]Int|) (v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@39) (- (|Select__T@[$EventRep]Int_| |l#0@@25| v@@39) (|Select__T@[$EventRep]Int_| |l#1@@24| v@@39)))
 :qid |SlidingNoncebpl.154:29|
 :skolemid |442|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@39))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t35 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@4 () T@$Memory_108354)
(declare-fun $t36 () T@$1_Event_EventHandle)
(declare-fun $t37 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun inline$$1_DiemAccount_create_signer$0$signer@1 () T@$signer)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_106787)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_141559)
(declare-fun $t30 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_108182)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t31 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $t38 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t39 () T@$1_Event_EventHandle)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_73950_| (|T@[$1_Event_EventHandle]Multiset_73950| T@$1_Event_EventHandle T@Multiset_73950) |T@[$1_Event_EventHandle]Multiset_73950|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_73950|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_73950)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|Store__T@[$1_Event_EventHandle]Multiset_73950_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_73950|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_73950)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|Store__T@[$1_Event_EventHandle]Multiset_73950_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_73950_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_108354)
(declare-fun $t40 () T@$1_Event_EventHandle)
(declare-fun $t41 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_106974)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_108354)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_108425)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_108182)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_106105)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_106787)
(declare-fun _$t0 () T@Vec_20954)
(declare-fun $t7 () Int)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory@1 () T@$Memory_108425)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2 () T@$Memory_106974)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_141559)
(declare-fun |$temp_0'bool'@4| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@3 () T@$Memory_108354)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_108354)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@3| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_108182)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_108182)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@0| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_98742)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_98742)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_98742)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@0| () T@$1_Event_EventHandleGenerator)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_141559)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_141559)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t34 () Bool)
(declare-fun $t9@0 () Int)
(declare-fun $t9 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $t32 () Int)
(declare-fun $t33 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$modifies () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(declare-fun $1_AccountFreezing_FreezingBit_$modifies () |T@[Int]Bool|)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$modifies () |T@[Int]Bool|)
(declare-fun $abort_code@4 () Int)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory@0 () T@$Memory_108425)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|T@[Int]$1_DiemAccount_DiemWriteSetManager| Int T@$1_DiemAccount_DiemWriteSetManager) |T@[Int]$1_DiemAccount_DiemWriteSetManager|)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|T@[Int]$1_DiemAccount_DiemWriteSetManager| Int) T@$1_DiemAccount_DiemWriteSetManager)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemWriteSetManager)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemWriteSetManager)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?y1))) :weight 0)))
(declare-fun $t29@0 () T@$1_DiemAccount_DiemWriteSetManager)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun $t27 () Int)
(declare-fun $t24@0 () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_108354)
(declare-fun $t22@0 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@1 () T@$1_AccountLimits_AccountLimitMutationCapability)
(declare-fun |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0 () Int)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@0 () T@$1_AccountLimits_AccountLimitMutationCapability)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t5@0 () Bool)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0 () Int)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t2@0 () Bool)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1 () T@$1_AccountLimits_AccountLimitMutationCapability)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t1@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t19 () Int)
(declare-fun $t18 () Int)
(declare-fun $t15@0 () Bool)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_106974)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_106974)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_SlidingNonce_SlidingNonce'@0| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $t13 () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$modifies () |T@[Int]Bool|)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t2@0 () Int)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t6@0 () Bool)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t3@0 () Bool)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t1@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_106787)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Roles_grant_diem_root_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_106787)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_106787)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Roles_grant_diem_root_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t5@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t8 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_111915)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_112558)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_107067)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_107153)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_107226)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_107297)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_107381)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_107465)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_107536)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_107620)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_107704)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_107775)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_107872)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_137802)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_107956)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_108040)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_108111)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_135591)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_135990)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_142682)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_142773)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_140508)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_136593)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_136529)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_108496)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_108580)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_106658)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $t6 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_create_diem_root_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 248406) (let ((anon51_correct  (=> (= $t35 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816)) (=> (and (= $t36 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816))) (= $t37 ($1_DiemAccount_CreateAccountEvent (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t30)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory@2) $t30) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory@2) $t30))))) (and (and (= (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t35) (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t31) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t31)))) (= (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t35) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t31) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t31))))) (and (not (= (|l#Vec_74075| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t30)))) 0)) (= $t30 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t30)))) 0)))))) (and (and (and (not (= (|l#Vec_74114| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t30)))) 0)) (= $t30 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t30)))) 0)))) (= $t38 $t37)) (and (= $t39 $t36) (= $es@0 (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $es) $t39)))
(let ((stream_new (let ((len (|l#Multiset_73950| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t38))))
(Multiset_73950 (|Store__T@[$EventRep]Int_| (|v#Multiset_73950| stream@@0) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t38) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $es) $t39 stream_new)))))))) (and (=> (= (ControlFlow 0 183757) (- 0 252268)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816)) (=> (and (= $t40 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@4) 173345816))) (= $t41 ($1_DiemAccount_CreateAccountEvent 173345816 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory@3) 173345816))))) (and (=> (= (ControlFlow 0 183757) (- 0 252316)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (and (=> (= (ControlFlow 0 183757) (- 0 252326)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (and (=> (= (ControlFlow 0 183757) (- 0 252336)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (and (=> (= (ControlFlow 0 183757) (- 0 252346)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) 173345816)) (and (=> (= (ControlFlow 0 183757) (- 0 252356)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 183757) (- 0 252366)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) 173345816)) (and (=> (= (ControlFlow 0 183757) (- 0 252376)) (not (not (= (+ 16 (|l#Vec_20954| _$t0)) 32)))) (=> (not (not (= (+ 16 (|l#Vec_20954| _$t0)) 32))) (and (=> (= (ControlFlow 0 183757) (- 0 252394)) (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory@3) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory@3) 173345816) (and (=> (= (ControlFlow 0 183757) (- 0 252402)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory@3) 173345816)) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory@3) 173345816)) 0) (and (=> (= (ControlFlow 0 183757) (- 0 252416)) (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@4) $t7)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@4) $t7) (and (=> (= (ControlFlow 0 183757) (- 0 252424)) (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory@1) $t7)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory@1) $t7) (and (=> (= (ControlFlow 0 183757) (- 0 252432)) (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory@2) $t7)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory@2) $t7) (and (=> (= (ControlFlow 0 183757) (- 0 252440)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory@3) $t7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory@3) $t7)) 0))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory@3) $t7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory@3) $t7)) 0)) (and (=> (= (ControlFlow 0 183757) (- 0 252448)) (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t7)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t7) (and (=> (= (ControlFlow 0 183757) (- 0 252456)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory@2) $t7) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory@2) $t7))))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory@2) $t7) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory@2) $t7)))) (and (=> (= (ControlFlow 0 183757) (- 0 252464)) (and (not (= (|l#Vec_74075| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t7)))) 0)) (= $t7 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t7)))) 0))))) (=> (and (not (= (|l#Vec_74075| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t7)))) 0)) (= $t7 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t7)))) 0)))) (and (=> (= (ControlFlow 0 183757) (- 0 252472)) (and (not (= (|l#Vec_74114| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t7)))) 0)) (= $t7 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t7)))) 0))))) (=> (and (not (= (|l#Vec_74114| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t7)))) 0)) (= $t7 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) $t7)))) 0)))) (and (=> (= (ControlFlow 0 183757) (- 0 252480)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) addr)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr)))))
 :qid |SlidingNoncebpl.12910:15|
 :skolemid |248|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@0) (|$IsEqual'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory@2) addr@@0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@0)))))
 :qid |SlidingNoncebpl.12910:15|
 :skolemid |248|
)) (and (=> (= (ControlFlow 0 183757) (- 0 252515)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $EmptyEventStore) $t40)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_73950| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41))))
(Multiset_73950 (|Store__T@[$EventRep]Int_| (|v#Multiset_73950| stream@@1) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $EmptyEventStore) $t40 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@40 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| expected) handle@@1)) v@@40) (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| actual) handle@@1)) v@@40))
 :qid |SlidingNoncebpl.164:13|
 :skolemid |5|
)))
 :qid |SlidingNoncebpl.2422:13|
 :skolemid |85|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $EmptyEventStore) $t40)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_73950| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41))))
(Multiset_73950 (|Store__T@[$EventRep]Int_| (|v#Multiset_73950| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $EmptyEventStore) $t40 stream_new@@1))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@41 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| expected@@0) handle@@2)) v@@41) (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| actual@@0) handle@@2)) v@@41))
 :qid |SlidingNoncebpl.164:13|
 :skolemid |5|
)))
 :qid |SlidingNoncebpl.2422:13|
 :skolemid |85|
))))) (=> (= (ControlFlow 0 183757) (- 0 252540)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $EmptyEventStore) $t40)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_73950| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41))))
(Multiset_73950 (|Store__T@[$EventRep]Int_| (|v#Multiset_73950| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t41) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $EmptyEventStore) $t40 stream_new@@2))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@42 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| actual@@1) handle@@3)) v@@42) (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| expected@@1) handle@@3)) v@@42))
 :qid |SlidingNoncebpl.164:13|
 :skolemid |5|
)))
 :qid |SlidingNoncebpl.2422:13|
 :skolemid |85|
))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon73_Else_correct  (=> (and (and (not |$temp_0'bool'@4|) (= $1_DiemAccount_AccountOperationsCapability_$memory@3 ($Memory_108354 (|Store__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816 false) (|contents#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@4 $1_DiemAccount_AccountOperationsCapability_$memory@3) (= (ControlFlow 0 183326) 183757))) anon51_correct)))
(let ((anon73_Then_correct  (=> (and (and |$temp_0'bool'@4| (= $1_DiemAccount_AccountOperationsCapability_$memory@2 ($Memory_108354 (|Store__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816 |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0|)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@4 $1_DiemAccount_AccountOperationsCapability_$memory@2) (= (ControlFlow 0 183769) 183757))) anon51_correct)))
(let ((anon72_Else_correct  (=> (not |$temp_0'bool'@3|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1 ($Memory_108182 (|Store__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) $t30 false) (|contents#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@1)) (and (=> (= (ControlFlow 0 183312) 183769) anon73_Then_correct) (=> (= (ControlFlow 0 183312) 183326) anon73_Else_correct))))))
(let ((anon72_Then_correct  (=> |$temp_0'bool'@3| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_108182 (|Store__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) $t30 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) $t30 |$temp_0'$1_AccountFreezing_FreezingBit'@0|))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@0)) (and (=> (= (ControlFlow 0 183781) 183769) anon73_Then_correct) (=> (= (ControlFlow 0 183781) 183326) anon73_Else_correct))))))
(let ((anon71_Else_correct  (=> (and (not |$temp_0'bool'@2|) (= $1_Event_EventHandleGenerator_$memory@1 ($Memory_98742 (|Store__T@[Int]Bool_| (|domain#$Memory_98742| $1_Event_EventHandleGenerator_$memory) $t30 false) (|contents#$Memory_98742| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 183298) 183781) anon72_Then_correct) (=> (= (ControlFlow 0 183298) 183312) anon72_Else_correct)))))
(let ((anon71_Then_correct  (=> (and |$temp_0'bool'@2| (= $1_Event_EventHandleGenerator_$memory@0 ($Memory_98742 (|Store__T@[Int]Bool_| (|domain#$Memory_98742| $1_Event_EventHandleGenerator_$memory) $t30 true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_98742| $1_Event_EventHandleGenerator_$memory) $t30 |$temp_0'$1_Event_EventHandleGenerator'@0|)))) (and (=> (= (ControlFlow 0 183793) 183781) anon72_Then_correct) (=> (= (ControlFlow 0 183793) 183312) anon72_Else_correct)))))
(let ((anon70_Else_correct  (=> (not |$temp_0'bool'@1|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_141559 (|Store__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) $t30 false) (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 183284) 183793) anon71_Then_correct) (=> (= (ControlFlow 0 183284) 183298) anon71_Else_correct))))))
(let ((anon70_Then_correct  (=> |$temp_0'bool'@1| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_141559 (|Store__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) $t30 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) $t30 |$temp_0'$1_DiemAccount_DiemAccount'@0|))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 183805) 183793) anon71_Then_correct) (=> (= (ControlFlow 0 183805) 183298) anon71_Else_correct))))))
(let ((anon69_Else_correct  (=> (not $t34) (and (=> (= (ControlFlow 0 183272) 183805) anon70_Then_correct) (=> (= (ControlFlow 0 183272) 183284) anon70_Else_correct)))))
(let ((L5_correct  (and (=> (= (ControlFlow 0 182069) (- 0 251819)) (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) 173345816)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) 173345816)) (not (= (+ 16 (|l#Vec_20954| _$t0)) 32)))) (=> (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) 173345816)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) 173345816)) (not (= (+ 16 (|l#Vec_20954| _$t0)) 32))) (=> (= (ControlFlow 0 182069) (- 0 251874)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) 173345816) (= 6 $t9@0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (= 6 $t9@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816) (= 6 $t9@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) 173345816) (= 6 $t9@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t9@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) 173345816) (= 6 $t9@0))) (and (not (= (+ 16 (|l#Vec_20954| _$t0)) 32)) (= 7 $t9@0))))))))
(let ((anon69_Then_correct  (=> $t34 (=> (and (and (or (or (or (or (and (= $t30 0) (= 7 $t9)) (and (= $t30 1) (= 7 $t9))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) $t30) (= 6 $t9))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816))) (= 5 $t9))) (and (not (= (+ 16 (|l#Vec_20954| _$t0)) 32)) (= 7 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 183911) 182069))) L5_correct))))
(let ((anon68_Else_correct  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 183266) (- 0 251491)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory@1) 173345816)) (=> (and (and (= $t30 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t31 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816))) (and (= $t32 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t33 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))) (and (=> (= (ControlFlow 0 183266) (- 0 251548)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) $t30))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) $t30)) (and (=> (= (ControlFlow 0 183266) (- 0 251559)) (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816) (and (=> (= (ControlFlow 0 183266) (- 0 251567)) (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory@3) $t30)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory@3) $t30) (and (=> (= (ControlFlow 0 183266) (- 0 251575)) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t30)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t30) (and (=> (= (ControlFlow 0 183266) (- 0 251581)) (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t30)) (=> (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t30) (and (=> (= (ControlFlow 0 183266) (- 0 251587)) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies $t30)) (=> (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies $t30) (and (=> (= (ControlFlow 0 183266) (- 0 251593)) (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies 173345816) (=> (= $t34  (or (or (or (or (= $t30 0) (= $t30 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) $t30)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816)))) (not (= (+ 16 (|l#Vec_20954| _$t0)) 32)))) (and (=> (= (ControlFlow 0 183266) 183911) anon69_Then_correct) (=> (= (ControlFlow 0 183266) 183272) anon69_Else_correct)))))))))))))))))))))))
(let ((anon68_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t9@0 $abort_code@4) (= (ControlFlow 0 183925) 182069))) L5_correct)))
(let ((anon67_Then$1_correct  (=> (= $1_DiemAccount_DiemWriteSetManager_$memory@1 $1_DiemAccount_DiemWriteSetManager_$memory) (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 183977) 183925) anon68_Then_correct) (=> (= (ControlFlow 0 183977) 183266) anon68_Else_correct))))))
(let ((anon67_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 183975) 183977)) anon67_Then$1_correct)))
(let ((anon67_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_DiemAccount_DiemWriteSetManager_$memory@0 ($Memory_108425 (|Store__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) $t29@0))) (= $1_DiemAccount_DiemWriteSetManager_$memory@1 $1_DiemAccount_DiemWriteSetManager_$memory@0)) (and (= $abort_flag@3 $abort_flag@2) (= $abort_code@4 $abort_code@3))) (and (=> (= (ControlFlow 0 183084) 183925) anon68_Then_correct) (=> (= (ControlFlow 0 183084) 183266) anon68_Else_correct))))))
(let ((anon66_Else_correct  (=> (and (not $abort_flag@2) (= $t29@0 ($1_DiemAccount_DiemWriteSetManager |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 183062) (- 0 251390)) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemWriteSetManager_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_DiemWriteSetManager_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (and (=> (= (ControlFlow 0 183062) 183975) anon67_Then_correct) (=> (= (ControlFlow 0 183062) 183084) anon67_Else_correct)))))))
(let ((anon66_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t9@0 $abort_code@3) (= (ControlFlow 0 183991) 182069))) L5_correct)))
(let ((|inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 183026) 183991) anon66_Then_correct) (=> (= (ControlFlow 0 183026) 183062) anon66_Else_correct)))))
(let ((anon65_Then_correct  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 183032) 183026)) |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$anon0_correct|)))
(let ((anon65_Else_correct  (=> (and (and (not inline$$Not$1$dst@1) (= $t27 $t27)) (and (= $t9@0 $t27) (= (ControlFlow 0 182954) 182069))) L5_correct)))
(let ((anon64_Else$1_correct  (=> (|$IsValid'u64'| 23) (=> (and (and (|$IsValid'u64'| $t27) (= $t27 6)) (and (= $t27 $t27) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 182938) 183032) anon65_Then_correct) (=> (= (ControlFlow 0 182938) 182954) anon65_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not $t24@0)) (= (ControlFlow 0 182898) 182938)) anon64_Else$1_correct)))
(let ((anon64_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 182904) (- 0 251230)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory@1) 173345816)) (=> (|$IsValid'address'| 173345816) (=> (and (= $t24@0 (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816)) (= (ControlFlow 0 182904) 182898)) inline$$Not$1$anon0_correct)))))))
(let ((anon64_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t9@0 $abort_code@3) (= (ControlFlow 0 184005) 182069))) L5_correct)))
(let ((anon63_Then$1_correct  (=> (= $1_DiemAccount_AccountOperationsCapability_$memory@1 $1_DiemAccount_AccountOperationsCapability_$memory) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 184057) 184005) anon64_Then_correct) (=> (= (ControlFlow 0 184057) 182904) anon64_Else_correct))))))
(let ((anon63_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 184055) 184057)) anon63_Then$1_correct)))
(let ((anon63_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_DiemAccount_AccountOperationsCapability_$memory@0 ($Memory_108354 (|Store__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) $t22@0))) (= $1_DiemAccount_AccountOperationsCapability_$memory@1 $1_DiemAccount_AccountOperationsCapability_$memory@0)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 182830) 184005) anon64_Then_correct) (=> (= (ControlFlow 0 182830) 182904) anon64_Else_correct))))))
(let ((anon62_Else_correct  (=> (and (not $abort_flag@1) (= $t22@0 ($1_DiemAccount_AccountOperationsCapability inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@1 |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 182808) (- 0 251129)) (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (and (=> (= (ControlFlow 0 182808) 184055) anon63_Then_correct) (=> (= (ControlFlow 0 182808) 182830) anon63_Else_correct)))))))
(let ((anon62_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t9@0 $abort_code@2) (= (ControlFlow 0 184071) 182069))) L5_correct)))
(let ((|inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 182770) 184071) anon62_Then_correct) (=> (= (ControlFlow 0 182770) 182808) anon62_Else_correct)))))
(let ((anon61_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 182776) 182770)) |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$anon0_correct|)))
(let ((anon61_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t9@0 $abort_code@2) (= (ControlFlow 0 184085) 182069))) L5_correct)))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$L2_correct  (=> (= $abort_code@2 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0) (=> (and (= $abort_flag@1 true) (= inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@1 inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@0)) (and (=> (= (ControlFlow 0 182662) 184085) anon61_Then_correct) (=> (= (ControlFlow 0 182662) 182776) anon61_Else_correct))))))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$anon6_Then_correct  (=> (and (and inline$$1_AccountLimits_grant_mutation_capability$0$$t5@0 (or (or (or (and (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)) (= 2 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory@3) inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0)) (= 5 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory@3) inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0)) 0)) (= 3 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0))) (and (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)) (= 2 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0)))) (and (= inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0) (= (ControlFlow 0 182656) 182662))) inline$$1_AccountLimits_grant_mutation_capability$0$L2_correct)))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$anon5_Then_correct  (=> inline$$1_AccountLimits_grant_mutation_capability$0$$t2@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0)) (and (= inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0 inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0) (= (ControlFlow 0 182688) 182662))) inline$$1_AccountLimits_grant_mutation_capability$0$L2_correct))))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$anon6_Else_correct  (=> (and (not inline$$1_AccountLimits_grant_mutation_capability$0$$t5@0) (= inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1 ($1_AccountLimits_AccountLimitMutationCapability false))) (=> (and (and (= inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1 inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@1 inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1))) (and (=> (= (ControlFlow 0 182564) 184085) anon61_Then_correct) (=> (= (ControlFlow 0 182564) 182776) anon61_Else_correct))))))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$anon5_Else_correct  (=> (not inline$$1_AccountLimits_grant_mutation_capability$0$$t2@0) (=> (and (= inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_AccountLimits_grant_mutation_capability$0$$t5@0  (or (or (or (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory@3) inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory@3) inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0)) 0))) (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816))))) (and (=> (= (ControlFlow 0 182536) 182656) inline$$1_AccountLimits_grant_mutation_capability$0$anon6_Then_correct) (=> (= (ControlFlow 0 182536) 182564) inline$$1_AccountLimits_grant_mutation_capability$0$anon6_Else_correct))))))
(let ((inline$$1_AccountLimits_grant_mutation_capability$0$anon0_correct  (=> (= inline$$1_AccountLimits_grant_mutation_capability$0$$t1@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= inline$$1_AccountLimits_grant_mutation_capability$0$$t2@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 182466) 182688) inline$$1_AccountLimits_grant_mutation_capability$0$anon5_Then_correct) (=> (= (ControlFlow 0 182466) 182536) inline$$1_AccountLimits_grant_mutation_capability$0$anon5_Else_correct))))))
(let ((anon60_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (= $t19 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 182694) 182466)) inline$$1_AccountLimits_grant_mutation_capability$0$anon0_correct))))
(let ((anon60_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t18 $t18)) (and (= $t9@0 $t18) (= (ControlFlow 0 181881) 182069))) L5_correct)))
(let ((anon59_Else$1_correct  (=> (|$IsValid'u64'| 22) (=> (and (and (|$IsValid'u64'| $t18) (= $t18 6)) (and (= $t18 $t18) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 181865) 182694) anon60_Then_correct) (=> (= (ControlFlow 0 181865) 181881) anon60_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t15@0)) (= (ControlFlow 0 181825) 181865)) anon59_Else$1_correct)))
(let ((anon59_Else_correct  (=> (and (and (not $abort_flag@0) (|$IsValid'address'| 173345816)) (and (= $t15@0 (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (= (ControlFlow 0 181831) 181825))) inline$$Not$0$anon0_correct)))
(let ((anon59_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t9@0 $abort_code@1) (= (ControlFlow 0 184099) 182069))) L5_correct)))
(let ((anon13_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (and (=> (= (ControlFlow 0 181773) 184099) anon59_Then_correct) (=> (= (ControlFlow 0 181773) 181831) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_SlidingNonce_SlidingNonce_$memory@1 ($Memory_106974 (|Store__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) false) (|contents#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2 $1_SlidingNonce_SlidingNonce_$memory@1) (= (ControlFlow 0 181742) 181773))) anon13_correct)))
(let ((anon58_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_SlidingNonce_SlidingNonce_$memory@0 ($Memory_106974 (|Store__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |$temp_0'$1_SlidingNonce_SlidingNonce'@0|)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2 $1_SlidingNonce_SlidingNonce_$memory@0) (= (ControlFlow 0 184113) 181773))) anon13_correct)))
(let ((anon57_Else_correct  (=> (not $t13) (and (=> (= (ControlFlow 0 181728) 184113) anon58_Then_correct) (=> (= (ControlFlow 0 181728) 181742) anon58_Else_correct)))))
(let ((anon57_Then_correct  (=> $t13 (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= 6 $t9)) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 184141) 182069))) L5_correct))))
(let ((anon56_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 181722) (- 0 250540)) (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= $t13 (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (=> (= (ControlFlow 0 181722) 184141) anon57_Then_correct) (=> (= (ControlFlow 0 181722) 181728) anon57_Else_correct))))))))
(let ((anon56_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t9@0 $abort_code@1) (= (ControlFlow 0 184155) 182069))) L5_correct)))
(let ((inline$$1_Roles_grant_diem_root_role$0$L2_correct  (=> (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 inline$$1_Roles_grant_diem_root_role$0$$t2@0)) (and (=> (= (ControlFlow 0 181632) 184155) anon56_Then_correct) (=> (= (ControlFlow 0 181632) 181722) anon56_Else_correct))))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon12_Then_correct  (=> inline$$1_Roles_grant_diem_root_role$0$$t6@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= 6 inline$$1_Roles_grant_diem_root_role$0$$t2@0)) (and (= inline$$1_Roles_grant_diem_root_role$0$$t2@0 inline$$1_Roles_grant_diem_root_role$0$$t2@0) (= (ControlFlow 0 181626) 181632))) inline$$1_Roles_grant_diem_root_role$0$L2_correct))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon11_Then_correct  (=> inline$$1_Roles_grant_diem_root_role$0$$t3@0 (=> (and (and (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)) (= 2 inline$$1_Roles_grant_diem_root_role$0$$t2@0)) (and (= inline$$1_Roles_grant_diem_root_role$0$$t2@0 inline$$1_Roles_grant_diem_root_role$0$$t2@0) (= (ControlFlow 0 181662) 181632))) inline$$1_Roles_grant_diem_root_role$0$L2_correct))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon10_Then_correct  (=> inline$$1_Roles_grant_diem_root_role$0$$t1@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 inline$$1_Roles_grant_diem_root_role$0$$t2@0)) (and (= inline$$1_Roles_grant_diem_root_role$0$$t2@0 inline$$1_Roles_grant_diem_root_role$0$$t2@0) (= (ControlFlow 0 181688) 181632))) inline$$1_Roles_grant_diem_root_role$0$L2_correct))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon9_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 0) (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory@2)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 181584) 184155) anon56_Then_correct) (=> (= (ControlFlow 0 181584) 181722) anon56_Else_correct))))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon13_Else_correct  (=> (and (and (not |inline$$1_Roles_grant_diem_root_role$0$$temp_0'bool'@1|) (= $1_Roles_RoleId_$memory@1 ($Memory_106787 (|Store__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) false) (|contents#$Memory_106787| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 181558) 181584))) inline$$1_Roles_grant_diem_root_role$0$anon9_correct)))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon13_Then_correct  (=> (and (and |inline$$1_Roles_grant_diem_root_role$0$$temp_0'bool'@1| (= $1_Roles_RoleId_$memory@0 ($Memory_106787 (|Store__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_Roles_grant_diem_root_role$0$$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 181598) 181584))) inline$$1_Roles_grant_diem_root_role$0$anon9_correct)))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon12_Else_correct  (=> (not inline$$1_Roles_grant_diem_root_role$0$$t6@0) (and (=> (= (ControlFlow 0 181544) 181598) inline$$1_Roles_grant_diem_root_role$0$anon13_Then_correct) (=> (= (ControlFlow 0 181544) 181558) inline$$1_Roles_grant_diem_root_role$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon11_Else_correct  (=> (and (not inline$$1_Roles_grant_diem_root_role$0$$t3@0) (|$IsValid'u64'| 0)) (=> (and (and (= inline$$1_Roles_grant_diem_root_role$0$$t5@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= 0 0) (= inline$$1_Roles_grant_diem_root_role$0$$t5@0 173345816))) (and (=> (= 0 1) (= inline$$1_Roles_grant_diem_root_role$0$$t5@0 186537453)) (= inline$$1_Roles_grant_diem_root_role$0$$t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))))) (and (=> (= (ControlFlow 0 181538) 181626) inline$$1_Roles_grant_diem_root_role$0$anon12_Then_correct) (=> (= (ControlFlow 0 181538) 181544) inline$$1_Roles_grant_diem_root_role$0$anon12_Else_correct))))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon10_Else_correct  (=> (and (not inline$$1_Roles_grant_diem_root_role$0$$t1@0) (= inline$$1_Roles_grant_diem_root_role$0$$t3@0  (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)))) (and (=> (= (ControlFlow 0 181472) 181662) inline$$1_Roles_grant_diem_root_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 181472) 181538) inline$$1_Roles_grant_diem_root_role$0$anon11_Else_correct)))))
(let ((inline$$1_Roles_grant_diem_root_role$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= inline$$1_Roles_grant_diem_root_role$0$$t1@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (and (=> (= (ControlFlow 0 181450) 181688) inline$$1_Roles_grant_diem_root_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 181450) 181472) inline$$1_Roles_grant_diem_root_role$0$anon10_Else_correct)))))
(let ((anon55_Else_correct  (=> (not $t12) (and (=> (= (ControlFlow 0 181692) (- 0 250210)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= (ControlFlow 0 181692) 181450) inline$$1_Roles_grant_diem_root_role$0$anon0_correct))))))
(let ((anon55_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)) (= 2 $t9)) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 184185) 182069))) L5_correct))))
(let ((anon54_Else_correct  (=> (not false) (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= $t12  (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) 173345816)))) (and (=> (= (ControlFlow 0 181033) 184185) anon55_Then_correct) (=> (= (ControlFlow 0 181033) 181692) anon55_Else_correct))))))
(let ((anon53_Then_correct  (=> $t8 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t9)) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 184225) 182069))) L5_correct))))
(let ((anon54_Then_correct true))
(let ((inline$$1_DiemAccount_create_signer$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 ($signer 173345816)) (and (=> (= (ControlFlow 0 180997) 184199) anon54_Then_correct) (=> (= (ControlFlow 0 180997) 181033) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (not $t8) (=> (and (|$IsValid'address'| 173345816) (= (ControlFlow 0 181003) 180997)) inline$$1_DiemAccount_create_signer$0$anon0_correct))))
(let ((anon0$1_correct  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@1)) 0)) (= addr@@1 173345816)))
 :qid |SlidingNoncebpl.11965:20|
 :skolemid |209|
))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@2)) 1)) (= addr@@2 186537453)))
 :qid |SlidingNoncebpl.11973:20|
 :skolemid |210|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@3)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@3)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@3)) 2))))))
 :qid |SlidingNoncebpl.11981:20|
 :skolemid |211|
)))) (=> (and (and (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@4)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@4)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@4)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@4)) 2))))))
 :qid |SlidingNoncebpl.11985:20|
 :skolemid |212|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@5)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@5)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@5)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@5)) 2))))))
 :qid |SlidingNoncebpl.11989:20|
 :skolemid |213|
))) (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@6)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@6)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@6)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@6)) 2))))))
 :qid |SlidingNoncebpl.11993:20|
 :skolemid |214|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@7)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@7)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@7)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@7)) 2)))))
 :qid |SlidingNoncebpl.11997:20|
 :skolemid |215|
)))) (and (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@8)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@8)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@8)) 2)))))
 :qid |SlidingNoncebpl.12001:20|
 :skolemid |216|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@9)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@9)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@9)) 2)))))
 :qid |SlidingNoncebpl.12005:20|
 :skolemid |217|
))) (and (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111915| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@10)) 4))))
 :qid |SlidingNoncebpl.12009:20|
 :skolemid |218|
)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112558| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@11)) 3))))
 :qid |SlidingNoncebpl.12013:20|
 :skolemid |219|
))))) (=> (and (and (and (and (and (and (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112558| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@12)) 3))))
 :qid |SlidingNoncebpl.12017:20|
 :skolemid |220|
)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_112558| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13) (not (= (|l#Vec_74036| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_112558| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@13)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |SlidingNoncebpl.12021:20|
 :skolemid |221|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) 186537453)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107067| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_107153| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107226| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0 ($Range 0 (|l#Vec_74248| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107153| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107153| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_107153| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))) i1)))) 3))))
 :qid |SlidingNoncebpl.12041:151|
 :skolemid |222|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107297| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107381| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107465| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107536| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107620| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107704| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107775| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107872| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_137802| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |SlidingNoncebpl.12078:20|
 :skolemid |223|
)))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_107956| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108040| $1_ChainId_ChainId_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108111| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) 173345816))))))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108111| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (and (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@16) (or (= (|l#Vec_74075| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@16)))) 0) (and (not (= (|l#Vec_74075| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@16)))) 0)) (= addr@@16 (|$account_address#$1_DiemAccount_KeyRotationCapability| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@16)))) 0)))))))
 :qid |SlidingNoncebpl.12106:20|
 :skolemid |224|
)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@17) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@17) (= (|l#Vec_74114| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@17)))) 0)) (and (not (= (|l#Vec_74114| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@17)))) 0)) (= addr@@17 (|$account_address#$1_DiemAccount_WithdrawCapability| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@17)))) 0)))))))
 :qid |SlidingNoncebpl.12110:20|
 :skolemid |225|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (and (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (= (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@18)))
 :qid |SlidingNoncebpl.12122:20|
 :skolemid |226|
)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (= (|Select__T@[Int]Bool_| (|domain#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@19)  (and (= addr@@19 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@19))))
 :qid |SlidingNoncebpl.12126:20|
 :skolemid |227|
)))) (and (and (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (= (|Select__T@[Int]Bool_| (|domain#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@20)  (and (= addr@@20 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@20))))
 :qid |SlidingNoncebpl.12130:20|
 :skolemid |228|
)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (= (|Select__T@[Int]Bool_| (|domain#$Memory_135591| $1_VASPDomain_VASPDomainManager_$memory) addr@@21)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@21)) 1))))
 :qid |SlidingNoncebpl.12134:20|
 :skolemid |229|
))) (and (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (= (|Select__T@[Int]Bool_| (|domain#$Memory_135990| $1_VASPDomain_VASPDomains_$memory) addr@@22)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@22)) 5))))
 :qid |SlidingNoncebpl.12138:20|
 :skolemid |230|
)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_142682| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_142773| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@23)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@23)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@23)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@23)) 2)))))
 :qid |SlidingNoncebpl.12142:20|
 :skolemid |231|
))))))) (and (and (and (and (and (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (= (|Select__T@[Int]Bool_| (|domain#$Memory_140508| $1_DesignatedDealer_Dealer_$memory) addr@@24)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@24)) 2))))
 :qid |SlidingNoncebpl.12146:20|
 :skolemid |232|
)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (= (|Select__T@[Int]Bool_| (|domain#$Memory_137802| $1_DualAttestation_Credential_$memory) addr@@25)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@25)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@25)) 5)))))
 :qid |SlidingNoncebpl.12150:20|
 :skolemid |233|
))) (and (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (= (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@26) (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) addr@@26)))
 :qid |SlidingNoncebpl.12154:20|
 :skolemid |234|
)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) addr@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) addr@@27)))
 :qid |SlidingNoncebpl.12158:20|
 :skolemid |235|
)))) (and (and (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (= (|Select__T@[Int]Bool_| (|domain#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) addr@@28)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@28)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@28)) 1)))))
 :qid |SlidingNoncebpl.12162:20|
 :skolemid |236|
)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (= (|Select__T@[Int]Bool_| (|domain#$Memory_112558| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@29)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@29)) 3))))
 :qid |SlidingNoncebpl.12166:20|
 :skolemid |237|
))) (and (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (= (|Select__T@[Int]Bool_| (|domain#$Memory_111915| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@30)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@30)) 4))))
 :qid |SlidingNoncebpl.12170:20|
 :skolemid |238|
)) (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (= (|Select__T@[Int]Bool_| (|domain#$Memory_136593| $1_VASP_ParentVASP_$memory) addr@@31)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@31)) 5))))
 :qid |SlidingNoncebpl.12174:20|
 :skolemid |239|
))))) (and (and (and (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (= (|Select__T@[Int]Bool_| (|domain#$Memory_136529| $1_VASP_ChildVASP_$memory) addr@@32)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_106787| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) addr@@32)) 6))))
 :qid |SlidingNoncebpl.12178:20|
 :skolemid |240|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108496| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108580| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_106658| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)))) (and (and (|$IsValid'vec'u8''| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |SlidingNoncebpl.12209:20|
 :skolemid |241|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |SlidingNoncebpl.12213:20|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_106787| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@1)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@1))
 :qid |SlidingNoncebpl.12217:20|
 :skolemid |243|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_106974| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@1))
)))))) (and (and (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) $a_0@@2)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@2))
 :qid |SlidingNoncebpl.12221:20|
 :skolemid |244|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_108182| $1_AccountFreezing_FreezingBit_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) $a_0@@3)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@3) (and (<= (|l#Vec_74114| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@3))) 1) (<= (|l#Vec_74075| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@3))) 1))))
 :qid |SlidingNoncebpl.12225:20|
 :skolemid |245|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141559| $1_DiemAccount_DiemAccount_$memory) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@4)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@4))
 :qid |SlidingNoncebpl.12229:20|
 :skolemid |246|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_108354| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) $a_0@@5)))
(|$IsValid'$1_DiemAccount_DiemWriteSetManager'| $rsc@@5))
 :qid |SlidingNoncebpl.12233:20|
 :skolemid |247|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|contents#$Memory_108425| $1_DiemAccount_DiemWriteSetManager_$memory) $a_0@@5))
)))) (and (and (= $t6 173345816) (= $t7 173345816)) (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t6) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies $t6)))) (and (and (and (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies $t6) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemWriteSetManager_$modifies $t6)) (and (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies $t6) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies $t6))) (and (and (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies $t6) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies 173345816)) (and (= _$t0 _$t0) (= $t8  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_106105| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))))) (and (=> (= (ControlFlow 0 180953) 184225) anon53_Then_correct) (=> (= (ControlFlow 0 180953) 181003) anon53_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_73950| stream@@4) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| stream@@4) v@@43) 0)
 :qid |SlidingNoncebpl.159:13|
 :skolemid |4|
))))
 :qid |SlidingNoncebpl.2406:13|
 :skolemid |84|
))) (= (ControlFlow 0 179509) 180953)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 248406) 179509) inline$$InitEventStore$0$anon0_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Memory_98742 0)) ((($Memory_98742 (|domain#$Memory_98742| |T@[Int]Bool|) (|contents#$Memory_98742| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_75755 0)) (((Vec_75755 (|v#Vec_75755| |T@[Int]#0|) (|l#Vec_75755| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_108496 0)) ((($Memory_108496 (|domain#$Memory_108496| |T@[Int]Bool|) (|contents#$Memory_108496| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_108425 0)) ((($Memory_108425 (|domain#$Memory_108425| |T@[Int]Bool|) (|contents#$Memory_108425| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_108182 0)) ((($Memory_108182 (|domain#$Memory_108182| |T@[Int]Bool|) (|contents#$Memory_108182| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_108111 0)) ((($Memory_108111 (|domain#$Memory_108111| |T@[Int]Bool|) (|contents#$Memory_108111| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_108040 0)) ((($Memory_108040 (|domain#$Memory_108040| |T@[Int]Bool|) (|contents#$Memory_108040| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_140508 0)) ((($Memory_140508 (|domain#$Memory_140508| |T@[Int]Bool|) (|contents#$Memory_140508| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_107872 0)) ((($Memory_107872 (|domain#$Memory_107872| |T@[Int]Bool|) (|contents#$Memory_107872| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_136593 0)) ((($Memory_136593 (|domain#$Memory_136593| |T@[Int]Bool|) (|contents#$Memory_136593| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_136529 0)) ((($Memory_136529 (|domain#$Memory_136529| |T@[Int]Bool|) (|contents#$Memory_136529| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_135591 0)) ((($Memory_135591 (|domain#$Memory_135591| |T@[Int]Bool|) (|contents#$Memory_135591| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_132073 0)) ((($Memory_132073 (|domain#$Memory_132073| |T@[Int]Bool|) (|contents#$Memory_132073| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_131786 0)) ((($Memory_131786 (|domain#$Memory_131786| |T@[Int]Bool|) (|contents#$Memory_131786| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107704 0)) ((($Memory_107704 (|domain#$Memory_107704| |T@[Int]Bool|) (|contents#$Memory_107704| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107465 0)) ((($Memory_107465 (|domain#$Memory_107465| |T@[Int]Bool|) (|contents#$Memory_107465| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_108354 0)) ((($Memory_108354 (|domain#$Memory_108354| |T@[Int]Bool|) (|contents#$Memory_108354| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_120361 0)) ((($Memory_120361 (|domain#$Memory_120361| |T@[Int]Bool|) (|contents#$Memory_120361| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120297 0)) ((($Memory_120297 (|domain#$Memory_120297| |T@[Int]Bool|) (|contents#$Memory_120297| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_120674 0)) ((($Memory_120674 (|domain#$Memory_120674| |T@[Int]Bool|) (|contents#$Memory_120674| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120587 0)) ((($Memory_120587 (|domain#$Memory_120587| |T@[Int]Bool|) (|contents#$Memory_120587| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_142773 0)) ((($Memory_142773 (|domain#$Memory_142773| |T@[Int]Bool|) (|contents#$Memory_142773| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_124696 0)) ((($Memory_124696 (|domain#$Memory_124696| |T@[Int]Bool|) (|contents#$Memory_124696| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_107536 0)) ((($Memory_107536 (|domain#$Memory_107536| |T@[Int]Bool|) (|contents#$Memory_107536| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_142682 0)) ((($Memory_142682 (|domain#$Memory_142682| |T@[Int]Bool|) (|contents#$Memory_142682| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_124605 0)) ((($Memory_124605 (|domain#$Memory_124605| |T@[Int]Bool|) (|contents#$Memory_124605| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107775 0)) ((($Memory_107775 (|domain#$Memory_107775| |T@[Int]Bool|) (|contents#$Memory_107775| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_116142 0)) ((($Memory_116142 (|domain#$Memory_116142| |T@[Int]Bool|) (|contents#$Memory_116142| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_116055 0)) ((($Memory_116055 (|domain#$Memory_116055| |T@[Int]Bool|) (|contents#$Memory_116055| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_115968 0)) ((($Memory_115968 (|domain#$Memory_115968| |T@[Int]Bool|) (|contents#$Memory_115968| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_115881 0)) ((($Memory_115881 (|domain#$Memory_115881| |T@[Int]Bool|) (|contents#$Memory_115881| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_115794 0)) ((($Memory_115794 (|domain#$Memory_115794| |T@[Int]Bool|) (|contents#$Memory_115794| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_115707 0)) ((($Memory_115707 (|domain#$Memory_115707| |T@[Int]Bool|) (|contents#$Memory_115707| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_107226 0)) ((($Memory_107226 (|domain#$Memory_107226| |T@[Int]Bool|) (|contents#$Memory_107226| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_114634 0)) ((($Memory_114634 (|domain#$Memory_114634| |T@[Int]Bool|) (|contents#$Memory_114634| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_107067 0)) ((($Memory_107067 (|domain#$Memory_107067| |T@[Int]Bool|) (|contents#$Memory_107067| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_106658 0)) ((($Memory_106658 (|domain#$Memory_106658| |T@[Int]Bool|) (|contents#$Memory_106658| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_106974 0)) ((($Memory_106974 (|domain#$Memory_106974| |T@[Int]Bool|) (|contents#$Memory_106974| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_WithdrawCapability| 0)
(declare-datatypes ((T@Vec_74114 0)) (((Vec_74114 (|v#Vec_74114| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#Vec_74114| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| T@Vec_74114) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_KeyRotationCapability| 0)
(declare-datatypes ((T@Vec_74075 0)) (((Vec_74075 (|v#Vec_74075| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#Vec_74075| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| T@Vec_74075) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_20954 0)) (((Vec_20954 (|v#Vec_20954| |T@[Int]Int|) (|l#Vec_20954| Int) ) ) ))
(declare-sort |T@[Int]Vec_20954| 0)
(declare-datatypes ((T@Vec_74305 0)) (((Vec_74305 (|v#Vec_74305| |T@[Int]Vec_20954|) (|l#Vec_74305| Int) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| T@Vec_74305) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_107956 0)) ((($Memory_107956 (|domain#$Memory_107956| |T@[Int]Bool|) (|contents#$Memory_107956| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| T@Vec_74305) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_107297 0)) ((($Memory_107297 (|domain#$Memory_107297| |T@[Int]Bool|) (|contents#$Memory_107297| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_20954) (|$native_schedule#$1_DiemVMConfig_GasSchedule| T@Vec_20954) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_108580 0)) ((($Memory_108580 (|domain#$Memory_108580| |T@[Int]Bool|) (|contents#$Memory_108580| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| T@Vec_20954) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_114501 0)) ((($Memory_114501 (|domain#$Memory_114501| |T@[Int]Bool|) (|contents#$Memory_114501| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| T@Vec_20954) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_141559 0)) ((($Memory_141559 (|domain#$Memory_141559| |T@[Int]Bool|) (|contents#$Memory_141559| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| T@Vec_20954) (|$base_url#$1_DualAttestation_Credential| T@Vec_20954) (|$compliance_public_key#$1_DualAttestation_Credential| T@Vec_20954) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_137802 0)) ((($Memory_137802 (|domain#$Memory_137802| |T@[Int]Bool|) (|contents#$Memory_137802| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| T@Vec_20954) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomain| 0)
(declare-datatypes ((T@Vec_74543 0)) (((Vec_74543 (|v#Vec_74543| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#Vec_74543| Int) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| T@Vec_74543) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_135990 0)) ((($Memory_135990 (|domain#$Memory_135990| |T@[Int]Bool|) (|contents#$Memory_135990| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@Vec_20954) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107620 0)) ((($Memory_107620 (|domain#$Memory_107620| |T@[Int]Bool|) (|contents#$Memory_107620| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@Vec_20954) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_107381 0)) ((($Memory_107381 (|domain#$Memory_107381| |T@[Int]Bool|) (|contents#$Memory_107381| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| T@Vec_20954) (|$validator_network_addresses#$1_ValidatorConfig_Config| T@Vec_20954) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| T@Vec_20954) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_Config| 0)
(declare-datatypes ((T@Vec_74036 0)) (((Vec_74036 (|v#Vec_74036| |T@[Int]$1_ValidatorConfig_Config|) (|l#Vec_74036| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| T@Vec_74036) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_ValidatorInfo| 0)
(declare-datatypes ((T@Vec_74248 0)) (((Vec_74248 (|v#Vec_74248| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#Vec_74248| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| T@Vec_74248) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_107153 0)) ((($Memory_107153 (|domain#$Memory_107153| |T@[Int]Bool|) (|contents#$Memory_107153| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| T@Vec_20954) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| T@Vec_20954) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_112558 0)) ((($Memory_112558 (|domain#$Memory_112558| |T@[Int]Bool|) (|contents#$Memory_112558| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| T@Vec_20954) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_111915 0)) ((($Memory_111915 (|domain#$Memory_111915| |T@[Int]Bool|) (|contents#$Memory_111915| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_106787 0)) ((($Memory_106787 (|domain#$Memory_106787| |T@[Int]Bool|) (|contents#$Memory_106787| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_106105 0)) ((($Memory_106105 (|domain#$Memory_106105| |T@[Int]Bool|) (|contents#$Memory_106105| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| T@Vec_20954) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| T@Vec_20954) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| T@Vec_20954) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| T@Vec_20954) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| T@Vec_20954) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| T@Vec_20954) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| T@Vec_20954) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| T@Vec_20954) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| T@Vec_20954) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| T@Vec_20954) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_20954) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| T@Vec_20954) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| T@Vec_20954) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_73950 0)) (((Multiset_73950 (|v#Multiset_73950| |T@[$EventRep]Int|) (|l#Multiset_73950| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_73950| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_73950|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_156901 0)) ((($Mutation_156901 (|l#$Mutation_156901| T@$Location) (|p#$Mutation_156901| T@Vec_20954) (|v#$Mutation_156901| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_156856 0)) ((($Mutation_156856 (|l#$Mutation_156856| T@$Location) (|p#$Mutation_156856| T@Vec_20954) (|v#$Mutation_156856| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_34333 0)) ((($Mutation_34333 (|l#$Mutation_34333| T@$Location) (|p#$Mutation_34333| T@Vec_20954) (|v#$Mutation_34333| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_130050 0)) ((($Mutation_130050 (|l#$Mutation_130050| T@$Location) (|p#$Mutation_130050| T@Vec_20954) (|v#$Mutation_130050| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_118819 0)) ((($Mutation_118819 (|l#$Mutation_118819| T@$Location) (|p#$Mutation_118819| T@Vec_20954) (|v#$Mutation_118819| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_106600 0)) ((($Mutation_106600 (|l#$Mutation_106600| T@$Location) (|p#$Mutation_106600| T@Vec_20954) (|v#$Mutation_106600| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_99373 0)) ((($Mutation_99373 (|l#$Mutation_99373| T@$Location) (|p#$Mutation_99373| T@Vec_20954) (|v#$Mutation_99373| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11647 0)) ((($Mutation_11647 (|l#$Mutation_11647| T@$Location) (|p#$Mutation_11647| T@Vec_20954) (|v#$Mutation_11647| Int) ) ) ))
(declare-datatypes ((T@$Mutation_93630 0)) ((($Mutation_93630 (|l#$Mutation_93630| T@$Location) (|p#$Mutation_93630| T@Vec_20954) (|v#$Mutation_93630| T@Vec_20954) ) ) ))
(declare-datatypes ((T@$Mutation_92542 0)) ((($Mutation_92542 (|l#$Mutation_92542| T@$Location) (|p#$Mutation_92542| T@Vec_20954) (|v#$Mutation_92542| T@Vec_74305) ) ) ))
(declare-datatypes ((T@$Mutation_90833 0)) ((($Mutation_90833 (|l#$Mutation_90833| T@$Location) (|p#$Mutation_90833| T@Vec_20954) (|v#$Mutation_90833| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_89846 0)) ((($Mutation_89846 (|l#$Mutation_89846| T@$Location) (|p#$Mutation_89846| T@Vec_20954) (|v#$Mutation_89846| T@Vec_74036) ) ) ))
(declare-datatypes ((T@$Mutation_88191 0)) ((($Mutation_88191 (|l#$Mutation_88191| T@$Location) (|p#$Mutation_88191| T@Vec_20954) (|v#$Mutation_88191| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_87204 0)) ((($Mutation_87204 (|l#$Mutation_87204| T@$Location) (|p#$Mutation_87204| T@Vec_20954) (|v#$Mutation_87204| T@Vec_74543) ) ) ))
(declare-datatypes ((T@$Mutation_85526 0)) ((($Mutation_85526 (|l#$Mutation_85526| T@$Location) (|p#$Mutation_85526| T@Vec_20954) (|v#$Mutation_85526| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_84539 0)) ((($Mutation_84539 (|l#$Mutation_84539| T@$Location) (|p#$Mutation_84539| T@Vec_20954) (|v#$Mutation_84539| T@Vec_74248) ) ) ))
(declare-datatypes ((T@$Mutation_82739 0)) ((($Mutation_82739 (|l#$Mutation_82739| T@$Location) (|p#$Mutation_82739| T@Vec_20954) (|v#$Mutation_82739| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_81752 0)) ((($Mutation_81752 (|l#$Mutation_81752| T@$Location) (|p#$Mutation_81752| T@Vec_20954) (|v#$Mutation_81752| T@Vec_74114) ) ) ))
(declare-datatypes ((T@$Mutation_80087 0)) ((($Mutation_80087 (|l#$Mutation_80087| T@$Location) (|p#$Mutation_80087| T@Vec_20954) (|v#$Mutation_80087| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_79100 0)) ((($Mutation_79100 (|l#$Mutation_79100| T@$Location) (|p#$Mutation_79100| T@Vec_20954) (|v#$Mutation_79100| T@Vec_74075) ) ) ))
(declare-datatypes ((T@$Mutation_77387 0)) ((($Mutation_77387 (|l#$Mutation_77387| T@$Location) (|p#$Mutation_77387| T@Vec_20954) (|v#$Mutation_77387| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_76400 0)) ((($Mutation_76400 (|l#$Mutation_76400| T@$Location) (|p#$Mutation_76400| T@Vec_20954) (|v#$Mutation_76400| T@Vec_75755) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_75755 T@Vec_75755) Bool)
(declare-fun InRangeVec_65954 (T@Vec_75755 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_75755) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_75755 |T@#0|) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_74075 T@Vec_74075) Bool)
(declare-fun InRangeVec_66155 (T@Vec_74075 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|T@[Int]$1_DiemAccount_KeyRotationCapability| Int) T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (T@Vec_74075) Bool)
(declare-fun |$IsValid'$1_DiemAccount_KeyRotationCapability'| (T@$1_DiemAccount_KeyRotationCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| (T@Vec_74075 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_74114 T@Vec_74114) Bool)
(declare-fun InRangeVec_66356 (T@Vec_74114 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|T@[Int]$1_DiemAccount_WithdrawCapability| Int) T@$1_DiemAccount_WithdrawCapability)
(declare-fun |$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (T@Vec_74114) Bool)
(declare-fun |$IsValid'$1_DiemAccount_WithdrawCapability'| (T@$1_DiemAccount_WithdrawCapability) Bool)
(declare-fun |$IndexOfVec'$1_DiemAccount_WithdrawCapability'| (T@Vec_74114 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun |$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_74248 T@Vec_74248) Bool)
(declare-fun InRangeVec_66557 (T@Vec_74248 Int) Bool)
(declare-fun |Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|T@[Int]$1_DiemSystem_ValidatorInfo| Int) T@$1_DiemSystem_ValidatorInfo)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_20954 T@Vec_20954) Bool)
(declare-fun |$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (T@Vec_74248) Bool)
(declare-fun |$IsValid'$1_DiemSystem_ValidatorInfo'| (T@$1_DiemSystem_ValidatorInfo) Bool)
(declare-fun |$IndexOfVec'$1_DiemSystem_ValidatorInfo'| (T@Vec_74248 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun |$IsEqual'vec'$1_VASPDomain_VASPDomain''| (T@Vec_74543 T@Vec_74543) Bool)
(declare-fun InRangeVec_66758 (T@Vec_74543 Int) Bool)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomain_| (|T@[Int]$1_VASPDomain_VASPDomain| Int) T@$1_VASPDomain_VASPDomain)
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| (T@Vec_74543) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| (T@Vec_74543 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsEqual'vec'$1_ValidatorConfig_Config''| (T@Vec_74036 T@Vec_74036) Bool)
(declare-fun InRangeVec_66959 (T@Vec_74036 Int) Bool)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_Config_| (|T@[Int]$1_ValidatorConfig_Config| Int) T@$1_ValidatorConfig_Config)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| (T@Vec_74036) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| (T@Vec_74036 T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_74305 T@Vec_74305) Bool)
(declare-fun InRangeVec_91965 (T@Vec_74305 Int) Bool)
(declare-fun |Select__T@[Int]Vec_20954_| (|T@[Int]Vec_20954| Int) T@Vec_20954)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_74305) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_20954) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_74305 T@Vec_20954) Int)
(declare-fun |$IsEqual'vec'address''| (T@Vec_20954 T@Vec_20954) Bool)
(declare-fun InRangeVec_11023 (T@Vec_20954 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'address''| (T@Vec_20954) Bool)
(declare-fun |$IndexOfVec'address'| (T@Vec_20954 Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_20954 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_20954) T@Vec_20954)
(declare-fun $1_Hash_sha3 (T@Vec_20954) T@Vec_20954)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_20954) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_20954 T@Vec_20954 T@Vec_20954) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_73950_| (|T@[$1_Event_EventHandle]Multiset_73950| T@$1_Event_EventHandle) T@Multiset_73950)
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
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| (|T@$1_Diem_BurnCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| (|T@$1_Diem_MintCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
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
(declare-fun IndexOfVec_20954 (T@Vec_20954 Int) Int)
(declare-fun IndexOfVec_74036 (T@Vec_74036 T@$1_ValidatorConfig_Config) Int)
(declare-fun IndexOfVec_74075 (T@Vec_74075 T@$1_DiemAccount_KeyRotationCapability) Int)
(declare-fun IndexOfVec_74114 (T@Vec_74114 T@$1_DiemAccount_WithdrawCapability) Int)
(declare-fun IndexOfVec_74248 (T@Vec_74248 T@$1_DiemSystem_ValidatorInfo) Int)
(declare-fun IndexOfVec_74305 (T@Vec_74305 T@Vec_20954) Int)
(declare-fun IndexOfVec_74543 (T@Vec_74543 T@$1_VASPDomain_VASPDomain) Int)
(declare-fun IndexOfVec_75755 (T@Vec_75755 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_73950| |T@[$1_Event_EventHandle]Multiset_73950|) |T@[$1_Event_EventHandle]Multiset_73950|)
(declare-fun |lambda#27| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
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
(declare-fun |lambda#21| (Int Int Int |T@[Int]Vec_20954| |T@[Int]Vec_20954| Int T@Vec_20954) |T@[Int]Vec_20954|)
(declare-fun |lambda#22| (Int Int |T@[Int]Vec_20954| Int Int T@Vec_20954) |T@[Int]Vec_20954|)
(declare-fun |lambda#23| (Int Int Int |T@[Int]Vec_20954| |T@[Int]Vec_20954| Int T@Vec_20954) |T@[Int]Vec_20954|)
(declare-fun |lambda#24| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#25| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#26| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SlidingNoncebpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SlidingNoncebpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SlidingNoncebpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SlidingNoncebpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SlidingNoncebpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SlidingNoncebpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SlidingNoncebpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SlidingNoncebpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_75755) (v2 T@Vec_75755) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_75755| v1) (|l#Vec_75755| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_65954 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_75755| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_75755| v2) i@@0)))
 :qid |SlidingNoncebpl.615:13|
 :skolemid |17|
))))
 :qid |SlidingNoncebpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_75755) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_75755| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_65954 v@@4 i@@1) true)
 :qid |SlidingNoncebpl.621:13|
 :skolemid |19|
))))
 :qid |SlidingNoncebpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_75755) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_65954 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@5) i@@3) e))
 :qid |SlidingNoncebpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_65954 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@5) j) e)))
 :qid |SlidingNoncebpl.634:17|
 :skolemid |22|
)))))
 :qid |SlidingNoncebpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_74075) (v2@@0 T@Vec_74075) ) (! (= (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0)  (and (= (|l#Vec_74075| v1@@0) (|l#Vec_74075| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_66155 v1@@0 i@@4) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v1@@0) i@@4) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v2@@0) i@@4)))
 :qid |SlidingNoncebpl.796:13|
 :skolemid |24|
))))
 :qid |SlidingNoncebpl.794:62|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_KeyRotationCapability''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_74075) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_74075| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_66155 v@@6 i@@5) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@6) i@@5)))
 :qid |SlidingNoncebpl.802:13|
 :skolemid |26|
))))
 :qid |SlidingNoncebpl.800:62|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_74075) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@6 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_66155 v@@7 i@@7)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@7) i@@7) e@@0))
 :qid |SlidingNoncebpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_66155 v@@7 i@@6)) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@7) j@@0) e@@0)))
 :qid |SlidingNoncebpl.815:17|
 :skolemid |29|
)))))
 :qid |SlidingNoncebpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_74114) (v2@@1 T@Vec_74114) ) (! (= (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1)  (and (= (|l#Vec_74114| v1@@1) (|l#Vec_74114| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_66356 v1@@1 i@@8) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v1@@1) i@@8) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v2@@1) i@@8)))
 :qid |SlidingNoncebpl.977:13|
 :skolemid |31|
))))
 :qid |SlidingNoncebpl.975:59|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'$1_DiemAccount_WithdrawCapability''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_74114) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_74114| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_66356 v@@8 i@@9) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@8) i@@9)))
 :qid |SlidingNoncebpl.983:13|
 :skolemid |33|
))))
 :qid |SlidingNoncebpl.981:59|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_74114) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_66356 v@@9 i@@11)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@9) i@@11) e@@1))
 :qid |SlidingNoncebpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_66356 v@@9 i@@10)) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@9) j@@1) e@@1)))
 :qid |SlidingNoncebpl.996:17|
 :skolemid |36|
)))))
 :qid |SlidingNoncebpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_74248) (v2@@2 T@Vec_74248) ) (! (= (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2)  (and (= (|l#Vec_74248| v1@@2) (|l#Vec_74248| v2@@2)) (forall ((i@@12 Int) ) (!  (=> (InRangeVec_66557 v1@@2 i@@12) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12)) (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12))) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12)))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12)))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12))))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12)))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v1@@2) i@@12)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v2@@2) i@@12)))))
 :qid |SlidingNoncebpl.1158:13|
 :skolemid |38|
))))
 :qid |SlidingNoncebpl.1156:53|
 :skolemid |39|
 :pattern ( (|$IsEqual'vec'$1_DiemSystem_ValidatorInfo''| v1@@2 v2@@2))
)))
(assert (forall ((v@@10 T@Vec_74248) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (|l#Vec_74248| v@@10)) (forall ((i@@13 Int) ) (!  (=> (InRangeVec_66557 v@@10 i@@13) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@10) i@@13)))
 :qid |SlidingNoncebpl.1164:13|
 :skolemid |40|
))))
 :qid |SlidingNoncebpl.1162:53|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 T@Vec_74248) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@14 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (InRangeVec_66557 v@@11 i@@15)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@15)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2))))
 :qid |SlidingNoncebpl.1169:13|
 :skolemid |42|
))) (= i@@14 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@14) (InRangeVec_66557 v@@11 i@@14)) (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) i@@14)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@14)) (not (and (and (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2)) (|$addr#$1_DiemSystem_ValidatorInfo| e@@2)) (= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| e@@2))) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2))) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2))) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2))) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|$config#$1_DiemSystem_ValidatorInfo| e@@2))))) (= (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@11) j@@2)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| e@@2)))))
 :qid |SlidingNoncebpl.1177:17|
 :skolemid |43|
)))))
 :qid |SlidingNoncebpl.1173:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v1@@3 T@Vec_74543) (v2@@3 T@Vec_74543) ) (! (= (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3)  (and (= (|l#Vec_74543| v1@@3) (|l#Vec_74543| v2@@3)) (forall ((i@@16 Int) ) (!  (=> (InRangeVec_66758 v1@@3 i@@16) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v1@@3) i@@16)) (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v2@@3) i@@16))))
 :qid |SlidingNoncebpl.1339:13|
 :skolemid |45|
))))
 :qid |SlidingNoncebpl.1337:50|
 :skolemid |46|
 :pattern ( (|$IsEqual'vec'$1_VASPDomain_VASPDomain''| v1@@3 v2@@3))
)))
(assert (forall ((v@@12 T@Vec_74543) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (|l#Vec_74543| v@@12)) (forall ((i@@17 Int) ) (!  (=> (InRangeVec_66758 v@@12 i@@17) (|$IsValid'$1_VASPDomain_VASPDomain'| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@12) i@@17)))
 :qid |SlidingNoncebpl.1345:13|
 :skolemid |47|
))))
 :qid |SlidingNoncebpl.1343:50|
 :skolemid |48|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 T@Vec_74543) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@18 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_66758 v@@13 i@@19)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@13) i@@19)) (|$domain#$1_VASPDomain_VASPDomain| e@@3)))
 :qid |SlidingNoncebpl.1350:13|
 :skolemid |49|
))) (= i@@18 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@18) (InRangeVec_66758 v@@13 i@@18)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@13) i@@18)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@18)) (not (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@13) j@@3)) (|$domain#$1_VASPDomain_VASPDomain| e@@3))))
 :qid |SlidingNoncebpl.1358:17|
 :skolemid |50|
)))))
 :qid |SlidingNoncebpl.1354:15|
 :skolemid |51|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v1@@4 T@Vec_74036) (v2@@4 T@Vec_74036) ) (! (= (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4)  (and (= (|l#Vec_74036| v1@@4) (|l#Vec_74036| v2@@4)) (forall ((i@@20 Int) ) (!  (=> (InRangeVec_66959 v1@@4 i@@20) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v1@@4) i@@20)) (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v2@@4) i@@20))) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v1@@4) i@@20)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v2@@4) i@@20)))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v1@@4) i@@20)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v2@@4) i@@20)))))
 :qid |SlidingNoncebpl.1520:13|
 :skolemid |52|
))))
 :qid |SlidingNoncebpl.1518:51|
 :skolemid |53|
 :pattern ( (|$IsEqual'vec'$1_ValidatorConfig_Config''| v1@@4 v2@@4))
)))
(assert (forall ((v@@14 T@Vec_74036) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (|l#Vec_74036| v@@14)) (forall ((i@@21 Int) ) (!  (=> (InRangeVec_66959 v@@14 i@@21) (|$IsValid'$1_ValidatorConfig_Config'| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@14) i@@21)))
 :qid |SlidingNoncebpl.1526:13|
 :skolemid |54|
))))
 :qid |SlidingNoncebpl.1524:51|
 :skolemid |55|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 T@Vec_74036) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_66959 v@@15 i@@23)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@23)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@23)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@23)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4))))
 :qid |SlidingNoncebpl.1531:13|
 :skolemid |56|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (InRangeVec_66959 v@@15 i@@22)) (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@22)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@22)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) i@@22)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@22)) (not (and (and (|$IsEqual'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) j@@4)) (|$consensus_pubkey#$1_ValidatorConfig_Config| e@@4)) (|$IsEqual'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) j@@4)) (|$validator_network_addresses#$1_ValidatorConfig_Config| e@@4))) (|$IsEqual'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@15) j@@4)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| e@@4)))))
 :qid |SlidingNoncebpl.1539:17|
 :skolemid |57|
)))))
 :qid |SlidingNoncebpl.1535:15|
 :skolemid |58|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v1@@5 T@Vec_74305) (v2@@5 T@Vec_74305) ) (! (= (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5)  (and (= (|l#Vec_74305| v1@@5) (|l#Vec_74305| v2@@5)) (forall ((i@@24 Int) ) (!  (=> (InRangeVec_91965 v1@@5 i@@24) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v1@@5) i@@24) (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v2@@5) i@@24)))
 :qid |SlidingNoncebpl.1701:13|
 :skolemid |59|
))))
 :qid |SlidingNoncebpl.1699:33|
 :skolemid |60|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1@@5 v2@@5))
)))
(assert (forall ((v@@16 T@Vec_74305) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (|l#Vec_74305| v@@16)) (forall ((i@@25 Int) ) (!  (=> (InRangeVec_91965 v@@16 i@@25) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@16) i@@25)))
 :qid |SlidingNoncebpl.1707:13|
 :skolemid |61|
))))
 :qid |SlidingNoncebpl.1705:33|
 :skolemid |62|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 T@Vec_74305) (e@@5 T@Vec_20954) ) (! (let ((i@@26 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (InRangeVec_91965 v@@17 i@@27)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@17) i@@27) e@@5))
 :qid |SlidingNoncebpl.1712:13|
 :skolemid |63|
))) (= i@@26 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@26) (InRangeVec_91965 v@@17 i@@26)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@17) i@@26) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@26)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@17) j@@5) e@@5)))
 :qid |SlidingNoncebpl.1720:17|
 :skolemid |64|
)))))
 :qid |SlidingNoncebpl.1716:15|
 :skolemid |65|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v1@@6 T@Vec_20954) (v2@@6 T@Vec_20954) ) (! (= (|$IsEqual'vec'address''| v1@@6 v2@@6)  (and (= (|l#Vec_20954| v1@@6) (|l#Vec_20954| v2@@6)) (forall ((i@@28 Int) ) (!  (=> (InRangeVec_11023 v1@@6 i@@28) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v1@@6) i@@28) (|Select__T@[Int]Int_| (|v#Vec_20954| v2@@6) i@@28)))
 :qid |SlidingNoncebpl.1882:13|
 :skolemid |66|
))))
 :qid |SlidingNoncebpl.1880:33|
 :skolemid |67|
 :pattern ( (|$IsEqual'vec'address''| v1@@6 v2@@6))
)))
(assert (forall ((v@@18 T@Vec_20954) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (|l#Vec_20954| v@@18)) (forall ((i@@29 Int) ) (!  (=> (InRangeVec_11023 v@@18 i@@29) (|$IsValid'address'| (|Select__T@[Int]Int_| (|v#Vec_20954| v@@18) i@@29)))
 :qid |SlidingNoncebpl.1888:13|
 :skolemid |68|
))))
 :qid |SlidingNoncebpl.1886:33|
 :skolemid |69|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 T@Vec_20954) (e@@6 Int) ) (! (let ((i@@30 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@31 Int) ) (!  (and (and (|$IsValid'u64'| i@@31) (InRangeVec_11023 v@@19 i@@31)) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@19) i@@31) e@@6))
 :qid |SlidingNoncebpl.1893:13|
 :skolemid |70|
))) (= i@@30 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@30) (InRangeVec_11023 v@@19 i@@30)) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@19) i@@30) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@30)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@19) j@@6) e@@6)))
 :qid |SlidingNoncebpl.1901:17|
 :skolemid |71|
)))))
 :qid |SlidingNoncebpl.1897:15|
 :skolemid |72|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v1@@7 T@Vec_20954) (v2@@7 T@Vec_20954) ) (! (= (|$IsEqual'vec'u8''| v1@@7 v2@@7)  (and (= (|l#Vec_20954| v1@@7) (|l#Vec_20954| v2@@7)) (forall ((i@@32 Int) ) (!  (=> (InRangeVec_11023 v1@@7 i@@32) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v1@@7) i@@32) (|Select__T@[Int]Int_| (|v#Vec_20954| v2@@7) i@@32)))
 :qid |SlidingNoncebpl.2063:13|
 :skolemid |73|
))))
 :qid |SlidingNoncebpl.2061:28|
 :skolemid |74|
 :pattern ( (|$IsEqual'vec'u8''| v1@@7 v2@@7))
)))
(assert (forall ((v@@20 T@Vec_20954) ) (! (= (|$IsValid'vec'u8''| v@@20)  (and (|$IsValid'u64'| (|l#Vec_20954| v@@20)) (forall ((i@@33 Int) ) (!  (=> (InRangeVec_11023 v@@20 i@@33) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_20954| v@@20) i@@33)))
 :qid |SlidingNoncebpl.2069:13|
 :skolemid |75|
))))
 :qid |SlidingNoncebpl.2067:28|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'u8''| v@@20))
)))
(assert (forall ((v@@21 T@Vec_20954) (e@@7 Int) ) (! (let ((i@@34 (|$IndexOfVec'u8'| v@@21 e@@7)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (InRangeVec_11023 v@@21 i@@35)) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@21) i@@35) e@@7))
 :qid |SlidingNoncebpl.2074:13|
 :skolemid |77|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (InRangeVec_11023 v@@21 i@@34)) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@21) i@@34) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@34)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@21) j@@7) e@@7)))
 :qid |SlidingNoncebpl.2082:17|
 :skolemid |78|
)))))
 :qid |SlidingNoncebpl.2078:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'u8'| v@@21 e@@7))
)))
(assert (forall ((v1@@8 T@Vec_20954) (v2@@8 T@Vec_20954) ) (! (= (|$IsEqual'vec'u8''| v1@@8 v2@@8) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@8) ($1_Hash_sha2 v2@@8)))
 :qid |SlidingNoncebpl.2255:15|
 :skolemid |80|
 :pattern ( ($1_Hash_sha2 v1@@8) ($1_Hash_sha2 v2@@8))
)))
(assert (forall ((v1@@9 T@Vec_20954) (v2@@9 T@Vec_20954) ) (! (= (|$IsEqual'vec'u8''| v1@@9 v2@@9) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@9) ($1_Hash_sha3 v2@@9)))
 :qid |SlidingNoncebpl.2271:15|
 :skolemid |81|
 :pattern ( ($1_Hash_sha3 v1@@9) ($1_Hash_sha3 v2@@9))
)))
(assert (forall ((k1 T@Vec_20954) (k2 T@Vec_20954) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SlidingNoncebpl.2342:15|
 :skolemid |82|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_20954) (s2 T@Vec_20954) (k1@@0 T@Vec_20954) (k2@@0 T@Vec_20954) (m1 T@Vec_20954) (m2 T@Vec_20954) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SlidingNoncebpl.2345:15|
 :skolemid |83|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_73950| stream) 0) (forall ((v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_73950| stream) v@@22) 0)
 :qid |SlidingNoncebpl.159:13|
 :skolemid |4|
))))
 :qid |SlidingNoncebpl.2406:13|
 :skolemid |84|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |SlidingNoncebpl.2447:80|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@10 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@10 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@10)))
 :qid |SlidingNoncebpl.2453:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@10) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@10))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |SlidingNoncebpl.2503:82|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@11 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@11 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@11)))
 :qid |SlidingNoncebpl.2509:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@11) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@11))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |SlidingNoncebpl.2559:80|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@12 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@12 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (=  (and (and (|$IsEqual'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| v2@@12)) (= (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v1@@12) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| v2@@12))) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12)))
 :qid |SlidingNoncebpl.2565:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@12) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@12))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |SlidingNoncebpl.2615:79|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@13 T@$1_DiemAccount_AdminTransactionEvent) (v2@@13 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@13)))
 :qid |SlidingNoncebpl.2621:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@13) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@13))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |SlidingNoncebpl.2671:76|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@14 T@$1_DiemAccount_CreateAccountEvent) (v2@@14 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@14)))
 :qid |SlidingNoncebpl.2677:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@14) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@14))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |SlidingNoncebpl.2727:78|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@15 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@15 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$amount#$1_DiemAccount_ReceivedPaymentEvent| v2@@15)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (= (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v1@@15) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| v2@@15))) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@15)))
 :qid |SlidingNoncebpl.2733:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@15) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@15))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |SlidingNoncebpl.2783:74|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@16 T@$1_DiemAccount_SentPaymentEvent) (v2@@16 T@$1_DiemAccount_SentPaymentEvent) ) (! (=  (and (and (and (= (|$amount#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$amount#$1_DiemAccount_SentPaymentEvent| v2@@16)) (|$IsEqual'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$currency_code#$1_DiemAccount_SentPaymentEvent| v2@@16))) (= (|$payee#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$payee#$1_DiemAccount_SentPaymentEvent| v2@@16))) (|$IsEqual'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| v1@@16) (|$metadata#$1_DiemAccount_SentPaymentEvent| v2@@16))) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@16)))
 :qid |SlidingNoncebpl.2789:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@16) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@16))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |SlidingNoncebpl.2839:69|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@17 T@$1_DiemBlock_NewBlockEvent) (v2@@17 T@$1_DiemBlock_NewBlockEvent) ) (! (=  (and (and (and (= (|$round#$1_DiemBlock_NewBlockEvent| v1@@17) (|$round#$1_DiemBlock_NewBlockEvent| v2@@17)) (= (|$proposer#$1_DiemBlock_NewBlockEvent| v1@@17) (|$proposer#$1_DiemBlock_NewBlockEvent| v2@@17))) (|$IsEqual'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v1@@17) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| v2@@17))) (= (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v1@@17) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| v2@@17))) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@17) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@17)))
 :qid |SlidingNoncebpl.2845:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@17) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@17))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |SlidingNoncebpl.2895:70|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@18 T@$1_DiemConfig_NewEpochEvent) (v2@@18 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@18) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@18)))
 :qid |SlidingNoncebpl.2901:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@18) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@18))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |SlidingNoncebpl.2951:60|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@19 T@$1_Diem_BurnEvent) (v2@@19 T@$1_Diem_BurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_BurnEvent| v1@@19) (|$amount#$1_Diem_BurnEvent| v2@@19)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| v1@@19) (|$currency_code#$1_Diem_BurnEvent| v2@@19))) (= (|$preburn_address#$1_Diem_BurnEvent| v1@@19) (|$preburn_address#$1_Diem_BurnEvent| v2@@19))) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@19)))
 :qid |SlidingNoncebpl.2957:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@19) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@19))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |SlidingNoncebpl.3007:66|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@20 T@$1_Diem_CancelBurnEvent) (v2@@20 T@$1_Diem_CancelBurnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_CancelBurnEvent| v1@@20) (|$amount#$1_Diem_CancelBurnEvent| v2@@20)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| v1@@20) (|$currency_code#$1_Diem_CancelBurnEvent| v2@@20))) (= (|$preburn_address#$1_Diem_CancelBurnEvent| v1@@20) (|$preburn_address#$1_Diem_CancelBurnEvent| v2@@20))) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@20)))
 :qid |SlidingNoncebpl.3013:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@20) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@20))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |SlidingNoncebpl.3063:60|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@21 T@$1_Diem_MintEvent) (v2@@21 T@$1_Diem_MintEvent) ) (! (=  (and (= (|$amount#$1_Diem_MintEvent| v1@@21) (|$amount#$1_Diem_MintEvent| v2@@21)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_MintEvent| v1@@21) (|$currency_code#$1_Diem_MintEvent| v2@@21))) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@21) (|$ToEventRep'$1_Diem_MintEvent'| v2@@21)))
 :qid |SlidingNoncebpl.3069:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@21) (|$ToEventRep'$1_Diem_MintEvent'| v2@@21))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |SlidingNoncebpl.3119:63|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@22 T@$1_Diem_PreburnEvent) (v2@@22 T@$1_Diem_PreburnEvent) ) (! (=  (and (and (= (|$amount#$1_Diem_PreburnEvent| v1@@22) (|$amount#$1_Diem_PreburnEvent| v2@@22)) (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| v1@@22) (|$currency_code#$1_Diem_PreburnEvent| v2@@22))) (= (|$preburn_address#$1_Diem_PreburnEvent| v1@@22) (|$preburn_address#$1_Diem_PreburnEvent| v2@@22))) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@22) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@22)))
 :qid |SlidingNoncebpl.3125:15|
 :skolemid |111|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@22) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@22))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |SlidingNoncebpl.3175:79|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@23 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@23 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@23) (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@23)) (= (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v1@@23) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| v2@@23))) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@23) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@23)))
 :qid |SlidingNoncebpl.3181:15|
 :skolemid |113|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@23) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@23))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |SlidingNoncebpl.3231:82|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@24 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@24 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v1@@24) (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| v2@@24)) (= (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v1@@24) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| v2@@24))) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@24)))
 :qid |SlidingNoncebpl.3237:15|
 :skolemid |115|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@24) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@24))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |SlidingNoncebpl.3287:88|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@25 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@25 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (=  (and (|$IsEqual'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@25) (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@25)) (= (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v1@@25) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| v2@@25))) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@25)))
 :qid |SlidingNoncebpl.3293:15|
 :skolemid |117|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@25) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@25))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |SlidingNoncebpl.3343:72|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@26 T@$1_VASPDomain_VASPDomainEvent) (v2@@26 T@$1_VASPDomain_VASPDomainEvent) ) (! (=  (and (and (= (|$removed#$1_VASPDomain_VASPDomainEvent| v1@@26) (|$removed#$1_VASPDomain_VASPDomainEvent| v2@@26)) (|$IsEqual'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v1@@26)) (|$domain#$1_VASPDomain_VASPDomain| (|$domain#$1_VASPDomain_VASPDomainEvent| v2@@26)))) (= (|$address#$1_VASPDomain_VASPDomainEvent| v1@@26) (|$address#$1_VASPDomain_VASPDomainEvent| v2@@26))) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@26) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@26)))
 :qid |SlidingNoncebpl.3349:15|
 :skolemid |119|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@26) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@26))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |SlidingNoncebpl.3428:61|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |SlidingNoncebpl.4243:36|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |SlidingNoncebpl.4605:71|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |SlidingNoncebpl.4668:46|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |SlidingNoncebpl.4680:64|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |SlidingNoncebpl.4692:75|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |SlidingNoncebpl.4704:72|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |SlidingNoncebpl.4732:55|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |SlidingNoncebpl.4755:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |SlidingNoncebpl.4767:15|
 :skolemid |131|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |SlidingNoncebpl.4780:49|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |SlidingNoncebpl.5222:71|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |SlidingNoncebpl.5235:91|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |SlidingNoncebpl.5248:113|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |SlidingNoncebpl.5261:89|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |SlidingNoncebpl.5274:75|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |SlidingNoncebpl.5287:73|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |SlidingNoncebpl.5307:48|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |SlidingNoncebpl.5324:57|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |SlidingNoncebpl.5338:83|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |SlidingNoncebpl.5352:103|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |SlidingNoncebpl.5366:125|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |SlidingNoncebpl.5380:101|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |SlidingNoncebpl.5394:87|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |SlidingNoncebpl.5408:85|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |SlidingNoncebpl.5422:48|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |SlidingNoncebpl.5443:45|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |SlidingNoncebpl.5457:51|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |SlidingNoncebpl.5480:48|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |SlidingNoncebpl.5774:49|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |SlidingNoncebpl.5787:65|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |SlidingNoncebpl.6293:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |SlidingNoncebpl.6306:45|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |SlidingNoncebpl.6319:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |SlidingNoncebpl.6333:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |SlidingNoncebpl.6353:38|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |SlidingNoncebpl.6375:44|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |SlidingNoncebpl.6427:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |SlidingNoncebpl.6500:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |SlidingNoncebpl.6537:55|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |SlidingNoncebpl.6551:55|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |SlidingNoncebpl.6568:38|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |SlidingNoncebpl.6582:48|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |SlidingNoncebpl.6596:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |SlidingNoncebpl.6616:41|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@43)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@43)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@43))))
 :qid |SlidingNoncebpl.6635:57|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@43))
)))
(assert (forall ((s@@44 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@44) true)
 :qid |SlidingNoncebpl.8741:68|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@45)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))))
 :qid |SlidingNoncebpl.8763:66|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@46)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))))
 :qid |SlidingNoncebpl.8789:66|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@47)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))))
 :qid |SlidingNoncebpl.8818:56|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@48)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))))
 :qid |SlidingNoncebpl.8848:56|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |SlidingNoncebpl.9282:31|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |SlidingNoncebpl.9612:31|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |SlidingNoncebpl.9631:35|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |SlidingNoncebpl.10040:45|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |SlidingNoncebpl.10058:50|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |SlidingNoncebpl.10074:52|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@55) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@55)))
 :qid |SlidingNoncebpl.10087:46|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@56) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@56)))
 :qid |SlidingNoncebpl.10280:38|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@57) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@57)))
 :qid |SlidingNoncebpl.10294:39|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@57))
)))
(assert (forall ((s@@58 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58))))
 :qid |SlidingNoncebpl.10321:65|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@59)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@59))))
 :qid |SlidingNoncebpl.10689:60|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60))))
 :qid |SlidingNoncebpl.10706:66|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@61)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@61)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@61))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@61))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@61))))
 :qid |SlidingNoncebpl.10735:50|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@62) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@62)))
 :qid |SlidingNoncebpl.10758:45|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@63)) true))
 :qid |SlidingNoncebpl.11065:87|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@64)))
 :qid |SlidingNoncebpl.11266:47|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@65)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@65))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@65))))
 :qid |SlidingNoncebpl.11285:58|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@66) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@66)))
 :qid |SlidingNoncebpl.11301:39|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@67))))
 :qid |SlidingNoncebpl.11323:58|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@68)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@68)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@68))))
 :qid |SlidingNoncebpl.11340:58|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@69) true)
 :qid |SlidingNoncebpl.11355:51|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@70))))
 :qid |SlidingNoncebpl.11372:60|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@71)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@71))))
 :qid |SlidingNoncebpl.11658:47|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@72)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@72)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@72))))
 :qid |SlidingNoncebpl.11684:63|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@73) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@73)))
 :qid |SlidingNoncebpl.11699:57|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@73))
)))
(assert (forall ((s@@74 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@74) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@74)))
 :qid |SlidingNoncebpl.11712:55|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@74))
)))
(assert (forall ((s@@75 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@75) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@75)))
 :qid |SlidingNoncebpl.11726:55|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@76)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@76)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@76))))
 :qid |SlidingNoncebpl.11743:54|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@77)))
 :qid |SlidingNoncebpl.11757:55|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@78) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@78)))
 :qid |SlidingNoncebpl.11770:57|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@79)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@79))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@79))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@79))))
 :qid |SlidingNoncebpl.11792:56|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@80)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@80)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@80))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@80))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@80))))
 :qid |SlidingNoncebpl.11819:52|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@81)))
 :qid |SlidingNoncebpl.11837:54|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@82)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@82)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@82))))
 :qid |SlidingNoncebpl.15017:47|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@83)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@83))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@83))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@83))))
 :qid |SlidingNoncebpl.15041:47|
 :skolemid |320|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@84) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@84)))
 :qid |SlidingNoncebpl.15275:63|
 :skolemid |321|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@85) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@85)))
 :qid |SlidingNoncebpl.15610:49|
 :skolemid |322|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@86)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@86)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@86))))
 :qid |SlidingNoncebpl.15652:49|
 :skolemid |323|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@87)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@87)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@87))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@87))))
 :qid |SlidingNoncebpl.15681:48|
 :skolemid |324|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@88) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@88)))
 :qid |SlidingNoncebpl.15966:47|
 :skolemid |325|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@88))
)))
(assert (forall ((v@@23 T@Vec_75755) (i@@36 Int) ) (! (= (InRangeVec_65954 v@@23 i@@36)  (and (>= i@@36 0) (< i@@36 (|l#Vec_75755| v@@23))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_65954 v@@23 i@@36))
)))
(assert (forall ((v@@24 T@Vec_74075) (i@@37 Int) ) (! (= (InRangeVec_66155 v@@24 i@@37)  (and (>= i@@37 0) (< i@@37 (|l#Vec_74075| v@@24))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66155 v@@24 i@@37))
)))
(assert (forall ((v@@25 T@Vec_74114) (i@@38 Int) ) (! (= (InRangeVec_66356 v@@25 i@@38)  (and (>= i@@38 0) (< i@@38 (|l#Vec_74114| v@@25))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66356 v@@25 i@@38))
)))
(assert (forall ((v@@26 T@Vec_74248) (i@@39 Int) ) (! (= (InRangeVec_66557 v@@26 i@@39)  (and (>= i@@39 0) (< i@@39 (|l#Vec_74248| v@@26))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66557 v@@26 i@@39))
)))
(assert (forall ((v@@27 T@Vec_74543) (i@@40 Int) ) (! (= (InRangeVec_66758 v@@27 i@@40)  (and (>= i@@40 0) (< i@@40 (|l#Vec_74543| v@@27))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66758 v@@27 i@@40))
)))
(assert (forall ((v@@28 T@Vec_74036) (i@@41 Int) ) (! (= (InRangeVec_66959 v@@28 i@@41)  (and (>= i@@41 0) (< i@@41 (|l#Vec_74036| v@@28))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_66959 v@@28 i@@41))
)))
(assert (forall ((v@@29 T@Vec_74305) (i@@42 Int) ) (! (= (InRangeVec_91965 v@@29 i@@42)  (and (>= i@@42 0) (< i@@42 (|l#Vec_74305| v@@29))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_91965 v@@29 i@@42))
)))
(assert (forall ((v@@30 T@Vec_20954) (i@@43 Int) ) (! (= (InRangeVec_11023 v@@30 i@@43)  (and (>= i@@43 0) (< i@@43 (|l#Vec_20954| v@@30))))
 :qid |SlidingNoncebpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_11023 v@@30 i@@43))
)))
(assert (forall ((v@@31 T@Vec_20954) (e@@8 Int) ) (! (let ((i@@44 (IndexOfVec_20954 v@@31 e@@8)))
(ite  (not (exists ((i@@45 Int) ) (!  (and (InRangeVec_11023 v@@31 i@@45) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@31) i@@45) e@@8))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@44 (- 0 1))  (and (and (InRangeVec_11023 v@@31 i@@44) (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@31) i@@44) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (>= j@@8 0) (< j@@8 i@@44)) (not (= (|Select__T@[Int]Int_| (|v#Vec_20954| v@@31) j@@8) e@@8)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_20954 v@@31 e@@8))
)))
(assert (forall ((v@@32 T@Vec_74036) (e@@9 T@$1_ValidatorConfig_Config) ) (! (let ((i@@46 (IndexOfVec_74036 v@@32 e@@9)))
(ite  (not (exists ((i@@47 Int) ) (!  (and (InRangeVec_66959 v@@32 i@@47) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@32) i@@47) e@@9))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@46 (- 0 1))  (and (and (InRangeVec_66959 v@@32 i@@46) (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@32) i@@46) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (>= j@@9 0) (< j@@9 i@@46)) (not (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|v#Vec_74036| v@@32) j@@9) e@@9)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74036 v@@32 e@@9))
)))
(assert (forall ((v@@33 T@Vec_74075) (e@@10 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@48 (IndexOfVec_74075 v@@33 e@@10)))
(ite  (not (exists ((i@@49 Int) ) (!  (and (InRangeVec_66155 v@@33 i@@49) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@33) i@@49) e@@10))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@48 (- 0 1))  (and (and (InRangeVec_66155 v@@33 i@@48) (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@33) i@@48) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (>= j@@10 0) (< j@@10 i@@48)) (not (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|v#Vec_74075| v@@33) j@@10) e@@10)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74075 v@@33 e@@10))
)))
(assert (forall ((v@@34 T@Vec_74114) (e@@11 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@50 (IndexOfVec_74114 v@@34 e@@11)))
(ite  (not (exists ((i@@51 Int) ) (!  (and (InRangeVec_66356 v@@34 i@@51) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@34) i@@51) e@@11))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@50 (- 0 1))  (and (and (InRangeVec_66356 v@@34 i@@50) (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@34) i@@50) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (>= j@@11 0) (< j@@11 i@@50)) (not (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|v#Vec_74114| v@@34) j@@11) e@@11)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74114 v@@34 e@@11))
)))
(assert (forall ((v@@35 T@Vec_74248) (e@@12 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@52 (IndexOfVec_74248 v@@35 e@@12)))
(ite  (not (exists ((i@@53 Int) ) (!  (and (InRangeVec_66557 v@@35 i@@53) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@35) i@@53) e@@12))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@52 (- 0 1))  (and (and (InRangeVec_66557 v@@35 i@@52) (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@35) i@@52) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (>= j@@12 0) (< j@@12 i@@52)) (not (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|v#Vec_74248| v@@35) j@@12) e@@12)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74248 v@@35 e@@12))
)))
(assert (forall ((v@@36 T@Vec_74305) (e@@13 T@Vec_20954) ) (! (let ((i@@54 (IndexOfVec_74305 v@@36 e@@13)))
(ite  (not (exists ((i@@55 Int) ) (!  (and (InRangeVec_91965 v@@36 i@@55) (= (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@36) i@@55) e@@13))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@54 (- 0 1))  (and (and (InRangeVec_91965 v@@36 i@@54) (= (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@36) i@@54) e@@13)) (forall ((j@@13 Int) ) (!  (=> (and (>= j@@13 0) (< j@@13 i@@54)) (not (= (|Select__T@[Int]Vec_20954_| (|v#Vec_74305| v@@36) j@@13) e@@13)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74305 v@@36 e@@13))
)))
(assert (forall ((v@@37 T@Vec_74543) (e@@14 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@56 (IndexOfVec_74543 v@@37 e@@14)))
(ite  (not (exists ((i@@57 Int) ) (!  (and (InRangeVec_66758 v@@37 i@@57) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@37) i@@57) e@@14))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@56 (- 0 1))  (and (and (InRangeVec_66758 v@@37 i@@56) (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@37) i@@56) e@@14)) (forall ((j@@14 Int) ) (!  (=> (and (>= j@@14 0) (< j@@14 i@@56)) (not (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|v#Vec_74543| v@@37) j@@14) e@@14)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_74543 v@@37 e@@14))
)))
(assert (forall ((v@@38 T@Vec_75755) (e@@15 |T@#0|) ) (! (let ((i@@58 (IndexOfVec_75755 v@@38 e@@15)))
(ite  (not (exists ((i@@59 Int) ) (!  (and (InRangeVec_65954 v@@38 i@@59) (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@38) i@@59) e@@15))
 :qid |SlidingNoncebpl.109:13|
 :skolemid |0|
))) (= i@@58 (- 0 1))  (and (and (InRangeVec_65954 v@@38 i@@58) (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@38) i@@58) e@@15)) (forall ((j@@15 Int) ) (!  (=> (and (>= j@@15 0) (< j@@15 i@@58)) (not (= (|Select__T@[Int]#0_| (|v#Vec_75755| v@@38) j@@15) e@@15)))
 :qid |SlidingNoncebpl.117:17|
 :skolemid |1|
)))))
 :qid |SlidingNoncebpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_75755 v@@38 e@@15))
)))
(assert (forall ((|l#0| Bool) (i@@60 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@60) |l#0|)
 :qid |SlidingNoncebpl.275:54|
 :skolemid |416|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@60))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_73950|) (|l#1| |T@[$1_Event_EventHandle]Multiset_73950|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| |l#1| handle@@0))))
(Multiset_73950 (|lambda#27| (|v#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| |l#0@@0| handle@@0)) (|v#Multiset_73950| (|Select__T@[$1_Event_EventHandle]Multiset_73950_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |SlidingNoncebpl.2416:13|
 :skolemid |417|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_73950_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@61 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@61) (ite  (and (>= i@@61 |l#0@@1|) (< i@@61 |l#1@@0|)) (ite (< i@@61 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@61) (|Select__T@[Int]#0_| |l#4| (- i@@61 |l#5|))) |l#6|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |418|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@61))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@62 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@62) (ite  (and (<= |l#0@@2| i@@62) (< i@@62 |l#1@@1|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@62) |l#4@@0|)) |l#5@@0|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |419|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@62))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@16) (ite  (and (>= j@@16 |l#0@@3|) (< j@@16 |l#1@@2|)) (ite (< j@@16 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@16) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@16 |l#5@@1|))) |l#6@@0|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |420|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@16))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@2| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@2| Int) (|l#6@@1| T@$1_DiemAccount_KeyRotationCapability) (i@@63 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@63) (ite  (and (>= i@@63 |l#0@@4|) (< i@@63 |l#1@@3|)) (ite (< i@@63 |l#2@@2|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@2| i@@63) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@2| (- i@@63 |l#5@@2|))) |l#6@@1|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |421|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@63))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@3| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| T@$1_DiemAccount_KeyRotationCapability) (i@@64 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@64) (ite  (and (<= |l#0@@5| i@@64) (< i@@64 |l#1@@4|)) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#2@@3| (- (- |l#3@@3| i@@64) |l#4@@3|)) |l#5@@3|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@64))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#4@@4| |T@[Int]$1_DiemAccount_KeyRotationCapability|) (|l#5@@4| Int) (|l#6@@2| T@$1_DiemAccount_KeyRotationCapability) (j@@17 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@17) (ite  (and (>= j@@17 |l#0@@6|) (< j@@17 |l#1@@5|)) (ite (< j@@17 |l#2@@4|) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#3@@4| j@@17) (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| |l#4@@4| (+ j@@17 |l#5@@4|))) |l#6@@2|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |423|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_KeyRotationCapability_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@17))
)))
(assert (forall ((|l#0@@7| Int) (|l#1@@6| Int) (|l#2@@5| Int) (|l#3@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@5| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@5| Int) (|l#6@@3| T@$1_DiemAccount_WithdrawCapability) (i@@65 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@65) (ite  (and (>= i@@65 |l#0@@7|) (< i@@65 |l#1@@6|)) (ite (< i@@65 |l#2@@5|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@5| i@@65) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@5| (- i@@65 |l#5@@5|))) |l#6@@3|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |424|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#9| |l#0@@7| |l#1@@6| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@3|) i@@65))
)))
(assert (forall ((|l#0@@8| Int) (|l#1@@7| Int) (|l#2@@6| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#3@@6| Int) (|l#4@@6| Int) (|l#5@@6| T@$1_DiemAccount_WithdrawCapability) (i@@66 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@66) (ite  (and (<= |l#0@@8| i@@66) (< i@@66 |l#1@@7|)) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#2@@6| (- (- |l#3@@6| i@@66) |l#4@@6|)) |l#5@@6|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |425|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#10| |l#0@@8| |l#1@@7| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) i@@66))
)))
(assert (forall ((|l#0@@9| Int) (|l#1@@8| Int) (|l#2@@7| Int) (|l#3@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#4@@7| |T@[Int]$1_DiemAccount_WithdrawCapability|) (|l#5@@7| Int) (|l#6@@4| T@$1_DiemAccount_WithdrawCapability) (j@@18 Int) ) (! (= (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@18) (ite  (and (>= j@@18 |l#0@@9|) (< j@@18 |l#1@@8|)) (ite (< j@@18 |l#2@@7|) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#3@@7| j@@18) (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| |l#4@@7| (+ j@@18 |l#5@@7|))) |l#6@@4|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |426|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_WithdrawCapability_| (|lambda#11| |l#0@@9| |l#1@@8| |l#2@@7| |l#3@@7| |l#4@@7| |l#5@@7| |l#6@@4|) j@@18))
)))
(assert (forall ((|l#0@@10| Int) (|l#1@@9| Int) (|l#2@@8| Int) (|l#3@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@8| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@8| Int) (|l#6@@5| T@$1_DiemSystem_ValidatorInfo) (i@@67 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@67) (ite  (and (>= i@@67 |l#0@@10|) (< i@@67 |l#1@@9|)) (ite (< i@@67 |l#2@@8|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@8| i@@67) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@8| (- i@@67 |l#5@@8|))) |l#6@@5|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |427|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#12| |l#0@@10| |l#1@@9| |l#2@@8| |l#3@@8| |l#4@@8| |l#5@@8| |l#6@@5|) i@@67))
)))
(assert (forall ((|l#0@@11| Int) (|l#1@@10| Int) (|l#2@@9| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#3@@9| Int) (|l#4@@9| Int) (|l#5@@9| T@$1_DiemSystem_ValidatorInfo) (i@@68 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@68) (ite  (and (<= |l#0@@11| i@@68) (< i@@68 |l#1@@10|)) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#2@@9| (- (- |l#3@@9| i@@68) |l#4@@9|)) |l#5@@9|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |428|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#13| |l#0@@11| |l#1@@10| |l#2@@9| |l#3@@9| |l#4@@9| |l#5@@9|) i@@68))
)))
(assert (forall ((|l#0@@12| Int) (|l#1@@11| Int) (|l#2@@10| Int) (|l#3@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#4@@10| |T@[Int]$1_DiemSystem_ValidatorInfo|) (|l#5@@10| Int) (|l#6@@6| T@$1_DiemSystem_ValidatorInfo) (j@@19 Int) ) (! (= (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@19) (ite  (and (>= j@@19 |l#0@@12|) (< j@@19 |l#1@@11|)) (ite (< j@@19 |l#2@@10|) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#3@@10| j@@19) (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| |l#4@@10| (+ j@@19 |l#5@@10|))) |l#6@@6|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |429|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_ValidatorInfo_| (|lambda#14| |l#0@@12| |l#1@@11| |l#2@@10| |l#3@@10| |l#4@@10| |l#5@@10| |l#6@@6|) j@@19))
)))
(assert (forall ((|l#0@@13| Int) (|l#1@@12| Int) (|l#2@@11| Int) (|l#3@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@11| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@11| Int) (|l#6@@7| T@$1_VASPDomain_VASPDomain) (i@@69 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@69) (ite  (and (>= i@@69 |l#0@@13|) (< i@@69 |l#1@@12|)) (ite (< i@@69 |l#2@@11|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@11| i@@69) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@11| (- i@@69 |l#5@@11|))) |l#6@@7|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |430|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#15| |l#0@@13| |l#1@@12| |l#2@@11| |l#3@@11| |l#4@@11| |l#5@@11| |l#6@@7|) i@@69))
)))
(assert (forall ((|l#0@@14| Int) (|l#1@@13| Int) (|l#2@@12| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#3@@12| Int) (|l#4@@12| Int) (|l#5@@12| T@$1_VASPDomain_VASPDomain) (i@@70 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@70) (ite  (and (<= |l#0@@14| i@@70) (< i@@70 |l#1@@13|)) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#2@@12| (- (- |l#3@@12| i@@70) |l#4@@12|)) |l#5@@12|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |431|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#16| |l#0@@14| |l#1@@13| |l#2@@12| |l#3@@12| |l#4@@12| |l#5@@12|) i@@70))
)))
(assert (forall ((|l#0@@15| Int) (|l#1@@14| Int) (|l#2@@13| Int) (|l#3@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#4@@13| |T@[Int]$1_VASPDomain_VASPDomain|) (|l#5@@13| Int) (|l#6@@8| T@$1_VASPDomain_VASPDomain) (j@@20 Int) ) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@20) (ite  (and (>= j@@20 |l#0@@15|) (< j@@20 |l#1@@14|)) (ite (< j@@20 |l#2@@13|) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#3@@13| j@@20) (|Select__T@[Int]$1_VASPDomain_VASPDomain_| |l#4@@13| (+ j@@20 |l#5@@13|))) |l#6@@8|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |432|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomain_| (|lambda#17| |l#0@@15| |l#1@@14| |l#2@@13| |l#3@@13| |l#4@@13| |l#5@@13| |l#6@@8|) j@@20))
)))
(assert (forall ((|l#0@@16| Int) (|l#1@@15| Int) (|l#2@@14| Int) (|l#3@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@14| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@14| Int) (|l#6@@9| T@$1_ValidatorConfig_Config) (i@@71 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@71) (ite  (and (>= i@@71 |l#0@@16|) (< i@@71 |l#1@@15|)) (ite (< i@@71 |l#2@@14|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@14| i@@71) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@14| (- i@@71 |l#5@@14|))) |l#6@@9|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |433|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#18| |l#0@@16| |l#1@@15| |l#2@@14| |l#3@@14| |l#4@@14| |l#5@@14| |l#6@@9|) i@@71))
)))
(assert (forall ((|l#0@@17| Int) (|l#1@@16| Int) (|l#2@@15| |T@[Int]$1_ValidatorConfig_Config|) (|l#3@@15| Int) (|l#4@@15| Int) (|l#5@@15| T@$1_ValidatorConfig_Config) (i@@72 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@72) (ite  (and (<= |l#0@@17| i@@72) (< i@@72 |l#1@@16|)) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#2@@15| (- (- |l#3@@15| i@@72) |l#4@@15|)) |l#5@@15|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |434|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#19| |l#0@@17| |l#1@@16| |l#2@@15| |l#3@@15| |l#4@@15| |l#5@@15|) i@@72))
)))
(assert (forall ((|l#0@@18| Int) (|l#1@@17| Int) (|l#2@@16| Int) (|l#3@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#4@@16| |T@[Int]$1_ValidatorConfig_Config|) (|l#5@@16| Int) (|l#6@@10| T@$1_ValidatorConfig_Config) (j@@21 Int) ) (! (= (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@21) (ite  (and (>= j@@21 |l#0@@18|) (< j@@21 |l#1@@17|)) (ite (< j@@21 |l#2@@16|) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#3@@16| j@@21) (|Select__T@[Int]$1_ValidatorConfig_Config_| |l#4@@16| (+ j@@21 |l#5@@16|))) |l#6@@10|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |435|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_Config_| (|lambda#20| |l#0@@18| |l#1@@17| |l#2@@16| |l#3@@16| |l#4@@16| |l#5@@16| |l#6@@10|) j@@21))
)))
(assert (forall ((|l#0@@19| Int) (|l#1@@18| Int) (|l#2@@17| Int) (|l#3@@17| |T@[Int]Vec_20954|) (|l#4@@17| |T@[Int]Vec_20954|) (|l#5@@17| Int) (|l#6@@11| T@Vec_20954) (i@@73 Int) ) (! (= (|Select__T@[Int]Vec_20954_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@73) (ite  (and (>= i@@73 |l#0@@19|) (< i@@73 |l#1@@18|)) (ite (< i@@73 |l#2@@17|) (|Select__T@[Int]Vec_20954_| |l#3@@17| i@@73) (|Select__T@[Int]Vec_20954_| |l#4@@17| (- i@@73 |l#5@@17|))) |l#6@@11|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |436|
 :pattern ( (|Select__T@[Int]Vec_20954_| (|lambda#21| |l#0@@19| |l#1@@18| |l#2@@17| |l#3@@17| |l#4@@17| |l#5@@17| |l#6@@11|) i@@73))
)))
(assert (forall ((|l#0@@20| Int) (|l#1@@19| Int) (|l#2@@18| |T@[Int]Vec_20954|) (|l#3@@18| Int) (|l#4@@18| Int) (|l#5@@18| T@Vec_20954) (i@@74 Int) ) (! (= (|Select__T@[Int]Vec_20954_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@74) (ite  (and (<= |l#0@@20| i@@74) (< i@@74 |l#1@@19|)) (|Select__T@[Int]Vec_20954_| |l#2@@18| (- (- |l#3@@18| i@@74) |l#4@@18|)) |l#5@@18|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |437|
 :pattern ( (|Select__T@[Int]Vec_20954_| (|lambda#22| |l#0@@20| |l#1@@19| |l#2@@18| |l#3@@18| |l#4@@18| |l#5@@18|) i@@74))
)))
(assert (forall ((|l#0@@21| Int) (|l#1@@20| Int) (|l#2@@19| Int) (|l#3@@19| |T@[Int]Vec_20954|) (|l#4@@19| |T@[Int]Vec_20954|) (|l#5@@19| Int) (|l#6@@12| T@Vec_20954) (j@@22 Int) ) (! (= (|Select__T@[Int]Vec_20954_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@22) (ite  (and (>= j@@22 |l#0@@21|) (< j@@22 |l#1@@20|)) (ite (< j@@22 |l#2@@19|) (|Select__T@[Int]Vec_20954_| |l#3@@19| j@@22) (|Select__T@[Int]Vec_20954_| |l#4@@19| (+ j@@22 |l#5@@19|))) |l#6@@12|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |438|
 :pattern ( (|Select__T@[Int]Vec_20954_| (|lambda#23| |l#0@@21| |l#1@@20| |l#2@@19| |l#3@@19| |l#4@@19| |l#5@@19| |l#6@@12|) j@@22))
)))
(assert (forall ((|l#0@@22| Int) (|l#1@@21| Int) (|l#2@@20| Int) (|l#3@@20| |T@[Int]Int|) (|l#4@@20| |T@[Int]Int|) (|l#5@@20| Int) (|l#6@@13| Int) (i@@75 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@75) (ite  (and (>= i@@75 |l#0@@22|) (< i@@75 |l#1@@21|)) (ite (< i@@75 |l#2@@20|) (|Select__T@[Int]Int_| |l#3@@20| i@@75) (|Select__T@[Int]Int_| |l#4@@20| (- i@@75 |l#5@@20|))) |l#6@@13|))
 :qid |SlidingNoncebpl.73:19|
 :skolemid |439|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#24| |l#0@@22| |l#1@@21| |l#2@@20| |l#3@@20| |l#4@@20| |l#5@@20| |l#6@@13|) i@@75))
)))
(assert (forall ((|l#0@@23| Int) (|l#1@@22| Int) (|l#2@@21| |T@[Int]Int|) (|l#3@@21| Int) (|l#4@@21| Int) (|l#5@@21| Int) (i@@76 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@76) (ite  (and (<= |l#0@@23| i@@76) (< i@@76 |l#1@@22|)) (|Select__T@[Int]Int_| |l#2@@21| (- (- |l#3@@21| i@@76) |l#4@@21|)) |l#5@@21|))
 :qid |SlidingNoncebpl.82:30|
 :skolemid |440|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#25| |l#0@@23| |l#1@@22| |l#2@@21| |l#3@@21| |l#4@@21| |l#5@@21|) i@@76))
)))
(assert (forall ((|l#0@@24| Int) (|l#1@@23| Int) (|l#2@@22| Int) (|l#3@@22| |T@[Int]Int|) (|l#4@@22| |T@[Int]Int|) (|l#5@@22| Int) (|l#6@@14| Int) (j@@23 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@23) (ite  (and (>= j@@23 |l#0@@24|) (< j@@23 |l#1@@23|)) (ite (< j@@23 |l#2@@22|) (|Select__T@[Int]Int_| |l#3@@22| j@@23) (|Select__T@[Int]Int_| |l#4@@22| (+ j@@23 |l#5@@22|))) |l#6@@14|))
 :qid |SlidingNoncebpl.63:20|
 :skolemid |441|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#26| |l#0@@24| |l#1@@23| |l#2@@22| |l#3@@22| |l#4@@22| |l#5@@22| |l#6@@14|) j@@23))
)))
(assert (forall ((|l#0@@25| |T@[$EventRep]Int|) (|l#1@@24| |T@[$EventRep]Int|) (v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@39) (- (|Select__T@[$EventRep]Int_| |l#0@@25| v@@39) (|Select__T@[$EventRep]Int_| |l#1@@24| v@@39)))
 :qid |SlidingNoncebpl.154:29|
 :skolemid |442|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#27| |l#0@@25| |l#1@@24|) v@@39))
)))
; Valid

